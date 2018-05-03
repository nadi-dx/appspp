<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Sis_Controller extends CI_Controller {

	function login_admin($content, $data = NULL) {
		$data['heeadernya'] = $this->load->view('sisadmin/views/template/header', $data, TRUE);
		$data['contentnya'] = $this->load->view($content, $data, TRUE);
		$data['footernya'] = $this->load->view('sisadmin/views/template/footer', $data, TRUE);

		$this->_ci->load->view('sisadmin/views/main', $data);

	}

}