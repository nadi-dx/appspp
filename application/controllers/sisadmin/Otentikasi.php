<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Otentikasi extends CI_Controller {


	// Function __construct digunakan untuk mendifinisikan perintah yang akan diekskusi pertama kali oleh class.
	function __construct()
	{
		parent::__construct();
		//Cara Load manual disetiap controller, atau dapat ditambahkan di autoload.php pada config untuk meload semua.
		$this->load->model('sisadmin/sisadmin_model');
	}
	

	public function index()
	{
		$this->load->view('sisadmin/login');
	}

	// Fungsi untuk melakukan otentikasi Login untuk user sisadmin

	public function login_in()
	{

		$username = $this->input->post('username');
		$password = $this->input->post('password');
		$param = array(
			'username' => $username,
			'password' => md5($password)
		);

		// Cek dan Validasi Input dengan jumlah match 1 row jika valid dan 0 row jika tidak valid

		$cek = $this->sisadmin_model->getByParam($param)->num_rows();

		if($cek > 0)
		{
			$data_session = array(
				'username' => $username,
				'status' => "Login" 
			);

			$this->session->set_userdata($data_session);

			redirect(base_url("sisadmin"));
		}else{
			echo "Username atau Password Salah";
		}

	public function logout()
	{
		
		$this->session->unset_userdata($params);

		redirect(base_url("otentikasi"));

	}


	}
}