<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Dispenda extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();
		$this->load->model('M_wajibpajak');

		if ($this->session->userdata('status') != "telah_login") {
			redirect(base_url("login"));
		}
	}

	public function index()
	{
		$this->dasbor();
	}

	public function dasbor()
	{
		$this->load->view('dispenda/partials/header');
		$this->load->view('dispenda/dasbor');
		$this->load->view('dispenda/partials/footer');
	}

	// Profil
	public function profil()
	{
		$this->load->view('dispenda/partials/header');
		$this->load->view('dispenda/profil');
		$this->load->view('dispenda/partials/footer');
	}

	/*
	| ===========================================================
	| WAJIB PAJAK
	| ===========================================================
	|*/

	// Tabel Read
	public function wajibpajak()
	{
		$this->db->order_by('nama_usaha', 'DESC');
		$data['wp'] = $this->M_wajibpajak->baca('wajib_pajak')->result_array();
		$this->load->view('dispenda/partials/header');
		$this->load->view('dispenda/wajibpajak/wajibpajak', $data);
		$this->load->view('dispenda/partials/footer');
	}

	// Form Create
	public function wajibpajakbaru()
	{
		$data['kode'] = $this->M_wajibpajak->kode();
		$this->load->view('dispenda/partials/header');
		$this->load->view('dispenda/wajibpajak/wajibpajakbaru', $data);
		$this->load->view('dispenda/partials/footer');
	}

	// Form Detail
	public function wajibpajaktagihan($id_wp)
	{
		$where = array('id_wp' => $id_wp);
		$data['wp'] = $this->M_wajibpajak->edit($where, 'wajib_pajak')->result();
		$this->load->view('dispenda/partials/header');
		$this->load->view('dispenda/wajibpajak/tagihan', $data);
		$this->load->view('dispenda/partials/footer');
	}

	// Form Update
	public function wajibpajakubah($id_wp)
	{
		$where = array('id_wp' => $id_wp);
		$data['wp'] = $this->M_wajibpajak->edit($where, 'wajib_pajak')->result();
		$this->load->view('dispenda/partials/header');
		$this->load->view('dispenda/wajibpajak/wajibpajakubah', $data);
		$this->load->view('dispenda/partials/footer');
	}

	// Form Detail
	public function wajibpajakdetail($id_wp)
	{
		$where = array('id_wp' => $id_wp);
		$data['wp'] = $this->M_wajibpajak->edit($where, 'wajib_pajak')->result();
		$this->load->view('dispenda/partials/header');
		$this->load->view('dispenda/wajibpajak/wajibpajakdetail', $data);
		$this->load->view('dispenda/partials/footer');
	}

	// Process Update
	public function wajibpajakubah_ubah()
	{
		//
	}

	// Proses delete
	public function wajibpajakhapus_hapus()
	{
		//
	}

	/*
	| ===========================================================
	| TAGIHAN
	| ===========================================================
	|*/



	// Data tagihan 
	public function tagihan()
	{
		$this->load->view('petugaslapangan/partials/header');
		$this->load->view('petugaslapangan/wajibpajak/tagihan');
		$this->load->view('petugaslapangan/partials/footer');
	}



	// Data cetak tagihan 
	public function cetaktagihan()
	{

		$this->load->view('petugaslapangan/partials/header_cetak');
		$this->load->view('petugaslapangan/wajibpajak/cetaktagihan');
		$this->load->view('petugaslapangan/partials/footer_cetak');
	}

	/*
	| ===========================================================
	| TENTANG PAJAK
	| ===========================================================
	|*/


	// View dasar pengenaan pajak
	public function dasarpengenaanpajak()
	{
		$where = array('judul' => 'pajak_dpp');
		$data['pajak_dpp'] = $this->M_wajibpajak->edit($where, 'opsi')->row_array();
		$this->load->view('dispenda/partials/header');
		$this->load->view('dispenda/tentangpajak/dasarpengenaanpajak', $data);
		$this->load->view('dispenda/partials/footer');
	}

	// View nilai perolehan air
	public function nilaiperolehanair()
	{
		$where = array('judul' => 'pajak_npa');
		$data['pajak_npa'] = $this->M_wajibpajak->edit($where, 'opsi')->row_array();
		$this->load->view('dispenda/partials/header');
		$this->load->view('dispenda/tentangpajak/nilaiperolehanair', $data);
		$this->load->view('dispenda/partials/footer');
	}

	// View penentuan npa
	public function penentuannpa()
	{
		$data['bobot_ksda'] = $this->M_wajibpajak->baca('bobot_ksda')->result_array();
		$data['bobot_kk'] = $this->M_wajibpajak->baca('bobot_kk')->result_array();
		$data['presentase_khda'] = $this->M_wajibpajak->baca('presentase_khda')->result_array();
		$this->load->view('dispenda/partials/header');
		$this->load->view('dispenda/tentangpajak/penentuannpa', $data);
		$this->load->view('dispenda/partials/footer');
	}

	/*
	| ===========================================================
	| PENGGUNA
	| ===========================================================
	|*/

	public function pengguna()
	{
		$data['png'] = $this->M_wajibpajak->baca('pengguna')->result_array();
		$this->load->view('petugaslapangan/partials/header');
		$this->load->view('petugaslapangan/pengguna/pengguna', $data);
		$this->load->view('petugaslapangan/partials/footer');
	}

	public function penggunaubah($id_pengguna)
	{
		$where = array('id_pengguna' => $id_pengguna);
		$data['wp'] = $this->M_wajibpajak->edit($where, 'pengguna')->result();
		$this->load->view('petugaslapangan/partials/header');
		$this->load->view('petugaslapangan/pengguna/penggunaubah', $data);
		$this->load->view('petugaslapangan/partials/footer');
	}

	public function penggunadetail($id_pengguna)
	{
		$where = array('id_pengguna' => $id_pengguna);
		$data['wp'] = $this->M_wajibpajak->edit($where, 'pengguna')->result();
		$this->load->view('petugaslapangan/partials/header');
		$this->load->view('petugaslapangan/pengguna/penggunadetail', $data);
		$this->load->view('petugaslapangan/partials/footer');
	}

	/*
	| ===========================================================
	| PENGATURAN
	| ===========================================================
	|*/

	// Informasi situs
	public function informasisitus()
	{
		$this->load->view('petugaslapangan/partials/header');
		$this->load->view('petugaslapangan/pengaturan/informasisitus');
		$this->load->view('petugaslapangan/partials/footer');
	}

	// Logo
	public function logo()
	{
		$this->load->view('petugaslapangan/partials/header');
		$this->load->view('petugaslapangan/pengaturan/logo');
		$this->load->view('petugaslapangan/partials/footer');
	}

	// Tampilan
	public function tampilan()
	{
		$this->load->view('petugaslapangan/partials/header');
		$this->load->view('petugaslapangan/pengaturan/tampilan');
		$this->load->view('petugaslapangan/partials/footer');
	}

	// Halaman depan
	public function halamandepan()
	{
		$this->load->view('petugaslapangan/partials/header');
		$this->load->view('petugaslapangan/pengaturan/halamandepan');
		$this->load->view('petugaslapangan/partials/footer');
	}
}
