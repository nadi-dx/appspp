<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends MX_Controller {

	public function index(){

		$this->login_admin('login');
	}

}