<?php
class ControllerExtensionModuleCustomerVerification extends Controller
{
    public function index() {
        $this->load->model('extension/module/customer_verification');
        $this->load->language('extension/module/customer_verification');

        $this->document->setTitle($this->language->get('text_customer_verification_title'));

        $data = [];
        $get_request = $this->request->get;
        if (isset($get_request['email']) && isset($get_request['ver_code'])) {
            $data['verification'] = true;
            $customer = $this->model_extension_module_customer_verification->getEntryCustomer($get_request);
            if ($customer) {
                $data['customer_found'] = true;
                $this->model_extension_module_customer_verification->approveCustomer($customer['customer_id']);
            }
        } elseif ($this->request->server['REQUEST_METHOD'] == 'POST') {
            $post_request = $this->request->post;
            if (isset($post_request['verification_email']) && isset($post_request['verification_code'])) {
                $customer = $this->model_extension_module_customer_verification->getEntryCustomer([
                    'ver_code' => $post_request['verification_code'],
                    'email' => $post_request['verification_email']
                ]);
                if ($customer) {
                    $data['t_success'] = $this->language->get('text_verification_successful');
                    $this->model_extension_module_customer_verification->approveCustomer($customer['customer_id']);
                } else {
                    $data['t_error'] = $this->language->get('error_verification_incorrect');
                }
            } elseif(isset($post_request['resend_email'])) {
                if ($this->model_extension_module_customer_verification->emailExists($post_request['resend_email'])) {
                    $this->model_extension_module_customer_verification->sendVerification($post_request['resend_email']);
                    $data['t_success'] = $this->language->get('text_resend_email_success');
                } else {
                    $data['t_error'] = $this->language->get('error_resend_email_incorrect');
                }
            }
        }

        $data['header'] = $this->load->controller('common/header');
        $data['footer'] = $this->load->controller('common/footer');

        $this->response->setOutput($this->load->view('extension/module/customer_verification', $data));
    }
}