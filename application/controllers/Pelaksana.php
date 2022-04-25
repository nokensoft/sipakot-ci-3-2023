<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Pelaksana extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();
		$this->load->model('M_wajibpajak');
		$this->load->model('M_opsi');
		$this->load->model('M_user');
		$this->load->model('M_pengaturan');
		$this->load->model('M_tagihan');

		if ($this->session->userdata('status') != "telah_login") {
			redirect(base_url("admin/masuk"));
		}

		is_logged_in();
		$this->load->helper('rupiah');
		$this->load->helper('volume_air');
	}






	// KELUAR (pelaksana/keluar)
	public function keluar()
	{
		$this->session->sess_destroy();
		redirect('login');
	}






	/**
	 * ==========================================================
	 * PELAKSANA > DASBOR
	 * ==========================================================
	*/

	public function index()
	{
		$this->dasbor();
	}

	public function dasbor()
	{
		$data = array (
			// dasbor > info
			'dasbor_info_harga_baku' => $this->M_opsi->dasbor_info_harga_baku(),
			'dasbor_info_persentasi_pabt' => $this->M_opsi->dasbor_info_persentasi_pabt(),
			'dasbor_info_persentasi_sda' => $this->M_opsi->dasbor_info_persentasi_sda(),
			'dasbor_info_persentasi_kompensasi' => $this->M_opsi->dasbor_info_persentasi_kompensasi(),

			'dasbor_info_wajib_pajak_baru' => $this->M_opsi->dasbor_info_wajib_pajak_baru(),
			'dasbor_info_tagihan_baru' => $this->M_opsi->dasbor_info_tagihan_baru(),
		);
		
		$pengaturan = array (
			'judul_situs' => $this->M_pengaturan->judul_situs(),
			'footer_text' => $this->M_pengaturan->footer_text(),
			'footer_text_right' => $this->M_pengaturan->footer_text_right(),
		);

		$this->load->view('pelaksana/partials/header', $pengaturan);
		$this->load->view('pelaksana/dasbor', $data);
		$this->load->view('partials/footer');
	}













	/**
	 * ==========================================================
	 * PELAKSANA > PROFIL
	 * ==========================================================
	*/




	// pelaksana > profil
	public function profil()
	{
		$data = array (
			'user' => $this->M_user->detail_profil(),
		);
		
		$pengaturan = array (
			'judul_situs' => $this->M_pengaturan->judul_situs(),
			'footer_text' => $this->M_pengaturan->footer_text(),
			'footer_text_right' => $this->M_pengaturan->footer_text_right(),
		);

		$this->load->view('pelaksana/partials/header', $pengaturan);
		$this->load->view('pelaksana/profil/index', $data);
		$this->load->view('partials/footer');
	}



	// pelaksana > profil > ubah
	public function profilubah()
	{
		$data = array (
			'user' => $this->M_user->detail_profil(),
		);
		
		$pengaturan = array (
			'judul_situs' => $this->M_pengaturan->judul_situs(),
			'footer_text' => $this->M_pengaturan->footer_text(),
			'footer_text_right' => $this->M_pengaturan->footer_text_right(),
		);
		
		$this->load->view('pelaksana/partials/header', $pengaturan);
		$this->load->view('pelaksana/profil/ubah', $data);
		$this->load->view('partials/footer');
	}



	// pelaksana > profil > ubah > foto
	public function profilubahfoto()
	{
		$data = array (
			'user' => $this->M_user->detail_profil(),
		);
		
		$pengaturan = array (
			'judul_situs' => $this->M_pengaturan->judul_situs(),
			'footer_text' => $this->M_pengaturan->footer_text(),
			'footer_text_right' => $this->M_pengaturan->footer_text_right(),
		);
		
		$this->load->view('pelaksana/partials/header', $pengaturan);
		$this->load->view('pelaksana/profil/ubah-foto', $data);
		$this->load->view('partials/footer');
	}




	/*
	| ===========================================================
	| PELAKSANA > WAJIB PAJAK
	| ===========================================================
	|*/



	// pelaksana > wajib pajak
	public function wajibpajak()
	{
		$data = array (
			'wp' => $this->M_wajibpajak->wajib_pajak_hapus_0(),
		);
		
		$pengaturan = array (
			'judul_situs' => $this->M_pengaturan->judul_situs(),
			'footer_text' => $this->M_pengaturan->footer_text(),
			'footer_text_right' => $this->M_pengaturan->footer_text_right(),
		);

		$this->load->view('pelaksana/partials/header', $pengaturan);
		$this->load->view('pelaksana/wajibpajak/index', $data);
		$this->load->view('partials/footer');
	}

	// pelaksana > wajib pajak > baru
	public function wajibpajakbaru()
	{
		$data = array (
			'kode' => $this->M_wajibpajak->kode(),
		);
		
		$pengaturan = array (
			'judul_situs' => $this->M_pengaturan->judul_situs(),
			'footer_text' => $this->M_pengaturan->footer_text(),
			'footer_text_right' => $this->M_pengaturan->footer_text_right(),
		);

		$this->load->view('pelaksana/partials/header', $pengaturan);
		$this->load->view('pelaksana/wajibpajak/wajibpajakbaru', $data);
		$this->load->view('partials/footer');
	}

	// pelaksana > wajib pajak > detail
	public function wajibpajakdetail($id_wp)
	{
		$where = array('id_wp' => $id_wp);
		$data['wp'] = $this->M_wajibpajak->edit($where, 'wajib_pajak')->row_array();
		$data['kategori_usaha'] = $this->M_wajibpajak->baca('pajak_kk')->result_array();
		
		$pengaturan = array (
			'judul_situs' => $this->M_pengaturan->judul_situs(),
			'footer_text' => $this->M_pengaturan->footer_text(),
			'footer_text_right' => $this->M_pengaturan->footer_text_right(),
		);
		
		$this->load->view('pelaksana/partials/header', $pengaturan);
		$this->load->view('pelaksana/wajibpajak/detail', $data);
		$this->load->view('partials/footer');
	}

	// pelaksana > wajib pajak > tagihan (new)
	public function wajibpajak_tagihan_new()
	{
		$data = array (
			'wajib_pajak' => $this->M_tagihan->baca_detail_wajib_pajak('wajib_pajak')->row_array(),
			'bulans' => $this->M_wajibpajak->baca('bulan')->result_array(),
			'tagihans' => $this->M_tagihan->baca_tagihan('tagihan')->result_array(),
		);
		
		$pengaturan = array (
			'judul_situs' => $this->M_pengaturan->judul_situs(),
			'footer_text' => $this->M_pengaturan->footer_text(),
			'footer_text_right' => $this->M_pengaturan->footer_text_right(),
		);

		$this->load->view('pelaksana/partials/header', $pengaturan);
		$this->load->view('pelaksana/wajibpajak/tagihan-new', $data);
		$this->load->view('partials/footer');
	}



	// pelaksana > wajib pajak > tagihan > buat
	public function wajibpajak_buat_tagihan()
	{
		$data = array (
			'wajib_pajak' => $this->M_tagihan->baca_detail_wajib_pajak('wajib_pajak')->row_array(),
			'bulans' => $this->M_wajibpajak->baca('bulan')->result_array(),
			'tagihans' => $this->M_tagihan->baca_tagihan('tagihan')->result_array(),
			'komponen_sda' => $this->M_wajibpajak->baca('pajak_ksda')->result_array(),

			'harga_baku' => $this->M_tagihan->harga_baku('opsi')->row_array(),
			'presentasi_pabt' => $this->M_tagihan->presentasi_pabt('opsi')->row_array(),
			'persentasi_sda' => $this->M_tagihan->baca_persentasi_sda('pajak_hda')->row_array(),
			'persentasi_kompensasi' => $this->M_tagihan->baca_persentasi_kompensasi('pajak_hda')->row_array(),
		);
		
		$pengaturan = array (
			'judul_situs' => $this->M_pengaturan->judul_situs(),
			'footer_text' => $this->M_pengaturan->footer_text(),
			'footer_text_right' => $this->M_pengaturan->footer_text_right(),
		);

		$this->load->view('pelaksana/partials/header', $pengaturan);
		$this->load->view('pelaksana/wajibpajak/tagihan-buat', $data);
		$this->load->view('partials/footer');

	}




	// pelaksana > wajib pajak > tagihan > sunting
	public function sunting_tagihan()
	{
		$data['wajib_pajak'] = $this->M_tagihan->baca_detail_wajib_pajak('wajib_pajak')->row_array();
		$data['tagihan'] = $this->M_tagihan->baca_sunting_tagihan('tagihan')->row_array();
		$data['bulans'] = $this->M_tagihan->baca('bulan')->result_array();
		$data['komponen_sda'] = $this->M_wajibpajak->baca('pajak_ksda')->result_array();
		
		$pengaturan = array (
			'judul_situs' => $this->M_pengaturan->judul_situs(),
			'footer_text' => $this->M_pengaturan->footer_text(),
			'footer_text_right' => $this->M_pengaturan->footer_text_right(),
		);

		$this->load->view('pelaksana/partials/header', $pengaturan);
		$this->load->view('pelaksana/wajibpajak/sunting-tagihan', $data);
		$this->load->view('partials/footer');

	}







	
	// pelaksana > wajib pajak > tagihan > faktor nilai air (fna)
	public function tagihan_fna()
	{
		$data['wajib_pajak'] = $this->M_tagihan->baca_detail_wajib_pajak('wajib_pajak')->row_array();
		$data['bulans'] = $this->M_wajibpajak->baca('bulan')->result_array();
		$data['tagihan'] = $this->M_tagihan->baca_sunting_tagihan('tagihan')->row_array();

		$data['jenis_usaha'] = $this->M_tagihan->baca('pajak_kk')->result_array();
		
		$pengaturan = array (
			'judul_situs' => $this->M_pengaturan->judul_situs(),
			'footer_text' => $this->M_pengaturan->footer_text(),
			'footer_text_right' => $this->M_pengaturan->footer_text_right(),
		);

		$this->load->view('pelaksana/partials/header', $pengaturan);
		$this->load->view('pelaksana/wajibpajak/tagihan-fna', $data);
		$this->load->view('partials/footer');

	}

	
	// pelaksana > wajib pajak > tagihan > info
	public function tagihan_info()
	{
		$data['wajib_pajak'] = $this->M_tagihan->baca_detail_wajib_pajak('wajib_pajak')->row_array();
		$data['bulans'] = $this->M_wajibpajak->baca('bulan')->result_array();
		$data['tagihan'] = $this->M_tagihan->baca_sunting_tagihan('tagihan')->row_array();

		$data['jenis_usaha'] = $this->M_tagihan->baca('pajak_kk')->result_array();
		
		$pengaturan = array (
			'judul_situs' => $this->M_pengaturan->judul_situs(),
			'footer_text' => $this->M_pengaturan->footer_text(),
			'footer_text_right' => $this->M_pengaturan->footer_text_right(),
		);

		$this->load->view('pelaksana/partials/header', $pengaturan);	
		$this->load->view('pelaksana/wajibpajak/tagihan-info', $data);
		$this->load->view('partials/footer');

	}


	
	// pelaksana > wajib pajak > tagihan > cetak
	public function tagihan_cetak()
	{
		$data['wajib_pajak'] = $this->M_tagihan->baca_detail_wajib_pajak('wajib_pajak')->row_array();
		$data['bulans'] = $this->M_wajibpajak->baca('bulan')->result_array();
		$data['tagihan'] = $this->M_tagihan->baca_sunting_tagihan('tagihan')->row_array();

		$data['jenis_usaha'] = $this->M_tagihan->baca('pajak_kk')->result_array();

		$this->load->view('pelaksana/wajibpajak/tagihan-cetak', $data);

	}







































	// Form Update
	public function wajibpajakubah($id_wp)
	{
		$where = array('id_wp' => $id_wp);
		$data['wp'] = $this->M_wajibpajak->edit($where, 'wajib_pajak')->result();
		
		$pengaturan = array (
			'judul_situs' => $this->M_pengaturan->judul_situs(),
			'footer_text' => $this->M_pengaturan->footer_text(),
			'footer_text_right' => $this->M_pengaturan->footer_text_right(),
		);

		$this->load->view('pelaksana/partials/header', $pengaturan);
		$this->load->view('pelaksana/wajibpajak/wajibpajakubah', $data);
		$this->load->view('partials/footer');
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
		
		$pengaturan = array (
			'judul_situs' => $this->M_pengaturan->judul_situs(),
			'footer_text' => $this->M_pengaturan->footer_text(),
			'footer_text_right' => $this->M_pengaturan->footer_text_right(),
		);

		$this->load->view('pelaksana/partials/header', $pengaturan);
		$this->load->view('pelaksana/wajibpajak/tagihan');
		$this->load->view('partials/footer');
	}



	// Data cetak tagihan 
	public function cetaktagihan()
	{

		$this->load->view('pelaksana/partials/header_cetak');
		$this->load->view('pelaksana/wajibpajak/cetaktagihan');
		$this->load->view('partials/footer_cetak');
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
		
		$pengaturan = array (
			'judul_situs' => $this->M_pengaturan->judul_situs(),
			'footer_text' => $this->M_pengaturan->footer_text(),
			'footer_text_right' => $this->M_pengaturan->footer_text_right(),
		);

		$this->load->view('pelaksana/partials/header', $pengaturan);
		$this->load->view('pelaksana/tentangpajak/dasarpengenaanpajak', $data);
		$this->load->view('partials/footer');
	}

	// View nilai perolehan air
	public function nilaiperolehanair()
	{
		$where = array('judul' => 'pajak_npa');
		$data['pajak_npa'] = $this->M_wajibpajak->edit($where, 'opsi')->row_array();
		
		$pengaturan = array (
			'judul_situs' => $this->M_pengaturan->judul_situs(),
			'footer_text' => $this->M_pengaturan->footer_text(),
			'footer_text_right' => $this->M_pengaturan->footer_text_right(),
		);

		$this->load->view('pelaksana/partials/header', $pengaturan);
		$this->load->view('pelaksana/tentangpajak/nilaiperolehanair', $data);
		$this->load->view('partials/footer');
	}

	// View penentuan npa
	public function penentuannpa()
	{

		$data['pajak_ksda'] = $this->M_wajibpajak->baca('pajak_ksda')->result_array();
		$data['pajak_kk'] = $this->M_wajibpajak->baca('pajak_kk')->result_array();
		$data['pajak_hda'] = $this->M_wajibpajak->baca('pajak_hda')->result_array();
		$where = array('judul' => 'pajak_pabt');
		$data['pajak_pabt'] = $this->M_wajibpajak->edit($where, 'opsi')->row_array();
		
		$pengaturan = array (
			'judul_situs' => $this->M_pengaturan->judul_situs(),
			'footer_text' => $this->M_pengaturan->footer_text(),
			'footer_text_right' => $this->M_pengaturan->footer_text_right(),
		);

		$this->load->view('pelaksana/partials/header', $pengaturan);
		$this->load->view('pelaksana/tentangpajak/penentuannpa', $data);
		$this->load->view('partials/footer');
	}

	/*
	| ===========================================================
	| PENGGUNA
	| ===========================================================
	|*/

	public function pengguna()
	{
		$data['png'] = $this->M_wajibpajak->baca('pengguna')->result_array();
		$pengaturan['judul_situs'] = $this->M_pengaturan->judul_situs();

		$this->load->view('pelaksana/partials/header', $pengaturan);
		$this->load->view('pelaksana/pengguna/pengguna', $data);
		$this->load->view('partials/footer');
	}

	public function penggunaubah($id_pengguna)
	{
		$where = array('id_pengguna' => $id_pengguna);
		$data['wp'] = $this->M_wajibpajak->edit($where, 'pengguna')->result();
		$pengaturan['judul_situs'] = $this->M_pengaturan->judul_situs();

		$this->load->view('pelaksana/partials/header', $pengaturan);
		$this->load->view('pelaksana/pengguna/penggunaubah', $data);
		$this->load->view('partials/footer');
	}

	public function penggunadetail($id_pengguna)
	{
		$where = array('id_pengguna' => $id_pengguna);
		$data['wp'] = $this->M_wajibpajak->edit($where, 'pengguna')->result();
		$pengaturan['judul_situs'] = $this->M_pengaturan->judul_situs();

		$this->load->view('pelaksana/partials/header', $pengaturan);
		$this->load->view('pelaksana/pengguna/penggunadetail', $data);
		$this->load->view('partials/footer');
	}

	
}
