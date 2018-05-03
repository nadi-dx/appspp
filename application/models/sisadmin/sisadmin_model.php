<?php

class Sisadmin_model extends CI_Model {

	// Define variable

	$table = "tb_sisadmin";

	// fugsi tambah() untuk menambah data kedalam table tb_sisadmin.

	public function tambah()
	{

	}

	// Fungsi ubah($id) untuk mengubah data pada table tb_sisadmin.
	// Input Parameter berupa id yang akan diubah.

	public function ubah($id)
	{

	}

	// Fungsi hapus(array $id) untuk menghapus satu atau beberapa baris data.
	// Input Parameter berupa single atau multiple id.

	public function hapus(array $id)
	{

	}

	// Fungsi getAll() untuk select seluruh data yang ada pada table tb_sisadmin.

	public function getAll()
	{

	}

	// Fungsi getById($id) untuk select data dengan id tertentu.
	// Input Parameter berupa single id.

	public function getById($id)
	{

	}


	// Fungsi getByParam(array $param) untuk select data dengan parameter tertentu.
	// Input Parameter berupa single atau multiple param.
	// Indexing parameter sesuai nama field pada table tb_sisadmin.

	public function getByParam($param)
	{
		return $this->db->get_where($table, $param);
	}

}