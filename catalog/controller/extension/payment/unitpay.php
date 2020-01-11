<?php

class ControllerExtensionPaymentUnitpay extends Controller {
    public function index() {
        $this->load->model('checkout/order');
        $order_info = $this->model_checkout_order->getOrder($this->session->data['order_id']);

        $data['unitpay_login'] = $this->config->get('payment_unitpay_login');
        $data['unitpay_key']= $this->config->get('payment_unitpay_key');
        $data['success_url']= $this->config->get('payment_unitpay_success_url');
        // Номер заказа
        $data['inv_id'] = $this->session->data['order_id'];

        // Комментарий к заказу
        $data['inv_desc'] = urlencode($this->config->get('config_name') . ': Order #' . $data['inv_id']);

        // Сумма заказа
        //$rur_code = 'RUB';
        //$rur_order_total = $this->currency->convert($order_info['total'], $order_info['currency_code'], $rur_code);

        $data['action']="https://unitpay.ru/pay/";
        $data['back_url'] = $this->url->link('checkout/checkout');
        // Кодировка
        //$data['encoding'] = "utf-8";

        $data['merchant_url'] = $data['action'] .
            $data['unitpay_login'] .
            '?sum='			. $order_info['total'] .
            '&currency='	. $order_info['currency_code'] .
            '&account='		. $data['inv_id']	.
            '&desc='        . $data['inv_desc'] .
            '&backUrl=' .  $data['back_url'];

//tesrt
        $this->id = 'payment';

        return $this->load->view('extension/payment/unitpay', $data);

    }

    public function callback() {
        echo $this->getResult();
    }

    public function getResult(){
        $request = $_GET;

        $this->load->language('extension/payment/unitpay');

        if (empty($request['method']) || empty($request['params']) || !is_array($request['params'])) {
            return $this->getResponseError($this->language->get('error_callback_invalid_request'));
        }

        $method = $request['method'];
        $params = $request['params'];

        $this->load->model('checkout/order');
        $arOrder=$this->model_checkout_order->getOrder($params['account']);

        if (!$arOrder){
            return $this->getResponseError($this->language->get('error_callback_no_order'));
        }
        // Сумма заказа
        //$rur_code = 'RUB';
        //$rur_order_total = $this->currency->convert($arOrder['total'], $arOrder['currency_code'], $rur_code);
        $total_price = $this->currency->format($arOrder['total'], $arOrder['currency_code'], $arOrder['currency_value'], FALSE);
        $total_price = number_format($total_price, 2, '.', '');


        if ($params['signature'] != $this->getSha256SignatureByMethodAndParams(
                $method, $params, $this->config->get('payment_unitpay_key'))) {
            return $this->getResponseError($this->language->get('error_callback_incorrect_ds'));
        }


        if ($method == 'check'){

            if ($params['orderCurrency'] != $arOrder['currency_code']) {
                $e = sprintf(
                    $this->language->get('error_callback_currency_incorrect'),
                    $this->currency->format($params['orderCurrency'], $arOrder['currency_code']),
                    $this->currency->format($arOrder['currency_code'], $arOrder['currency_code'])
                );
                return $this->getResponseError($e);
            }

            if ($params['orderSum'] != $total_price){
                $e = sprintf(
                    $this->language->get('error_callback_amount_incorrect'),
                    $this->currency->format($params['orderSum'], $arOrder['currency_code']),
                    $this->currency->format($total_price, $arOrder['currency_code'])
                );
                return $this->getResponseError($e);
            }

            $checkResult = $this->check($params);
            if ($checkResult !== true){
                return $this->getResponseError($checkResult);
            }

            return $this->getResponseSuccess($this->language->get('success_callback_check'));
        }

        if ($method == 'pay'){
            if ($arOrder && $arOrder['order_status_id'] == $this->config->get('payment_unitpay_order_status_id_after_pay')){
                return $this->getResponseSuccess($this->language->get('success_callback_already_paid'));
            }

            if (!$arOrder){
                return $this->getResponseError($this->language->get('error_callback_no_order'));
            }

            $this->pay($params);

            return $this->getResponseSuccess($this->language->get('success_callback_paid'));
        }

        if ($method == 'error'){
            if (!$arOrder){
                return $this->getResponseError($this->language->get('error_callback_no_order'));
            }

            if ($this->config->get('payment_unitpay_set_error_status')){
                $this->error($params);
            }

            return $this->getResponseSuccess($this->language->get('success_callback_error'));
        }

        return $this->getResponseError(sprintf($this->language->get('error_callback_not_supported'), $method));
    }

    public function confirm()
    {
        $this->load->model('checkout/order');
        if ($this->config->get('payment_unitpay_create_order')=='1') $this->model_checkout_order->addOrderHistory($this->session->data['order_id'], $this->config->get('unitpay_order_status_id_after_create'), '', true);
        if ($this->config->get('payment_unitpay_cart_reset')=='1') $this->cart->clear();
    }


    private function getResponseSuccess($message){
        return json_encode(array(
            "jsonrpc" => "2.0",
            "result" => array(
                "message" => $message
            ),
            'id' => 1,
        ));
    }

    private function getResponseError($message){
        return json_encode(array(
            "jsonrpc" => "2.0",
            "error" => array(
                "code" => -32000,
                "message" => $message
            ),
            'id' => 1
        ));
    }

    /**
     * @param $method
     * @param array $params
     * @param $secretKey
     * @return string
     */
    function getSha256SignatureByMethodAndParams($method, array $params, $secretKey)
    {
        $delimiter = '{up}';
        ksort($params);
        unset($params['sign']);
        unset($params['signature']);

        return hash('sha256', $method.$delimiter.join($delimiter, $params).$delimiter.$secretKey);
    }

    private function getMd5Sign($params, $secretKey){
        ksort($params);
        unset($params['sign']);
        return md5(join(null, $params).$secretKey);
    }

    private function check($params){
        if ($this->model_checkout_order->getOrder($params['account']))
        {
            return true;
        }
        return $this->language->get('error_order_not_found');
    }

    private function pay($params){
        $new_order_status_id = $this->config->get('payment_unitpay_order_status_id_after_pay');
        $this->model_checkout_order->addOrderHistory($params['account'], $new_order_status_id, 'оплата через UnitPay', true);
    }

    private function error($params){
        $new_order_status_id = $this->config->get('payment_unitpay_order_status_id_error');
        $this->model_checkout_order->addOrderHistory($params['account'], $new_order_status_id, 'ошибка при оплате через UnitPay', false);
    }
}
?>