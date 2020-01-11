<?php
class ControllerCheckoutCheckout extends Controller {
	public function index() {
		// Validate cart has products and has stock.
		if ((!$this->cart->hasProducts() && empty($this->session->data['vouchers'])) || (!$this->cart->hasStock() && !$this->config->get('config_stock_checkout'))) {
			$this->response->redirect($this->url->link('checkout/cart'));
		}

		// Validate minimum quantity requirements.
		$products = $this->cart->getProducts();

		foreach ($products as $product) {
			$product_total = 0;

			foreach ($products as $product_2) {
				if ($product_2['product_id'] == $product['product_id']) {
					$product_total += $product_2['quantity'];
				}
			}

			if ($product['minimum'] > $product_total) {
				$this->response->redirect($this->url->link('checkout/cart'));
			}
		}

		$this->load->language('checkout/checkout');

		$this->document->setTitle($this->language->get('heading_title'));

		$data['heading_title'] = $this->language->get('heading_title');
	   

    $data['heading_title'] = $this->language->get('heading_title');
   

    $data['heading_title'] = $this->language->get('heading_title');
   

		$this->document->addScript('catalog/view/javascript/jquery/datetimepicker/moment/moment.min.js');
		$this->document->addScript('catalog/view/javascript/jquery/datetimepicker/moment/moment-with-locales.min.js');
		$this->document->addScript('catalog/view/javascript/jquery/datetimepicker/bootstrap-datetimepicker.min.js');
		$this->document->addStyle('catalog/view/javascript/jquery/datetimepicker/bootstrap-datetimepicker.min.css');

		// Required by klarna
		if ($this->config->get('payment_klarna_account') || $this->config->get('payment_klarna_invoice')) {
			$this->document->addScript('http://cdn.klarna.com/public/kitt/toc/v1.0/js/klarna.terms.min.js');
		}

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/home')
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_cart'),
			'href' => $this->url->link('checkout/cart')
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('heading_title'),
			'href' => $this->url->link('checkout/checkout', '', true)
		);

		$data['text_checkout_option'] = sprintf($this->language->get('text_checkout_option'), 1);
		$data['text_checkout_account'] = sprintf($this->language->get('text_checkout_account'), 2);
		$data['text_checkout_payment_address'] = sprintf($this->language->get('text_checkout_payment_address'), 2);
		$data['text_checkout_shipping_address'] = sprintf($this->language->get('text_checkout_shipping_address'), 3);
		$data['text_checkout_shipping_method'] = sprintf($this->language->get('text_checkout_shipping_method'), 4);
		
		if ($this->cart->hasShipping()) {
			$data['text_checkout_payment_method'] = sprintf($this->language->get('text_checkout_payment_method'), 5);
			$data['text_checkout_confirm'] = sprintf($this->language->get('text_checkout_confirm'), 6);
		} else {
			$data['text_checkout_payment_method'] = sprintf($this->language->get('text_checkout_payment_method'), 3);
			$data['text_checkout_confirm'] = sprintf($this->language->get('text_checkout_confirm'), 4);	
		}

		if (isset($this->session->data['error'])) {
			$data['error_warning'] = $this->session->data['error'];
			unset($this->session->data['error']);
		} else {
			$data['error_warning'] = '';
		}

		$data['logged'] = $this->customer->isLogged();

		if (isset($this->session->data['account'])) {
			$data['account'] = $this->session->data['account'];
		} else {
			$data['account'] = '';
		}

		$data['shipping_required'] = $this->cart->hasShipping();

