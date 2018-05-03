<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends MY_Controller {

	public function index(){

		$this->render_admin('sekolah/dashboard');
	}

}