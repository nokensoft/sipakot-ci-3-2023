<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Transaksi extends CI_Controller {


	public function index()
	{
		$this->load->view('admin/transaksi');
	}

	// filter
	public function filter()
	{
		$this->load->view('admin/transaksi');
	}





	// form tambah
	public function baru()
	{
		$this->load->view('admin/transaksibaru');
	}

	// prosestambah
	public function prosestambah()
	{
		// $this->transaksi_model->tambah();
		redirect('admin/transaksibaru');
	}








	// form ubah
	public function ubah()
	{
		echo 'ubah';
	}

	// proses ubah
	public function prosesubah()
	{
		// $this->transaksi_model->ubah();
	}









	// proses hapus
	public function hapus()
	{
		echo 'hapus';
	}






}