		$data['column_left'] = $this->load->controller('common/column_left');
		$data['column_right'] = $this->load->controller('common/column_right');
		$data['content_top'] = $this->load->controller('common/content_top');
		$data['content_bottom'] = $this->load->controller('common/content_bottom');
		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');

// Модуль ez_checkout
		$data['text_select'] = $this->language->get('text_select');
                $this->load->model('setting/setting');
                $setting_info = $this->model_setting_setting->getSetting('ez_checkout');
                if (isset($setting_info['ez_checkout_status']) && $setting_info['ez_checkout_status']) {

                    if ($this->customer->isLogged()) {
                        $this->session->data['account'] = 'logged';
                    }

                    $data['blocks'] = array();

                    if (isset($setting_info['ez_checkout_cart_status']) && $setting_info['ez_checkout_cart_status']) {
                        $data['blocks'][] = array(
                            'sort'  => isset($setting_info['ez_checkout_cart_sort']) ? $setting_info['ez_checkout_cart_sort'] : 1,
                            'width' => isset($setting_info['ez_checkout_cart_width']) ? $setting_info['ez_checkout_cart_width'] : 12,
                            'html'  => $this->load->controller('checkout/ez_cart'),
                            'id'    => 'cart-checkout'
                        );
                    }

                    if (isset($setting_info['ez_checkout_user_status']) && $setting_info['ez_checkout_user_status'] && !$this->customer->isLogged()) {
                        $data['blocks'][] = array(
                            'sort'  => isset($setting_info['ez_checkout_user_sort']) ? $setting_info['ez_checkout_user_sort'] : 1,
                            'width' => isset($setting_info['ez_checkout_user_width']) ? $setting_info['ez_checkout_user_width'] : 12,
                            'html'  => $this->load->controller('checkout/ez_user'),
                            'id'    => 'user'
                        );
                    }

                    if (isset($setting_info['ez_checkout_payment_address_status']) && $setting_info['ez_checkout_payment_address_status']) {
                        $data['blocks'][] = array(
                            'sort'  => isset($setting_info['ez_checkout_payment_address_sort']) && !$this->customer->isLogged() ? $setting_info['ez_checkout_payment_address_sort'] : $setting_info['ez_checkout_cart_sort'] + .1,
                            'width' => isset($setting_info['ez_checkout_payment_address_width']) && !$this->customer->isLogged() ? $setting_info['ez_checkout_payment_address_width'] : 12,
                            'html'  => $this->load->controller('checkout/ez_payment_address'),
                            'id'    => 'payment-address'
                        );
                    }

                    if (isset($setting_info['ez_checkout_shipping_address_status']) && $setting_info['ez_checkout_shipping_address_status']) {
                        $data['blocks'][] = array(
                            'sort'  => isset($setting_info['ez_checkout_shipping_address_sort']) && !$this->customer->isLogged() ? $setting_info['ez_checkout_shipping_address_sort'] : $setting_info['ez_checkout_cart_sort'] + .2,
                            'width' => isset($setting_info['ez_checkout_shipping_address_width']) && !$this->customer->isLogged() ? $setting_info['ez_checkout_shipping_address_width'] : 12,
                            'html'  => (isset($this->session->data['shipping_address_status']) && !$this->session->data['shipping_address_status']) || (!isset($setting_info['ez_checkout_payment_address_status']) || !$setting_info['ez_checkout_payment_address_status']) ? $this->load->controller('checkout/ez_shipping_address') : '',
                            'id'    => 'shipping-address'
                        );
                    }

                    if (isset($setting_info['ez_checkout_payment_method_status']) && $setting_info['ez_checkout_payment_method_status']) {
                        $data['blocks'][] = array(
                            'sort'  => isset($setting_info['ez_checkout_payment_method_sort']) ? $setting_info['ez_checkout_payment_method_sort'] : 1,
                            'width' => isset($setting_info['ez_checkout_payment_method_width']) ? $setting_info['ez_checkout_payment_method_width'] : 12,
                            'html'  => $this->load->controller('checkout/ez_payment_method'),
                            'id'    => 'payment-method'
                        );
                    }

                    if (isset($setting_info['ez_checkout_shipping_method_status']) && $setting_info['ez_checkout_shipping_method_status'] && $this->cart->hasShipping()) {
                        $data['blocks'][] = array(
                            'sort'  => isset($setting_info['ez_checkout_shipping_method_sort']) ? $setting_info['ez_checkout_shipping_method_sort'] : 1,
                            'width' => isset($setting_info['ez_checkout_shipping_method_width']) ? $setting_info['ez_checkout_shipping_method_width'] : 12,
                            'html'  => $this->load->controller('checkout/ez_shipping_method'),
                            'id'    => 'shipping-method'
                        );
                    }

                    if (isset($setting_info['ez_checkout_comment_status']) && $setting_info['ez_checkout_comment_status']) {
                        $data['blocks'][] = array(
                            'sort'  => isset($setting_info['ez_checkout_comment_sort']) ? $setting_info['ez_checkout_comment_sort'] : 1,
                            'width' => isset($setting_info['ez_checkout_comment_width']) ? $setting_info['ez_checkout_comment_width'] : 12,
                            'html'  => $this->load->controller('checkout/ez_comment'),
                            'id'    => 'comment'
                        );
                    }

                    if (isset($setting_info['ez_checkout_agree_status']) && $setting_info['ez_checkout_agree_status']) {
                        if ($this->config->get('config_account_id')) {
                            $this->load->model('catalog/information');

                            $information_info = $this->model_catalog_information->getInformation($this->config->get('config_account_id'));

                            if ($information_info) {
                                $data['text_agree'] = sprintf($this->language->get('entry_user_agree_status'), $this->url->link('information/information/agree', 'information_id=' . $this->config->get('config_account_id'), true), $information_info['title'], $information_info['title']);
                            } else {
                                $data['text_agree'] = '';
                            }
                        } else {
                            $data['text_agree'] = '';
                        }
                    } else {
                        $data['text_agree'] = '';
                    }

                    $data['text_agree_default'] = $setting_info['ez_checkout_agree_default'];

                    $data['order_button_text'] = $setting_info['ez_checkout_order_button'];

                    $data['text_confirm_order'] = html_entity_decode($this->language->get('text_confirm_order'), ENT_QUOTES, 'UTF-8');

                    $filter = array();

                    foreach ($data['blocks'] as $block) {
                        $filter[] = $block['sort'];
                    }

                    array_multisort($filter, $data['blocks']);

                    if ($setting_info['ez_checkout_confirm_status']) {
                        $data['confirm'] = true;
                        $data['confirm_trigger'] = '';
                    } else {
                        $data['confirm'] = false;
                        $data['confirm_trigger'] = $setting_info['ez_checkout_confirm_trigger'];
                    }

                    $this->response->setOutput($this->load->view('checkout/ez_checkout', $data));
                } else {
                    $this->response->setOutput($this->load->view('checkout/checkout', $data));
                }
	}

	public function country() {
		$json = array();

		$this->load->model('localisation/country');

		$country_info = $this->model_localisation_country->getCountry($this->request->get['country_id']);

		if ($country_info) {
			$this->load->model('localisation/zone');

			$json = array(
				'country_id'        => $country_info['country_id'],
				'name'              => $country_info['name'],
				'iso_code_2'        => $country_info['iso_code_2'],
				'iso_code_3'        => $country_info['iso_code_3'],
				'address_format'    => $country_info['address_format'],
				'postcode_required' => $country_info['postcode_required'],
				'zone'              => $this->model_localisation_zone->getZonesByCountryId($this->request->get['country_id']),
				'status'            => $country_info['status']
			);
		}

		$this->response->addHeader('Content-Type: application/json');
		$this->response->setOutput(json_encode($json));
	}

	public function customfield() {
		$json = array();

		$this->load->model('account/custom_field');

		// Customer Group
		if (isset($this->request->get['customer_group_id']) && is_array($this->config->get('config_customer_group_display')) && in_array($this->request->get['customer_group_id'], $this->config->get('config_customer_group_display'))) {
			$customer_group_id = $this->request->get['customer_group_id'];
		} else {
			$customer_group_id = $this->config->get('config_customer_group_id');
		}

		$custom_fields = $this->model_account_custom_field->getCustomFields($customer_group_id);

		foreach ($custom_fields as $custom_field) {
			$json[] = array(
				'custom_field_id' => $custom_field['custom_field_id'],
				'required'        => $custom_field['required']
			);
		}

		$this->response->addHeader('Content-Type: application/json');
		$this->response->setOutput(json_encode($json));
	}
}