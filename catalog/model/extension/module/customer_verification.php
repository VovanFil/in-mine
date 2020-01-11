<?php
class ModelExtensionModuleCustomerVerification extends Model
{
    public function verifyInstallation() {
        $exists = $this->db->query("SHOW TABLES LIKE '" . DB_PREFIX . "customer_verification'");
        if (!$exists->num_rows) {
            $this->db->query("CREATE TABLE " . DB_PREFIX . "customer_verification
(
  customer_id                   int          not null,
  ver_code                      varchar(32)  not null,
  PRIMARY KEY (customer_id)
)"
            );
        }
    }

    public function addEntry($customer_id) {
        $this->verifyInstallation();
        $ver_code = $this->generateCode();
        $this->db->query("REPLACE INTO " . DB_PREFIX . "customer_verification (customer_id, ver_code) VALUES (" . (int)$customer_id . ", '" . $ver_code . "')");
    }

    public function getEntryCustomer($data) {
        $this->verifyInstallation();
        $q = $this->db->query("SELECT c.customer_id FROM " . DB_PREFIX . "customer_verification cv LEFT JOIN " . DB_PREFIX . "customer c ON cv.customer_id = c.customer_id WHERE cv.ver_code = '" . $this->db->escape(trim($data['ver_code'])) . "' AND c.email = '" . $this->db->escape(trim($data['email'])) . "'");
        return $q->row;
    }

    public function getCode($email) {
        $this->verifyInstallation();
        $q = $this->db->query("SELECT cv.ver_code FROM " . DB_PREFIX . "customer_verification cv  JOIN " . DB_PREFIX . "customer c ON c.customer_id = cv.customer_id WHERE c.email = '" . $this->db->escape($email) . "'");
        return $q->num_rows ? $q->row['ver_code'] : '';
    }

    public function emailExists($email) {
        return !empty($this->getCode($email));
    }

    public function approveCustomer($customer_id) {
        $this->verifyInstallation();
        $this->db->query("UPDATE `" . DB_PREFIX . "customer` SET status = '1' WHERE customer_id = '" . (int)$customer_id . "'");
        $this->db->query("DELETE FROM `" . DB_PREFIX . "customer_approval` WHERE customer_id = '" . (int)$customer_id . "' AND `type` = 'customer'");
        $this->db->query("DELETE FROM `" . DB_PREFIX . "customer_verification` WHERE customer_id = '" . (int)$customer_id . "'");
    }

    public function generateCode() {
        return token(32);
    }

    public function buildLink($email) {
        return $this->url->link('extension/module/customer_verification', '', true) . '&' . http_build_query([
            'email' => $email,
            'ver_code' => $this->getCode($email)
        ]);
    }

    public function sendVerification($email) {
        $this->load->language('mail/register');

        $data['text_approval'] = $this->language->get('text_approval');
        $data['login'] = $this->url->link('account/login', '', true);
        $data['store'] = html_entity_decode($this->config->get('config_name'), ENT_QUOTES, 'UTF-8');

        $this->load->language('extension/module/customer_verification');
        $data['customer_verification_url'] = $this->buildLink($email);
        $code = $this->getCode($email);
        $verification_page = $this->url->link('extension/module/customer_verification');
        $data['customer_verification_alt'] = sprintf($this->language->get('text_mail_verification_alt'), $verification_page, $email, $code);

        $mail = new Mail($this->config->get('config_mail_engine'));
        $mail->parameter = $this->config->get('config_mail_parameter');
        $mail->smtp_hostname = $this->config->get('config_mail_smtp_hostname');
        $mail->smtp_username = $this->config->get('config_mail_smtp_username');
        $mail->smtp_password = html_entity_decode($this->config->get('config_mail_smtp_password'), ENT_QUOTES, 'UTF-8');
        $mail->smtp_port = $this->config->get('config_mail_smtp_port');
        $mail->smtp_timeout = $this->config->get('config_mail_smtp_timeout');

        $mail->setTo($email);
        $mail->setFrom($this->config->get('config_email'));
        $mail->setSender(html_entity_decode($this->config->get('config_name'), ENT_QUOTES, 'UTF-8'));
        $mail->setSubject(sprintf($this->language->get('text_mail_verification_title'), html_entity_decode($this->config->get('config_name'), ENT_QUOTES, 'UTF-8')));
        $mail->setText($this->load->view('extension/module/customer_verification_mail', $data));
        $mail->send();
    }
}