<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class MY_Controller extends CI_Controller {

	function login_sisadmin($content, $data = NULL) {
		$data['heeadernya'] = $this->load->view('sisadmin/views/template/header', $data, TRUE);
		$data['contentnya'] = $this->load->view($content, $data, TRUE);
		$data['footernya'] = $this->load->view('sisadmin/views/template/footer', $data, TRUE);

		$this->load->view('sisadmin/views/main', $data);

	}

	function login_admin($content, $data = NULL) {
		$data['headernya'] = $this->load->view('template/header_login', $data, TRUE);
		$data['contentnya'] = $this->load->view($content, $data, TRUE);
		$data['footernya'] = $this->load->view('template/footer', $data, TRUE);

		$this->load->view('main', $data);

	}

	function render_admin($content, $data = NULL) {
		$data['headernya'] = $this->load->view('template/header_main', $data, TRUE);
		$data['contentnya'] = $this->load->view($content, $data, TRUE);
		$data['footernya'] = $this->load->view('template/footer', $data, TRUE);

		$this->load->view('main', $data);

	}

}