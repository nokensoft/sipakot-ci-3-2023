<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Beranda extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();
		$this->load->model('M_pengaturan');
		$this->load->model('M_opsi');
		$this->load->model('M_berita');
	}

    public function index()
    {	
		$pengaturan = array (
			'beritas' => $this->M_berita->beranda_berita('berita')->result_array(),
			'judul_situs' => $this->M_pengaturan->judul_situs(),
			'footer_text' => $this->M_pengaturan->footer_text(),
			'footer_text_right' => $this->M_pengaturan->footer_text_right(),
		);
		$this->load->view('beranda/index', $pengaturan);
    }
}