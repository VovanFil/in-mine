<?php
class ControllerExtensionModuleCustomRequest extends Controller
{
    public function index() {
        $this->load->language('extension/module/custom_request');

        $data = [];

        $lang = $this->session->data['language'];
        $config = $this->config->get('module_custom_request_gform_link');
        $gform_link = isset($config[$lang]) ? $config[$lang] : '';
        $data['gform_embed_link'] = explode('?', $gform_link)[0] . '?embedded=true';

        $data['column_left'] = $this->load->controller('common/column_left');
        $data['column_right'] = $this->load->controller('common/column_right');
        $data['content_top'] = $this->load->controller('common/content_top');
        $data['content_bottom'] = $this->load->controller('common/content_bottom');
        $data['footer'] = $this->load->controller('common/footer');
        $data['header'] = $this->load->controller('common/header');

        $this->response->setOutput($this->load->view('extension/module/custom_request', $data));
    }
}