<?php
class ControllerExtensionModuleEzCheckout extends Controller {
    private $error = array();

	public function install() {
		$this->load->model('cmsblock/info');
       	$this->model_cmsblock_info->install();
       	$this->load->model('setting/setting');
	}
	
	public function uninstall() { 
		$this->load->model('cmsblock/info');
        $this->model_cmsblock_info->uninstall();
        $this->load->model('setting/setting');
	}
	
    public function index() {
        $this->load->language('extension/module/ez_checkout');

        $this->document->setTitle($this->language->get('heading_title'));

        $this->load->model('setting/setting');
		$this->load->model('setting/module');
       if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			$this->model_setting_setting->editSetting('ez_checkout', $this->request->post);

			$this->session->data['success'] = $this->language->get('text_success');

			$this->response->redirect($this->url->link('marketplace/extension', 'user_token=' . $this->session->data['user_token'] . '&type=module', true));
		}

        $data['heading_title'] = $this->language->get('heading_title');

        $data['text_edit'] = $this->language->get('text_edit');
        $data['text_enabled'] = $this->language->get('text_enabled');
        $data['text_disabled'] = $this->language->get('text_disabled');

        $data['text_main_settings'] = $this->language->get('text_main_settings');
        $data['text_select'] = $this->language->get('text_select');
        $data['text_checked'] = $this->language->get('text_checked');
        $data['text_not_checked'] = $this->language->get('text_not_checked');
        $data['text_none'] = $this->language->get('text_none');

        $data['entry_status'] = $this->language->get('entry_status');
        $data['entry_default'] = $this->language->get('entry_default');
        $data['entry_cart_status'] = $this->language->get('entry_cart_status');
        $data['entry_heading_status'] = $this->language->get('entry_heading_status');
        $data['entry_header_text'] = $this->language->get('entry_header_text');
        $data['entry_user_status'] = $this->language->get('entry_user_status');
        $data['entry_payment_address_status'] = $this->language->get('entry_payment_address_status');
        $data['entry_shipping_address_status'] = $this->language->get('entry_shipping_address_status');
        $data['entry_payment_method_status'] = $this->language->get('entry_payment_method_status');
        $data['entry_shipping_method_status'] = $this->language->get('entry_shipping_method_status');
        $data['entry_confirm_status'] = $this->language->get('entry_confirm_status');
        $data['entry_comment_status'] = $this->language->get('entry_comment_status');
        $data['entry_width'] = $this->language->get('entry_width');
        $data['entry_field_width'] = $this->language->get('entry_field_width');
        $data['entry_sort'] = $this->language->get('entry_sort');
        $data['entry_trigger'] = $this->language->get('entry_trigger');
        $data['entry_user_firstname_status'] = $this->language->get('entry_user_firstname_status');
        $data['entry_user_lastname_status'] = $this->language->get('entry_user_lastname_status');
        $data['entry_user_email_status'] = $this->language->get('entry_user_email_status');
        $data['entry_user_telephone_status'] = $this->language->get('entry_user_telephone_status');
        $data['entry_user_fax_status'] = $this->language->get('entry_user_fax_status');
        $data['entry_user_register_status'] = $this->language->get('entry_user_register_status');
        $data['entry_user_newsletter_status'] = $this->language->get('entry_user_newsletter_status');
        $data['entry_agree_status'] = $this->language->get('entry_agree_status');
        $data['entry_city_status'] = $this->language->get('entry_city_status');
        $data['entry_address_status'] = $this->language->get('entry_address_status');
        $data['entry_address_2_status'] = $this->language->get('entry_address_2_status');
        $data['entry_company_status'] = $this->language->get('entry_company_status');
        $data['entry_postcode_status'] = $this->language->get('entry_postcode_status');
        $data['entry_country_status'] = $this->language->get('entry_country_status');
        $data['entry_country_default'] = $this->language->get('entry_country_default');
        $data['entry_zone_id_status'] = $this->language->get('entry_zone_id_status');
        $data['entry_zone_id_default'] = $this->language->get('entry_zone_id_default');
        $data['entry_order_button'] = $this->language->get('entry_order_button');
        $data['entry_user_comment_status'] = $this->language->get('entry_user_comment_status');
        $data['entry_agree_status'] = $this->language->get('entry_agree_status');

        $data['help_confirm_status'] = $this->language->get('help_confirm_status');
        $data['help_confirm_trigger'] = $this->language->get('help_confirm_trigger');
        $data['help_user_register_status'] = $this->language->get('help_user_register_status');
        $data['help_user_comment'] = $this->language->get('help_user_comment');

        $data['action_active'] = $this->language->get('action_active');
        $data['action_disable'] = $this->language->get('action_disable');

        $data['button_save'] = $this->language->get('button_save');
        $data['button_cancel'] = $this->language->get('button_cancel');

        if (isset($this->error['warning'])) {
            $data['error_warning'] = $this->error['warning'];
        } else {
            $data['error_warning'] = '';
        }

        if (isset($this->error['ez_checkout_country_id'])) {
            $data['error_ez_checkout_country_id'] = $this->error['ez_checkout_country_id'];
        } else {
            $data['error_ez_checkout_country_id'] = '';
        }

