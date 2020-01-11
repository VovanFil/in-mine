<?php
class ControllerExtensionPaymentUnitpay extends Controller {

	private $error = array();

	public function index() {
		$this->load->language('extension/payment/unitpay');

		$this->document->setTitle = $this->language->get('heading_title');

		$this->load->model('setting/setting');

		if (($this->request->server['REQUEST_METHOD'] == 'POST') && ($this->validate())) {
			$this->model_setting_setting->editSetting('payment_unitpay', $this->request->post);

			$this->session->data['success'] = $this->language->get('text_success');
			if (isset($this->request->post['save_stay']) && $this->request->post['save_stay']){
				$this->response->redirect($this->url->link('extension/payment/unitpay', 'user_token=' . $this->session->data['user_token'], true));
			}
			$this->response->redirect($this->url->link('marketplace/extension', 'user_token=' . $this->session->data['user_token'] . '&type=payment', true));
		}
		

		// URL
		$data['copy_result_url'] 	= HTTP_CATALOG . 'index.php?route=extension/payment/unitpay/callback';
		$data['copy_success_url']	= HTTP_CATALOG . 'index.php?route=checkout/success';
		$data['copy_fail_url'] 	= HTTP_CATALOG . 'index.php?route=checkout/failure';

		//

		if (isset($this->error['warning'])) {
			$data['error_warning'] = $this->error['warning'];
		} else {
			$data['error_warning'] = '';
		}

		//
		if (isset($this->error['login'])) {
			$data['error_login'] = $this->error['login'];
		} else {
			$data['error_login'] = '';
		}

		if (isset($this->error['password1'])) {
			$data['error_password1'] = $this->error['password1'];
		} else {
			$data['error_password1'] = '';
		}


		$data['action'] = $this->url->link('extension/payment/unitpay', 'user_token=' . $this->session->data['user_token'], true);
		$data['update'] = $this->url->link('extension/payment/unitpay', 'user_token=' . $this->session->data['user_token'], true);

		$data['cancel'] = $this->url->link('marketplace/extension', 'user_token=' . $this->session->data['user_token'] . '&type=payment', true);

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/dashboard', 'user_token=' . $this->session->data['user_token'], true),
			'separator' => false
		);

		$data['breadcrumbs'][] = array(
			'text'      => $this->language->get('text_payment'),
			'href'      => $this->url->link('marketplace/extension', 'user_token=' . $this->session->data['user_token'] . '&type=payment', true),
			'separator' => ' :: '
		);

		$data['breadcrumbs'][] = array(
			'text'      => $this->language->get('heading_title'),
			'href'      => $this->url->link('extension/payment/unitpay', 'user_token=' . $this->session->data['user_token'], true),
			'separator' => ' :: '
		);

		//
		if (isset($this->request->post['payment_unitpay_login'])) {
			$data['payment_unitpay_login'] = $this->request->post['payment_unitpay_login'];
		} else {
			$data['payment_unitpay_login'] = $this->config->get('payment_unitpay_login');
		}

		if (isset($this->request->post['payment_unitpay_key'])) {
			$data['payment_unitpay_key'] = $this->request->post['payment_unitpay_key'];
		} else {
			$data['payment_unitpay_key'] = $this->config->get('payment_unitpay_key');
		}

		if (isset($this->request->post['payment_unitpay_order_status_id_after_create'])) {
			$data['payment_unitpay_order_status_id_after_create'] = $this->request->post['payment_unitpay_order_status_id_after_create'];
		} else {
			$data['payment_unitpay_order_status_id_after_create'] = $this->config->get('payment_unitpay_order_status_id_after_create');
		}

		if (isset($this->request->post['payment_unitpay_order_status_id_error'])) {
			$data['payment_unitpay_order_status_id_error'] = $this->request->post['payment_unitpay_order_status_id_error'];
		} else {
			$data['payment_unitpay_order_status_id_error'] = $this->config->get('payment_unitpay_order_status_id_error');
		}

		if (isset($this->request->post['payment_unitpay_order_status_id_after_pay'])) {
			$data['payment_unitpay_order_status_id_after_pay'] = $this->request->post['payment_unitpay_order_status_id_after_pay'];
		} else {
			$data['payment_unitpay_order_status_id_after_pay'] = $this->config->get('payment_unitpay_order_status_id_after_pay');
		}

		if (isset($this->request->post['payment_unitpay_create_order'])) {
			$data['payment_unitpay_create_order'] = $this->request->post['payment_unitpay_create_order'];
		} else {
			$data['payment_unitpay_create_order'] = $this->config->get('payment_unitpay_create_order');
		}

		if (isset($this->request->post['payment_unitpay_cart_reset'])) {
			$data['payment_unitpay_cart_reset'] = $this->request->post['payment_unitpay_cart_reset'];
		} else {
			$data['payment_unitpay_cart_reset'] = $this->config->get('payment_unitpay_cart_reset');
		}

		if (isset($this->request->post['payment_unitpay_set_error_status'])) {
			$data['payment_unitpay_set_error_status'] = $this->request->post['payment_unitpay_set_error_status'];
		} else {
			$data['payment_unitpay_set_error_status'] = $this->config->get('payment_unitpay_set_error_status');
		}

		if (isset($this->request->post['payment_unitpay_geo_zone_id'])) {
			$data['payment_unitpay_geo_zone_id'] = $this->request->post['payment_unitpay_geo_zone_id'];
		} else {
			$data['payment_unitpay_geo_zone_id'] = $this->config->get('payment_unitpay_geo_zone_id');
		}

		if (isset($this->request->post['payment_unitpay_status'])) {
			$data['payment_unitpay_status'] = $this->request->post['payment_unitpay_status'];
		} else {
			$data['payment_unitpay_status'] = $this->config->get('payment_unitpay_status');
		}

		$this->load->model('localisation/order_status');

		$data['order_statuses'] = $this->model_localisation_order_status->getOrderStatuses();

		$this->load->model('localisation/geo_zone');

		$data['geo_zones'] = $this->model_localisation_geo_zone->getGeoZones();

		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');

		$this->response->setOutput($this->load->view('extension/payment/unitpay', $data));

	}

	protected function validate() {
		if (!$this->user->hasPermission('modify', 'extension/payment/unitpay')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}

		if (!$this->request->post['payment_unitpay_login']) {
			$this->error['login'] = $this->language->get('error_login');
		}

		if (!$this->request->post['payment_unitpay_key']) {
			$this->error['password1'] = $this->language->get('error_password1');
		}

		if (!$this->error) {
			return TRUE;
		} else {
			return FALSE;
		}
	}
}
?>