        $data['breadcrumbs'] = array();

        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_home'),
            'href' => $this->url->link('common/dashboard', 'user_token=' . $this->session->data['user_token'], true)
        );

        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_extension'),
            'href' => $this->url->link('extension/extension', 'user_token=' . $this->session->data['user_token'] . '&type=module', true)
        );

        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('heading_title'),
            'href' => $this->url->link('extension/module/ez_checkout', 'user_token=' . $this->session->data['user_token'], true)
        );

        $data['action'] = $this->url->link('extension/module/ez_checkout', 'user_token=' . $this->session->data['user_token'], true);

        $data['cancel'] = $this->url->link('extension/extension', 'user_token=' . $this->session->data['user_token'] . '&type=module', true);


        // EzCheckout status

        if (isset($this->request->post['ez_checkout_status'])) {
            $data['ez_checkout_status'] = $this->request->post['ez_checkout_status'];
        } else {
            $data['ez_checkout_status'] = $this->config->get('ez_checkout_status');
        }


        // Cart

        if (isset($this->request->post['ez_checkout_cart_status'])) {
            $data['ez_checkout_cart_status'] = $this->request->post['ez_checkout_cart_status'];
        } else if ($this->config->get('ez_checkout_cart_status') == '0' || $this->config->get('ez_checkout_cart_status') == '1') {
            $data['ez_checkout_cart_status'] = $this->config->get('ez_checkout_cart_status');
        } else {
            $data['ez_checkout_cart_status'] = 1;
        }

        if (isset($this->request->post['ez_checkout_cart_width'])) {
            $data['ez_checkout_cart_width'] = $this->request->post['ez_checkout_cart_width'];
        } else if ($this->config->get('ez_checkout_cart_width')) {
            $data['ez_checkout_cart_width'] = $this->config->get('ez_checkout_cart_width');
        } else {
            $data['ez_checkout_cart_width'] = '12';
        }

        if (isset($this->request->post['ez_checkout_cart_sort'])) {
            $data['ez_checkout_cart_sort'] = $this->request->post['ez_checkout_cart_sort'];
        } else if ($this->config->get('ez_checkout_cart_sort')) {
            $data['ez_checkout_cart_sort'] = $this->config->get('ez_checkout_cart_sort');
        } else {
            $data['ez_checkout_cart_sort'] = '1';
        }


        // Cart header

        if (isset($this->request->post['ez_checkout_cart_header_status'])) {
            $data['ez_checkout_cart_header_status'] = $this->request->post['ez_checkout_cart_header_status'];
        } else if ($this->config->get('ez_checkout_cart_header_status') == '0' || $this->config->get('ez_checkout_cart_header_status') == '1') {
            $data['ez_checkout_cart_header_status'] = $this->config->get('ez_checkout_cart_header_status');
        } else {
            $data['ez_checkout_cart_header_status'] = 1;
        }

        if (isset($this->request->post['ez_checkout_cart_header_text'])) {
            $data['ez_checkout_cart_header_text'] = $this->request->post['ez_checkout_cart_header_text'];
        } else if ($this->config->get('ez_checkout_cart_header_text')) {
            $data['ez_checkout_cart_header_text'] = $this->config->get('ez_checkout_cart_header_text');
        } else {
            $data['ez_checkout_cart_header_text'] = $this->language->get('text_cart_header');
        }


        // Personal details

        if (isset($this->request->post['ez_checkout_user_status'])) {
            $data['ez_checkout_user_status'] = $this->request->post['ez_checkout_user_status'];
        } else if ($this->config->get('ez_checkout_user_status')) {
            $data['ez_checkout_user_status'] = $this->config->get('ez_checkout_user_status');
        } else {
            $data['ez_checkout_user_status'] = '1';
        }

        if (isset($this->request->post['ez_checkout_user_width'])) {
            $data['ez_checkout_user_width'] = $this->request->post['ez_checkout_user_width'];
        } else if ($this->config->get('ez_checkout_user_width')) {
            $data['ez_checkout_user_width'] = $this->config->get('ez_checkout_user_width');
        } else {
            $data['ez_checkout_user_width'] = '6';
        }

        if (isset($this->request->post['ez_checkout_user_sort'])) {
            $data['ez_checkout_user_sort'] = $this->request->post['ez_checkout_user_sort'];
        } else if ($this->config->get('ez_checkout_user_sort')) {
            $data['ez_checkout_user_sort'] = $this->config->get('ez_checkout_user_sort');
        } else {
            $data['ez_checkout_user_sort'] = '2';
        }

        // Personal details header

        if (isset($this->request->post['ez_checkout_user_header_status'])) {
            $data['ez_checkout_user_header_status'] = $this->request->post['ez_checkout_user_header_status'];
        } else if ($this->config->get('ez_checkout_user_header_status') == '0' || $this->config->get('ez_checkout_user_header_status') == '1') {
            $data['ez_checkout_user_header_status'] = $this->config->get('ez_checkout_user_header_status');
        } else {
            $data['ez_checkout_user_header_status'] = 1;
        }

        if (isset($this->request->post['ez_checkout_user_header_text'])) {
            $data['ez_checkout_user_header_text'] = $this->request->post['ez_checkout_user_header_text'];
        } else if ($this->config->get('ez_checkout_user_header_text')) {
            $data['ez_checkout_user_header_text'] = $this->config->get('ez_checkout_user_header_text');
        } else {
            $data['ez_checkout_user_header_text'] = $this->language->get('text_user_header');
        }

        // Payment address

        if (isset($this->request->post['ez_checkout_payment_address_status'])) {
            $data['ez_checkout_payment_address_status'] = $this->request->post['ez_checkout_payment_address_status'];
        } else if ($this->config->get('ez_checkout_payment_address_status') == '0' || $this->config->get('ez_checkout_payment_address_status') == '1') {
            $data['ez_checkout_payment_address_status'] = $this->config->get('ez_checkout_payment_address_status');
        } else {
            $data['ez_checkout_payment_address_status'] = 1;
        }

        if (isset($this->request->post['ez_checkout_payment_address_width'])) {
            $data['ez_checkout_payment_address_width'] = $this->request->post['ez_checkout_payment_address_width'];
        } else if ($this->config->get('ez_checkout_payment_address_width')) {
            $data['ez_checkout_payment_address_width'] = $this->config->get('ez_checkout_payment_address_width');
        } else {
            $data['ez_checkout_payment_address_width'] = '6';
        }

        if (isset($this->request->post['ez_checkout_payment_address_sort'])) {
            $data['ez_checkout_payment_address_sort'] = $this->request->post['ez_checkout_payment_address_sort'];
        } else if ($this->config->get('ez_checkout_payment_address_sort')) {
            $data['ez_checkout_payment_address_sort'] = $this->config->get('ez_checkout_payment_address_sort');
        } else {
            $data['ez_checkout_payment_address_sort'] = '3';
        }


        // Payment address header

        if (isset($this->request->post['ez_checkout_payment_address_header_status'])) {
            $data['ez_checkout_payment_address_header_status'] = $this->request->post['ez_checkout_payment_address_header_status'];
        } else if ($this->config->get('ez_checkout_payment_address_header_status') == '0' || $this->config->get('ez_checkout_payment_address_header_status') == '1') {
            $data['ez_checkout_payment_address_header_status'] = $this->config->get('ez_checkout_payment_address_header_status');
        } else {
            $data['ez_checkout_payment_address_header_status'] = 1;
        }

        if (isset($this->request->post['ez_checkout_payment_address_header_text'])) {
            $data['ez_checkout_payment_address_header_text'] = $this->request->post['ez_checkout_payment_address_header_text'];
        } else if ($this->config->get('ez_checkout_payment_address_header_text')) {
            $data['ez_checkout_payment_address_header_text'] = $this->config->get('ez_checkout_payment_address_header_text');
        } else {
            $data['ez_checkout_payment_address_header_text'] = $this->language->get('text_payment_address_header');
        }


        // Shipping address

        if (isset($this->request->post['ez_checkout_shipping_address_status'])) {
            $data['ez_checkout_shipping_address_status'] = $this->request->post['ez_checkout_shipping_address_status'];
        } else if ($this->config->get('ez_checkout_shipping_address_status') == '0' || $this->config->get('ez_checkout_shipping_address_status') == '1') {
            $data['ez_checkout_shipping_address_status'] = $this->config->get('ez_checkout_shipping_address_status');
        } else {
            $data['ez_checkout_shipping_address_status'] = 1;
        }

        if (isset($this->request->post['ez_checkout_shipping_address_width'])) {
            $data['ez_checkout_shipping_address_width'] = $this->request->post['ez_checkout_shipping_address_width'];
        } else if ($this->config->get('ez_checkout_shipping_address_width')) {
            $data['ez_checkout_shipping_address_width'] = $this->config->get('ez_checkout_shipping_address_width');
        } else {
            $data['ez_checkout_shipping_address_width'] = '12';
        }

        if (isset($this->request->post['ez_checkout_shipping_address_sort'])) {
            $data['ez_checkout_shipping_address_sort'] = $this->request->post['ez_checkout_shipping_address_sort'];
        } else if ($this->config->get('ez_checkout_shipping_address_sort')) {
            $data['ez_checkout_shipping_address_sort'] = $this->config->get('ez_checkout_shipping_address_sort');
        } else {
            $data['ez_checkout_shipping_address_sort'] = '4';
        }


        // Shipping address header

        if (isset($this->request->post['ez_checkout_shipping_address_header_status'])) {
            $data['ez_checkout_shipping_address_header_status'] = $this->request->post['ez_checkout_shipping_address_header_status'];
        } else if ($this->config->get('ez_checkout_shipping_address_header_status') == '0' || $this->config->get('ez_checkout_shipping_address_header_status') == '1') {
            $data['ez_checkout_shipping_address_header_status'] = $this->config->get('ez_checkout_shipping_address_header_status');
        } else {
            $data['ez_checkout_shipping_address_header_status'] = 1;
        }

        if (isset($this->request->post['ez_checkout_shipping_address_header_text'])) {
            $data['ez_checkout_shipping_address_header_text'] = $this->request->post['ez_checkout_shipping_address_header_text'];
        } else if ($this->config->get('ez_checkout_shipping_address_header_text')) {
            $data['ez_checkout_shipping_address_header_text'] = $this->config->get('ez_checkout_shipping_address_header_text');
        } else {
            $data['ez_checkout_shipping_address_header_text'] = $this->language->get('text_shipping_address_header');
        }


        // Payment method

        if (isset($this->request->post['ez_checkout_payment_method_status'])) {
            $data['ez_checkout_payment_method_status'] = $this->request->post['ez_checkout_payment_method_status'];
        } else if ($this->config->get('ez_checkout_payment_method_status') == '0' || $this->config->get('ez_checkout_payment_method_status') == '1') {
            $data['ez_checkout_payment_method_status'] = $this->config->get('ez_checkout_payment_method_status');
        } else {
            $data['ez_checkout_payment_method_status'] = 1;
        }

        if (isset($this->request->post['ez_checkout_payment_method_width'])) {
            $data['ez_checkout_payment_method_width'] = $this->request->post['ez_checkout_payment_method_width'];
        } else if ($this->config->get('ez_checkout_payment_method_width')) {
            $data['ez_checkout_payment_method_width'] = $this->config->get('ez_checkout_payment_method_width');
        } else {
            $data['ez_checkout_payment_method_width'] = '6';
        }

        if (isset($this->request->post['ez_checkout_payment_method_sort'])) {
            $data['ez_checkout_payment_method_sort'] = $this->request->post['ez_checkout_payment_method_sort'];
        } else if ($this->config->get('ez_checkout_payment_method_sort')) {
            $data['ez_checkout_payment_method_sort'] = $this->config->get('ez_checkout_payment_method_sort');
        } else {
            $data['ez_checkout_payment_method_sort'] = '5';
        }


        // Payment method header

        if (isset($this->request->post['ez_checkout_payment_method_header_status'])) {
            $data['ez_checkout_payment_method_header_status'] = $this->request->post['ez_checkout_payment_method_header_status'];
        } else if ($this->config->get('ez_checkout_payment_method_header_status') == '0' || $this->config->get('ez_checkout_payment_method_header_status') == '1') {
            $data['ez_checkout_payment_method_header_status'] = $this->config->get('ez_checkout_payment_method_header_status');
        } else {
            $data['ez_checkout_payment_method_header_status'] = 1;
        }

        if (isset($this->request->post['ez_checkout_payment_method_header_text'])) {
            $data['ez_checkout_payment_method_header_text'] = $this->request->post['ez_checkout_payment_method_header_text'];
        } else if ($this->config->get('ez_checkout_payment_method_header_text')) {
            $data['ez_checkout_payment_method_header_text'] = $this->config->get('ez_checkout_payment_method_header_text');
        } else {
            $data['ez_checkout_payment_method_header_text'] = $this->language->get('text_payment_method_header');
        }


        // Shipping method

        if (isset($this->request->post['ez_checkout_shipping_method_status'])) {
            $data['ez_checkout_shipping_method_status'] = $this->request->post['ez_checkout_shipping_method_status'];
        } else if ($this->config->get('ez_checkout_shipping_method_status') == '0' || $this->config->get('ez_checkout_shipping_method_status') == '1') {
            $data['ez_checkout_shipping_method_status'] = $this->config->get('ez_checkout_shipping_method_status');
        } else {
            $data['ez_checkout_shipping_method_status'] = 1;
        }

        if (isset($this->request->post['ez_checkout_shipping_method_width'])) {
            $data['ez_checkout_shipping_method_width'] = $this->request->post['ez_checkout_shipping_method_width'];
        } else if ($this->config->get('ez_checkout_shipping_method_width')) {
            $data['ez_checkout_shipping_method_width'] = $this->config->get('ez_checkout_shipping_method_width');
        } else {
            $data['ez_checkout_shipping_method_width'] = '6';
        }

        if (isset($this->request->post['ez_checkout_shipping_method_sort'])) {
            $data['ez_checkout_shipping_method_sort'] = $this->request->post['ez_checkout_shipping_method_sort'];
        } else if ($this->config->get('ez_checkout_shipping_method_sort')) {
            $data['ez_checkout_shipping_method_sort'] = $this->config->get('ez_checkout_shipping_method_sort');
        } else {
            $data['ez_checkout_shipping_method_sort'] = '6';
        }


        // Shipping method header

        if (isset($this->request->post['ez_checkout_shipping_method_header_status'])) {
            $data['ez_checkout_shipping_method_header_status'] = $this->request->post['ez_checkout_shipping_method_header_status'];
        } else if ($this->config->get('ez_checkout_shipping_method_header_status') == '0' || $this->config->get('ez_checkout_shipping_method_header_status') == '1') {
            $data['ez_checkout_shipping_method_header_status'] = $this->config->get('ez_checkout_shipping_method_header_status');
        } else {
            $data['ez_checkout_shipping_method_header_status'] = 1;
        }

        if (isset($this->request->post['ez_checkout_shipping_method_header_text'])) {
            $data['ez_checkout_shipping_method_header_text'] = $this->request->post['ez_checkout_shipping_method_header_text'];
        } else if ($this->config->get('ez_checkout_shipping_method_header_text')) {
            $data['ez_checkout_shipping_method_header_text'] = $this->config->get('ez_checkout_shipping_method_header_text');
        } else {
            $data['ez_checkout_shipping_method_header_text'] = $this->language->get('text_shipping_method_header');
        }


        // Comment

        if (isset($this->request->post['ez_checkout_comment_status'])) {
            $data['ez_checkout_comment_status'] = $this->request->post['ez_checkout_comment_status'];
        } else if ($this->config->get('ez_checkout_comment_status') == '0' || $this->config->get('ez_checkout_comment_status') == '1') {
            $data['ez_checkout_comment_status'] = $this->config->get('ez_checkout_comment_status');
        } else {
            $data['ez_checkout_comment_status'] = 1;
        }

        if (isset($this->request->post['ez_checkout_comment_width'])) {
            $data['ez_checkout_comment_width'] = $this->request->post['ez_checkout_comment_width'];
        } else if ($this->config->get('ez_checkout_comment_width')) {
            $data['ez_checkout_comment_width'] = $this->config->get('ez_checkout_comment_width');
        } else {
            $data['ez_checkout_comment_width'] = '12';
        }

        if (isset($this->request->post['ez_checkout_comment_sort'])) {
            $data['ez_checkout_comment_sort'] = $this->request->post['ez_checkout_comment_sort'];
        } else if ($this->config->get('ez_checkout_comment_sort')) {
            $data['ez_checkout_comment_sort'] = $this->config->get('ez_checkout_comment_sort');
        } else {
            $data['ez_checkout_comment_sort'] = '7';
        }

        // Order button

        if (isset($this->request->post['ez_checkout_order_button'])) {
            $data['ez_checkout_order_button'] = $this->request->post['ez_checkout_order_button'];
        } else if ($this->config->get('ez_checkout_order_button')) {
            $data['ez_checkout_order_button'] = $this->config->get('ez_checkout_order_button');
        } else {
            $data['ez_checkout_order_button'] = $this->language->get('text_order_button');
        }


        // Comment header

        if (isset($this->request->post['ez_checkout_comment_header_status'])) {
            $data['ez_checkout_comment_header_status'] = $this->request->post['ez_checkout_comment_header_status'];
        } else if ($this->config->get('ez_checkout_comment_header_status') == '0' || $this->config->get('ez_checkout_comment_header_status') == '1') {
            $data['ez_checkout_comment_header_status'] = $this->config->get('ez_checkout_comment_header_status');
        } else {
            $data['ez_checkout_comment_header_status'] = 1;
        }

        if (isset($this->request->post['ez_checkout_comment_header_text'])) {
            $data['ez_checkout_comment_header_text'] = $this->request->post['ez_checkout_comment_header_text'];
        } else if ($this->config->get('ez_checkout_comment_header_text')) {
            $data['ez_checkout_comment_header_text'] = $this->config->get('ez_checkout_comment_header_text');
        } else {
            $data['ez_checkout_comment_header_text'] = $this->language->get('text_comment_header');
        }


        // Confirm

        if (isset($this->request->post['ez_checkout_confirm_status'])) {
            $data['ez_checkout_confirm_status'] = $this->request->post['ez_checkout_confirm_status'];
        } else if ($this->config->get('ez_checkout_confirm_status') == '0' || $this->config->get('ez_checkout_confirm_status') == '1') {
            $data['ez_checkout_confirm_status'] = $this->config->get('ez_checkout_confirm_status');
        } else {
            $data['ez_checkout_confirm_status'] = 1;
        }

        if (isset($this->request->post['ez_checkout_confirm_trigger'])) {
            $data['ez_checkout_confirm_trigger'] = $this->request->post['ez_checkout_confirm_trigger'];
        } else if ($this->config->get('ez_checkout_confirm_trigger')) {
            $data['ez_checkout_confirm_trigger'] = $this->config->get('ez_checkout_confirm_trigger');
        } else {
            $data['ez_checkout_confirm_trigger'] = '#button-confirm, #button-continue';
        }


        // Personal details Firstname

        if (isset($this->request->post['ez_checkout_user_firstname_status'])) {
            $data['ez_checkout_user_firstname_status'] = $this->request->post['ez_checkout_user_firstname_status'];
        } else if ($this->config->get('ez_checkout_user_firstname_status') || $this->config->get('ez_checkout_user_firstname_status') == '0') {
            $data['ez_checkout_user_firstname_status'] = $this->config->get('ez_checkout_user_firstname_status');
        } else {
            $data['ez_checkout_user_firstname_status'] = '1';
        }

        if (isset($this->request->post['ez_checkout_user_firstname_width'])) {
            $data['ez_checkout_user_firstname_width'] = $this->request->post['ez_checkout_user_firstname_width'];
        } else if ($this->config->get('ez_checkout_user_firstname_width')) {
            $data['ez_checkout_user_firstname_width'] = $this->config->get('ez_checkout_user_firstname_width');
        } else {
            $data['ez_checkout_user_firstname_width'] = '6';
        }

        if (isset($this->request->post['ez_checkout_user_firstname_sort'])) {
            $data['ez_checkout_user_firstname_sort'] = $this->request->post['ez_checkout_user_firstname_sort'];
        } else if ($this->config->get('ez_checkout_user_firstname_sort')) {
            $data['ez_checkout_user_firstname_sort'] = $this->config->get('ez_checkout_user_firstname_sort');
        } else {
            $data['ez_checkout_user_firstname_sort'] = '1';
        }


        // Personal details Lastname

        if (isset($this->request->post['ez_checkout_user_lastname_status'])) {
            $data['ez_checkout_user_lastname_status'] = $this->request->post['ez_checkout_user_lastname_status'];
        } else if ($this->config->get('ez_checkout_user_lastname_status') || $this->config->get('ez_checkout_user_lastname_status') == '0') {
            $data['ez_checkout_user_lastname_status'] = $this->config->get('ez_checkout_user_lastname_status');
        } else {
            $data['ez_checkout_user_lastname_status'] = '1';
        }

        if (isset($this->request->post['ez_checkout_user_lastname_width'])) {
            $data['ez_checkout_user_lastname_width'] = $this->request->post['ez_checkout_user_lastname_width'];
        } else if ($this->config->get('ez_checkout_user_lastname_width')) {
            $data['ez_checkout_user_lastname_width'] = $this->config->get('ez_checkout_user_lastname_width');
        } else {
            $data['ez_checkout_user_lastname_width'] = '6';
        }

        if (isset($this->request->post['ez_checkout_user_lastname_sort'])) {
            $data['ez_checkout_user_lastname_sort'] = $this->request->post['ez_checkout_user_lastname_sort'];
        } else if ($this->config->get('ez_checkout_user_lastname_sort')) {
            $data['ez_checkout_user_lastname_sort'] = $this->config->get('ez_checkout_user_lastname_sort');
        } else {
            $data['ez_checkout_user_lastname_sort'] = '2';
        }


        // Personal details Email

        if (isset($this->request->post['ez_checkout_user_email_status'])) {
            $data['ez_checkout_user_email_status'] = $this->request->post['ez_checkout_user_email_status'];
        } else if ($this->config->get('ez_checkout_user_email_status') || $this->config->get('ez_checkout_user_email_status') == '0') {
            $data['ez_checkout_user_email_status'] = $this->config->get('ez_checkout_user_email_status');
        } else {
            $data['ez_checkout_user_email_status'] = '1';
        }

        if (isset($this->request->post['ez_checkout_user_email_width'])) {
            $data['ez_checkout_user_email_width'] = $this->request->post['ez_checkout_user_email_width'];
        } else if ($this->config->get('ez_checkout_user_email_width')) {
            $data['ez_checkout_user_email_width'] = $this->config->get('ez_checkout_user_email_width');
        } else {
            $data['ez_checkout_user_email_width'] = '12';
        }

        if (isset($this->request->post['ez_checkout_user_email_sort'])) {
            $data['ez_checkout_user_email_sort'] = $this->request->post['ez_checkout_user_email_sort'];
        } else if ($this->config->get('ez_checkout_user_email_sort')) {
            $data['ez_checkout_user_email_sort'] = $this->config->get('ez_checkout_user_email_sort');
        } else {
            $data['ez_checkout_user_email_sort'] = '3';
        }


        // Personal details Telephone

        if (isset($this->request->post['ez_checkout_user_telephone_status'])) {
            $data['ez_checkout_user_telephone_status'] = $this->request->post['ez_checkout_user_telephone_status'];
        } else if ($this->config->get('ez_checkout_user_telephone_status') || $this->config->get('ez_checkout_user_telephone_status') == '0') {
            $data['ez_checkout_user_telephone_status'] = $this->config->get('ez_checkout_user_telephone_status');
        } else {
            $data['ez_checkout_user_telephone_status'] = '1';
        }

        if (isset($this->request->post['ez_checkout_user_telephone_width'])) {
            $data['ez_checkout_user_telephone_width'] = $this->request->post['ez_checkout_user_telephone_width'];
        } else if ($this->config->get('ez_checkout_user_telephone_width')) {
            $data['ez_checkout_user_telephone_width'] = $this->config->get('ez_checkout_user_telephone_width');
        } else {
            $data['ez_checkout_user_telephone_width'] = '6';
        }

        if (isset($this->request->post['ez_checkout_user_telephone_sort'])) {
            $data['ez_checkout_user_telephone_sort'] = $this->request->post['ez_checkout_user_telephone_sort'];
        } else if ($this->config->get('ez_checkout_user_telephone_sort')) {
            $data['ez_checkout_user_telephone_sort'] = $this->config->get('ez_checkout_user_telephone_sort');
        } else {
            $data['ez_checkout_user_telephone_sort'] = '4';
        }


        // Personal details Fax

        if (isset($this->request->post['ez_checkout_user_fax_status'])) {
            $data['ez_checkout_user_fax_status'] = $this->request->post['ez_checkout_user_fax_status'];
        } else if ($this->config->get('ez_checkout_user_fax_status') || $this->config->get('ez_checkout_user_fax_status') == '0') {
            $data['ez_checkout_user_fax_status'] = $this->config->get('ez_checkout_user_fax_status');
        } else {
            $data['ez_checkout_user_fax_status'] = '1';
        }

        if (isset($this->request->post['ez_checkout_user_fax_width'])) {
            $data['ez_checkout_user_fax_width'] = $this->request->post['ez_checkout_user_fax_width'];
        } else if ($this->config->get('ez_checkout_user_fax_width')) {
            $data['ez_checkout_user_fax_width'] = $this->config->get('ez_checkout_user_fax_width');
        } else {
            $data['ez_checkout_user_fax_width'] = '6';
        }

        if (isset($this->request->post['ez_checkout_user_fax_sort'])) {
            $data['ez_checkout_user_fax_sort'] = $this->request->post['ez_checkout_user_fax_sort'];
        } else if ($this->config->get('ez_checkout_user_fax_sort')) {
            $data['ez_checkout_user_fax_sort'] = $this->config->get('ez_checkout_user_fax_sort');
        } else {
            $data['ez_checkout_user_fax_sort'] = '5';
        }

        // Personal details Comment

        if (isset($this->request->post['ez_checkout_user_comment_status'])) {
            $data['ez_checkout_user_comment_status'] = $this->request->post['ez_checkout_user_comment_status'];
        } else if ($this->config->get('ez_checkout_user_comment_status') || $this->config->get('ez_checkout_user_comment_status') == '0') {
            $data['ez_checkout_user_comment_status'] = $this->config->get('ez_checkout_user_comment_status');
        } else {
            $data['ez_checkout_user_comment_status'] = '0';
        }

        if (isset($this->request->post['ez_checkout_user_comment_width'])) {
            $data['ez_checkout_user_comment_width'] = $this->request->post['ez_checkout_user_comment_width'];
        } else if ($this->config->get('ez_checkout_user_comment_width')) {
            $data['ez_checkout_user_comment_width'] = $this->config->get('ez_checkout_user_comment_width');
        } else {
            $data['ez_checkout_user_comment_width'] = '12';
        }

        if (isset($this->request->post['ez_checkout_user_comment_sort'])) {
            $data['ez_checkout_user_comment_sort'] = $this->request->post['ez_checkout_user_comment_sort'];
        } else if ($this->config->get('ez_checkout_user_comment_sort')) {
            $data['ez_checkout_user_comment_sort'] = $this->config->get('ez_checkout_user_comment_sort');
        } else {
            $data['ez_checkout_user_comment_sort'] = '6';
        }

        // Personal details Register

        if (isset($this->request->post['ez_checkout_user_register_status'])) {
            $data['ez_checkout_user_register_status'] = $this->request->post['ez_checkout_user_register_status'];
        } else if ($this->config->get('ez_checkout_user_register_status') || $this->config->get('ez_checkout_user_register_status') == '0') {
            $data['ez_checkout_user_register_status'] = $this->config->get('ez_checkout_user_register_status');
        } else {
            $data['ez_checkout_user_register_status'] = '1';
        }

        if (isset($this->request->post['ez_checkout_user_register_sort'])) {
            $data['ez_checkout_user_register_sort'] = $this->request->post['ez_checkout_user_register_sort'];
        } else if ($this->config->get('ez_checkout_user_register_sort')) {
            $data['ez_checkout_user_register_sort'] = $this->config->get('ez_checkout_user_register_sort');
        } else {
            $data['ez_checkout_user_register_sort'] = '7';
        }


        // Personal details Newsletter

        if (isset($this->request->post['ez_checkout_user_newsletter_status'])) {
            $data['ez_checkout_user_newsletter_status'] = $this->request->post['ez_checkout_user_newsletter_status'];
        } else if ($this->config->get('ez_checkout_user_newsletter_status') || $this->config->get('ez_checkout_user_newsletter_status') == '0') {
            $data['ez_checkout_user_newsletter_status'] = $this->config->get('ez_checkout_user_newsletter_status');
        } else {
            $data['ez_checkout_user_newsletter_status'] = '1';
        }

        if (isset($this->request->post['ez_checkout_user_newsletter_default'])) {
            $data['ez_checkout_user_newsletter_default'] = $this->request->post['ez_checkout_user_newsletter_default'];
        } else if ($this->config->get('ez_checkout_user_newsletter_default') || $this->config->get('ez_checkout_user_newsletter_default') == '0') {
            $data['ez_checkout_user_newsletter_default'] = $this->config->get('ez_checkout_user_newsletter_default');
        } else {
            $data['ez_checkout_user_newsletter_default'] = '0';
        }

        if (isset($this->request->post['ez_checkout_user_newsletter_sort'])) {
            $data['ez_checkout_user_newsletter_sort'] = $this->request->post['ez_checkout_user_newsletter_sort'];
        } else if ($this->config->get('ez_checkout_user_newsletter_sort')) {
            $data['ez_checkout_user_newsletter_sort'] = $this->config->get('ez_checkout_user_newsletter_sort');
        } else {
            $data['ez_checkout_user_newsletter_sort'] = '8';
        }



        // Personal details Agree checkbox

        if (isset($this->request->post['ez_checkout_agree_status'])) {
            $data['ez_checkout_agree_status'] = $this->request->post['ez_checkout_agree_status'];
        } else if ($this->config->get('ez_checkout_agree_status') || $this->config->get('ez_checkout_agree_status') == '0') {
            $data['ez_checkout_agree_status'] = $this->config->get('ez_checkout_agree_status');
        } else {
            $data['ez_checkout_agree_status'] = '1';
        }

        if (isset($this->request->post['ez_checkout_agree_default'])) {
            $data['ez_checkout_agree_default'] = $this->request->post['ez_checkout_agree_default'];
        } else if ($this->config->get('ez_checkout_agree_default') || $this->config->get('ez_checkout_agree_default') == '0') {
            $data['ez_checkout_agree_default'] = $this->config->get('ez_checkout_agree_default');
        } else {
            $data['ez_checkout_agree_default'] = '1';
        }


        // Payment address City

        if (isset($this->request->post['ez_checkout_payment_city_status'])) {
            $data['ez_checkout_payment_city_status'] = $this->request->post['ez_checkout_payment_city_status'];
        } else if ($this->config->get('ez_checkout_payment_city_status') || $this->config->get('ez_checkout_payment_city_status') == '0') {
            $data['ez_checkout_payment_city_status'] = $this->config->get('ez_checkout_payment_city_status');
        } else {
            $data['ez_checkout_payment_city_status'] = '1';
        }

        if (isset($this->request->post['ez_checkout_payment_city_width'])) {
            $data['ez_checkout_payment_city_width'] = $this->request->post['ez_checkout_payment_city_width'];
        } else if ($this->config->get('ez_checkout_payment_city_width')) {
            $data['ez_checkout_payment_city_width'] = $this->config->get('ez_checkout_payment_city_width');
        } else {
            $data['ez_checkout_payment_city_width'] = '12';
        }

        if (isset($this->request->post['ez_checkout_payment_city_sort'])) {
            $data['ez_checkout_payment_city_sort'] = $this->request->post['ez_checkout_payment_city_sort'];
        } else if ($this->config->get('ez_checkout_payment_city_sort')) {
            $data['ez_checkout_payment_city_sort'] = $this->config->get('ez_checkout_payment_city_sort');
        } else {
            $data['ez_checkout_payment_city_sort'] = '1';
        }


        // Payment address Address 1

        if (isset($this->request->post['ez_checkout_payment_address_1_status'])) {
            $data['ez_checkout_payment_address_1_status'] = $this->request->post['ez_checkout_payment_address_1_status'];
        } else if ($this->config->get('ez_checkout_payment_address_1_status') || $this->config->get('ez_checkout_payment_address_1_status') == '0') {
            $data['ez_checkout_payment_address_1_status'] = $this->config->get('ez_checkout_payment_address_1_status');
        } else {
            $data['ez_checkout_payment_address_1_status'] = '1';
        }

        if (isset($this->request->post['ez_checkout_payment_address_1_width'])) {
            $data['ez_checkout_payment_address_1_width'] = $this->request->post['ez_checkout_payment_address_1_width'];
        } else if ($this->config->get('ez_checkout_payment_address_1_width')) {
            $data['ez_checkout_payment_address_1_width'] = $this->config->get('ez_checkout_payment_address_1_width');
        } else {
            $data['ez_checkout_payment_address_1_width'] = '12';
        }

        if (isset($this->request->post['ez_checkout_payment_address_1_sort'])) {
            $data['ez_checkout_payment_address_1_sort'] = $this->request->post['ez_checkout_payment_address_1_sort'];
        } else if ($this->config->get('ez_checkout_payment_address_1_sort')) {
            $data['ez_checkout_payment_address_1_sort'] = $this->config->get('ez_checkout_payment_address_1_sort');
        } else {
            $data['ez_checkout_payment_address_1_sort'] = '2';
        }


        // Payment address Address 2

        if (isset($this->request->post['ez_checkout_payment_address_2_status'])) {
            $data['ez_checkout_payment_address_2_status'] = $this->request->post['ez_checkout_payment_address_2_status'];
        } else if ($this->config->get('ez_checkout_payment_address_2_status') || $this->config->get('ez_checkout_payment_address_2_status') == '0') {
            $data['ez_checkout_payment_address_2_status'] = $this->config->get('ez_checkout_payment_address_2_status');
        } else {
            $data['ez_checkout_payment_address_2_status'] = '1';
        }

        if (isset($this->request->post['ez_checkout_payment_address_2_width'])) {
            $data['ez_checkout_payment_address_2_width'] = $this->request->post['ez_checkout_payment_address_2_width'];
        } else if ($this->config->get('ez_checkout_payment_address_2_width')) {
            $data['ez_checkout_payment_address_2_width'] = $this->config->get('ez_checkout_payment_address_2_width');
        } else {
            $data['ez_checkout_payment_address_2_width'] = '12';
        }

        if (isset($this->request->post['ez_checkout_payment_address_2_sort'])) {
            $data['ez_checkout_payment_address_2_sort'] = $this->request->post['ez_checkout_payment_address_2_sort'];
        } else if ($this->config->get('ez_checkout_payment_address_2_sort')) {
            $data['ez_checkout_payment_address_2_sort'] = $this->config->get('ez_checkout_payment_address_2_sort');
        } else {
            $data['ez_checkout_payment_address_2_sort'] = '3';
        }


        // Payment address Company

        if (isset($this->request->post['ez_checkout_payment_company_status'])) {
            $data['ez_checkout_payment_company_status'] = $this->request->post['ez_checkout_payment_company_status'];
        } else if ($this->config->get('ez_checkout_payment_company_status') || $this->config->get('ez_checkout_payment_company_status') == '0') {
            $data['ez_checkout_payment_company_status'] = $this->config->get('ez_checkout_payment_company_status');
        } else {
            $data['ez_checkout_payment_company_status'] = '1';
        }

        if (isset($this->request->post['ez_checkout_payment_company_width'])) {
            $data['ez_checkout_payment_company_width'] = $this->request->post['ez_checkout_payment_company_width'];
        } else if ($this->config->get('ez_checkout_payment_company_width')) {
            $data['ez_checkout_payment_company_width'] = $this->config->get('ez_checkout_payment_company_width');
        } else {
            $data['ez_checkout_payment_company_width'] = '6';
        }

        if (isset($this->request->post['ez_checkout_payment_company_sort'])) {
            $data['ez_checkout_payment_company_sort'] = $this->request->post['ez_checkout_payment_company_sort'];
        } else if ($this->config->get('ez_checkout_payment_company_sort')) {
            $data['ez_checkout_payment_company_sort'] = $this->config->get('ez_checkout_payment_company_sort');
        } else {
            $data['ez_checkout_payment_company_sort'] = '4';
        }


        // Payment address Postcode

        if (isset($this->request->post['ez_checkout_payment_postcode_status'])) {
            $data['ez_checkout_payment_postcode_status'] = $this->request->post['ez_checkout_payment_postcode_status'];
        } else if ($this->config->get('ez_checkout_payment_postcode_status') || $this->config->get('ez_checkout_payment_postcode_status') == '0') {
            $data['ez_checkout_payment_postcode_status'] = $this->config->get('ez_checkout_payment_postcode_status');
        } else {
            $data['ez_checkout_payment_postcode_status'] = '1';
        }

        if (isset($this->request->post['ez_checkout_payment_postcode_width'])) {
            $data['ez_checkout_payment_postcode_width'] = $this->request->post['ez_checkout_payment_postcode_width'];
        } else if ($this->config->get('ez_checkout_payment_postcode_width')) {
            $data['ez_checkout_payment_postcode_width'] = $this->config->get('ez_checkout_payment_postcode_width');
        } else {
            $data['ez_checkout_payment_postcode_width'] = '6';
        }

        if (isset($this->request->post['ez_checkout_payment_postcode_sort'])) {
            $data['ez_checkout_payment_postcode_sort'] = $this->request->post['ez_checkout_payment_postcode_sort'];
        } else if ($this->config->get('ez_checkout_payment_postcode_sort')) {
            $data['ez_checkout_payment_postcode_sort'] = $this->config->get('ez_checkout_payment_postcode_sort');
        } else {
            $data['ez_checkout_payment_postcode_sort'] = '5';
        }


        // Payment address Country

        if (isset($this->request->post['ez_checkout_payment_country_status'])) {
            $data['ez_checkout_payment_country_status'] = $this->request->post['ez_checkout_payment_country_status'];
        } else if ($this->config->get('ez_checkout_payment_country_status') || $this->config->get('ez_checkout_payment_country_status') == '0') {
            $data['ez_checkout_payment_country_status'] = $this->config->get('ez_checkout_payment_country_status');
        } else {
            $data['ez_checkout_payment_country_status'] = '1';
        }

        if (isset($this->request->post['ez_checkout_payment_country_width'])) {
            $data['ez_checkout_payment_country_width'] = $this->request->post['ez_checkout_payment_country_width'];
        } else if ($this->config->get('ez_checkout_payment_country_width')) {
            $data['ez_checkout_payment_country_width'] = $this->config->get('ez_checkout_payment_country_width');
        } else {
            $data['ez_checkout_payment_country_width'] = '6';
        }

        if (isset($this->request->post['ez_checkout_payment_country_sort'])) {
            $data['ez_checkout_payment_country_sort'] = $this->request->post['ez_checkout_payment_country_sort'];
        } else if ($this->config->get('ez_checkout_payment_country_sort')) {
            $data['ez_checkout_payment_country_sort'] = $this->config->get('ez_checkout_payment_country_sort');
        } else {
            $data['ez_checkout_payment_country_sort'] = '6';
        }

        $this->load->model('localisation/country');
        $data['countries'] = $this->model_localisation_country->getCountries();

        if (isset($this->request->post['ez_checkout_payment_country_default'])) {
            $data['ez_checkout_payment_country_default'] = $this->request->post['ez_checkout_payment_country_default'];
        } else if ($this->config->get('ez_checkout_payment_country_default')) {
            $data['ez_checkout_payment_country_default'] = $this->config->get('ez_checkout_payment_country_default');
        } else {
            $data['ez_checkout_payment_country_default'] = '';
        }


        // Payment address Zone

        if (isset($this->request->post['ez_checkout_payment_zone_id_status'])) {
            $data['ez_checkout_payment_zone_id_status'] = $this->request->post['ez_checkout_payment_zone_id_status'];
        } else if ($this->config->get('ez_checkout_payment_zone_id_status') || $this->config->get('ez_checkout_payment_zone_id_status') == '0') {
            $data['ez_checkout_payment_zone_id_status'] = $this->config->get('ez_checkout_payment_zone_id_status');
        } else {
            $data['ez_checkout_payment_zone_id_status'] = '1';
        }

        if (isset($this->request->post['ez_checkout_payment_zone_id_width'])) {
            $data['ez_checkout_payment_zone_id_width'] = $this->request->post['ez_checkout_payment_zone_id_width'];
        } else if ($this->config->get('ez_checkout_payment_zone_id_width')) {
            $data['ez_checkout_payment_zone_id_width'] = $this->config->get('ez_checkout_payment_zone_id_width');
        } else {
            $data['ez_checkout_payment_zone_id_width'] = '6';
        }

        if (isset($this->request->post['ez_checkout_payment_zone_id_sort'])) {
            $data['ez_checkout_payment_zone_id_sort'] = $this->request->post['ez_checkout_payment_zone_id_sort'];
        } else if ($this->config->get('ez_checkout_payment_zone_id_sort')) {
            $data['ez_checkout_payment_zone_id_sort'] = $this->config->get('ez_checkout_payment_zone_id_sort');
        } else {
            $data['ez_checkout_payment_zone_id_sort'] = '6';
        }

        if (isset($this->request->post['ez_checkout_payment_zone_id_default'])) {
            $data['ez_checkout_payment_zone_id_default'] = $this->request->post['ez_checkout_payment_zone_id_default'];
        } else if ($this->config->get('ez_checkout_payment_zone_id_default')) {
            $data['ez_checkout_payment_zone_id_default'] = $this->config->get('ez_checkout_payment_zone_id_default');
        } else {
            $data['ez_checkout_payment_zone_id_default'] = '';
        }


        // Shipping address City

        if (isset($this->request->post['ez_checkout_shipping_city_status'])) {
            $data['ez_checkout_shipping_city_status'] = $this->request->post['ez_checkout_shipping_city_status'];
        } else if ($this->config->get('ez_checkout_shipping_city_status') || $this->config->get('ez_checkout_shipping_city_status') == '0') {
            $data['ez_checkout_shipping_city_status'] = $this->config->get('ez_checkout_shipping_city_status');
        } else {
            $data['ez_checkout_shipping_city_status'] = '1';
        }

        if (isset($this->request->post['ez_checkout_shipping_city_width'])) {
            $data['ez_checkout_shipping_city_width'] = $this->request->post['ez_checkout_shipping_city_width'];
        } else if ($this->config->get('ez_checkout_shipping_city_width')) {
            $data['ez_checkout_shipping_city_width'] = $this->config->get('ez_checkout_shipping_city_width');
        } else {
            $data['ez_checkout_shipping_city_width'] = '12';
        }

        if (isset($this->request->post['ez_checkout_shipping_city_sort'])) {
            $data['ez_checkout_shipping_city_sort'] = $this->request->post['ez_checkout_shipping_city_sort'];
        } else if ($this->config->get('ez_checkout_shipping_city_sort')) {
            $data['ez_checkout_shipping_city_sort'] = $this->config->get('ez_checkout_shipping_city_sort');
        } else {
            $data['ez_checkout_shipping_city_sort'] = '1';
        }


        // Shipping address Address 1

        if (isset($this->request->post['ez_checkout_shipping_address_1_status'])) {
            $data['ez_checkout_shipping_address_1_status'] = $this->request->post['ez_checkout_shipping_address_1_status'];
        } else if ($this->config->get('ez_checkout_shipping_address_1_status') || $this->config->get('ez_checkout_shipping_address_1_status') == '0') {
            $data['ez_checkout_shipping_address_1_status'] = $this->config->get('ez_checkout_shipping_address_1_status');
        } else {
            $data['ez_checkout_shipping_address_1_status'] = '1';
        }

        if (isset($this->request->post['ez_checkout_shipping_address_1_width'])) {
            $data['ez_checkout_shipping_address_1_width'] = $this->request->post['ez_checkout_shipping_address_1_width'];
        } else if ($this->config->get('ez_checkout_shipping_address_1_width')) {
            $data['ez_checkout_shipping_address_1_width'] = $this->config->get('ez_checkout_shipping_address_1_width');
        } else {
            $data['ez_checkout_shipping_address_1_width'] = '12';
        }

        if (isset($this->request->post['ez_checkout_shipping_address_1_sort'])) {
            $data['ez_checkout_shipping_address_1_sort'] = $this->request->post['ez_checkout_shipping_address_1_sort'];
        } else if ($this->config->get('ez_checkout_shipping_address_1_sort')) {
            $data['ez_checkout_shipping_address_1_sort'] = $this->config->get('ez_checkout_shipping_address_1_sort');
        } else {
            $data['ez_checkout_shipping_address_1_sort'] = '2';
        }


        // Shipping address Address 2

        if (isset($this->request->post['ez_checkout_shipping_address_2_status'])) {
            $data['ez_checkout_shipping_address_2_status'] = $this->request->post['ez_checkout_shipping_address_2_status'];
        } else if ($this->config->get('ez_checkout_shipping_address_2_status') || $this->config->get('ez_checkout_shipping_address_2_status') == '0') {
            $data['ez_checkout_shipping_address_2_status'] = $this->config->get('ez_checkout_shipping_address_2_status');
        } else {
            $data['ez_checkout_shipping_address_2_status'] = '1';
        }

        if (isset($this->request->post['ez_checkout_shipping_address_2_width'])) {
            $data['ez_checkout_shipping_address_2_width'] = $this->request->post['ez_checkout_shipping_address_2_width'];
        } else if ($this->config->get('ez_checkout_shipping_address_2_width')) {
            $data['ez_checkout_shipping_address_2_width'] = $this->config->get('ez_checkout_shipping_address_2_width');
        } else {
            $data['ez_checkout_shipping_address_2_width'] = '12';
        }

        if (isset($this->request->post['ez_checkout_shipping_address_2_sort'])) {
            $data['ez_checkout_shipping_address_2_sort'] = $this->request->post['ez_checkout_shipping_address_2_sort'];
        } else if ($this->config->get('ez_checkout_shipping_address_2_sort')) {
            $data['ez_checkout_shipping_address_2_sort'] = $this->config->get('ez_checkout_shipping_address_2_sort');
        } else {
            $data['ez_checkout_shipping_address_2_sort'] = '3';
        }


        // Shipping address Company

        if (isset($this->request->post['ez_checkout_shipping_company_status'])) {
            $data['ez_checkout_shipping_company_status'] = $this->request->post['ez_checkout_shipping_company_status'];
        } else if ($this->config->get('ez_checkout_shipping_company_status') || $this->config->get('ez_checkout_shipping_company_status') == '0') {
            $data['ez_checkout_shipping_company_status'] = $this->config->get('ez_checkout_shipping_company_status');
        } else {
            $data['ez_checkout_shipping_company_status'] = '1';
        }

        if (isset($this->request->post['ez_checkout_shipping_company_width'])) {
            $data['ez_checkout_shipping_company_width'] = $this->request->post['ez_checkout_shipping_company_width'];
        } else if ($this->config->get('ez_checkout_shipping_company_width')) {
            $data['ez_checkout_shipping_company_width'] = $this->config->get('ez_checkout_shipping_company_width');
        } else {
            $data['ez_checkout_shipping_company_width'] = '6';
        }

        if (isset($this->request->post['ez_checkout_shipping_company_sort'])) {
            $data['ez_checkout_shipping_company_sort'] = $this->request->post['ez_checkout_shipping_company_sort'];
        } else if ($this->config->get('ez_checkout_shipping_company_sort')) {
            $data['ez_checkout_shipping_company_sort'] = $this->config->get('ez_checkout_shipping_company_sort');
        } else {
            $data['ez_checkout_shipping_company_sort'] = '4';
        }


        // Shipping address Postcode

        if (isset($this->request->post['ez_checkout_shipping_postcode_status'])) {
            $data['ez_checkout_shipping_postcode_status'] = $this->request->post['ez_checkout_shipping_postcode_status'];
        } else if ($this->config->get('ez_checkout_shipping_postcode_status') || $this->config->get('ez_checkout_shipping_postcode_status') == '0') {
            $data['ez_checkout_shipping_postcode_status'] = $this->config->get('ez_checkout_shipping_postcode_status');
        } else {
            $data['ez_checkout_shipping_postcode_status'] = '1';
        }

        if (isset($this->request->post['ez_checkout_shipping_postcode_width'])) {
            $data['ez_checkout_shipping_postcode_width'] = $this->request->post['ez_checkout_shipping_postcode_width'];
        } else if ($this->config->get('ez_checkout_shipping_postcode_width')) {
            $data['ez_checkout_shipping_postcode_width'] = $this->config->get('ez_checkout_shipping_postcode_width');
        } else {
            $data['ez_checkout_shipping_postcode_width'] = '6';
        }

        if (isset($this->request->post['ez_checkout_shipping_postcode_sort'])) {
            $data['ez_checkout_shipping_postcode_sort'] = $this->request->post['ez_checkout_shipping_postcode_sort'];
        } else if ($this->config->get('ez_checkout_shipping_postcode_sort')) {
            $data['ez_checkout_shipping_postcode_sort'] = $this->config->get('ez_checkout_shipping_postcode_sort');
        } else {
            $data['ez_checkout_shipping_postcode_sort'] = '5';
        }


        // Shipping address Country

        if (isset($this->request->post['ez_checkout_shipping_country_status'])) {
            $data['ez_checkout_shipping_country_status'] = $this->request->post['ez_checkout_shipping_country_status'];
        } else if ($this->config->get('ez_checkout_shipping_country_status') || $this->config->get('ez_checkout_shipping_country_status') == '0') {
            $data['ez_checkout_shipping_country_status'] = $this->config->get('ez_checkout_shipping_country_status');
        } else {
            $data['ez_checkout_shipping_country_status'] = '1';
        }

        if (isset($this->request->post['ez_checkout_shipping_country_width'])) {
            $data['ez_checkout_shipping_country_width'] = $this->request->post['ez_checkout_shipping_country_width'];
        } else if ($this->config->get('ez_checkout_shipping_country_width')) {
            $data['ez_checkout_shipping_country_width'] = $this->config->get('ez_checkout_shipping_country_width');
        } else {
            $data['ez_checkout_shipping_country_width'] = '6';
        }

        if (isset($this->request->post['ez_checkout_shipping_country_sort'])) {
            $data['ez_checkout_shipping_country_sort'] = $this->request->post['ez_checkout_shipping_country_sort'];
        } else if ($this->config->get('ez_checkout_shipping_country_sort')) {
            $data['ez_checkout_shipping_country_sort'] = $this->config->get('ez_checkout_shipping_country_sort');
        } else {
            $data['ez_checkout_shipping_country_sort'] = '6';
        }

        if (isset($this->request->post['ez_checkout_shipping_country_default'])) {
            $data['ez_checkout_shipping_country_default'] = $this->request->post['ez_checkout_shipping_country_default'];
        } else if ($this->config->get('ez_checkout_shipping_country_default')) {
            $data['ez_checkout_shipping_country_default'] = $this->config->get('ez_checkout_shipping_country_default');
        } else {
            $data['ez_checkout_shipping_country_default'] = '';
        }


        // Shipping address Zone

        if (isset($this->request->post['ez_checkout_shipping_zone_id_status'])) {
            $data['ez_checkout_shipping_zone_id_status'] = $this->request->post['ez_checkout_shipping_zone_id_status'];
        } else if ($this->config->get('ez_checkout_shipping_zone_id_status') || $this->config->get('ez_checkout_shipping_zone_id_status') == '0') {
            $data['ez_checkout_shipping_zone_id_status'] = $this->config->get('ez_checkout_shipping_zone_id_status');
        } else {
            $data['ez_checkout_shipping_zone_id_status'] = '1';
        }

        if (isset($this->request->post['ez_checkout_shipping_zone_id_width'])) {
            $data['ez_checkout_shipping_zone_id_width'] = $this->request->post['ez_checkout_shipping_zone_id_width'];
        } else if ($this->config->get('ez_checkout_shipping_zone_id_width')) {
            $data['ez_checkout_shipping_zone_id_width'] = $this->config->get('ez_checkout_shipping_zone_id_width');
        } else {
            $data['ez_checkout_shipping_zone_id_width'] = '6';
        }

        if (isset($this->request->post['ez_checkout_shipping_zone_id_sort'])) {
            $data['ez_checkout_shipping_zone_id_sort'] = $this->request->post['ez_checkout_shipping_zone_id_sort'];
        } else if ($this->config->get('ez_checkout_shipping_zone_id_sort')) {
            $data['ez_checkout_shipping_zone_id_sort'] = $this->config->get('ez_checkout_shipping_zone_id_sort');
        } else {
            $data['ez_checkout_shipping_zone_id_sort'] = '6';
        }

        if (isset($this->request->post['ez_checkout_shipping_zone_id_default'])) {
            $data['ez_checkout_shipping_zone_id_default'] = $this->request->post['ez_checkout_shipping_zone_id_default'];
        } else if ($this->config->get('ez_checkout_shipping_zone_id_default')) {
            $data['ez_checkout_shipping_zone_id_default'] = $this->config->get('ez_checkout_shipping_zone_id_default');
        } else {
            $data['ez_checkout_shipping_zone_id_default'] = '';
        }


        $data['header'] = $this->load->controller('common/header');
        $data['column_left'] = $this->load->controller('common/column_left');
        $data['footer'] = $this->load->controller('common/footer');

        $this->response->setOutput($this->load->view('extension/module/ez_checkout', $data));
    }

    protected function validate() {
        if (!$this->user->hasPermission('modify', 'extension/module/ez_checkout')) {
            $this->error['warning'] = $this->language->get('error_permission');
        }

        return !$this->error;
    }
}
