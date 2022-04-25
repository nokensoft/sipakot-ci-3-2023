<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Admin extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();
		$this->load->model('M_pengaturan');
		$this->load->model('M_opsi');
		$this->load->model('M_wajibpajak');
		$this->load->model('M_user');
		$this->load->model('M_tagihan');

		if ($this->session->userdata('status') != "telah_login") {
			redirect(base_url("admin/masuk"));
		}

		// helper login's function
		is_logged_in();

		// helper membuat rupiah (Rp.)
		$this->load->helper('rupiah');

		// helper membuat titik pada angka
		$this->load->helper('volume_air');
	}










	// KELUAR (admin/keluar)
	public function keluar()
	{
		$this->session->sess_destroy();
		redirect('login');
	}







	/**
	 * ==========================================================
	 * ADMIN > DASBOR
	 * ==========================================================
	*/





	// admin > dasbor (redirect)
	public function index()
	{
		redirect(base_url('admin/dasbor'));
	}

	// admin > dasbor
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

		$this->load->view('admin/partials/header', $pengaturan);
		$this->load->view('admin/dasbor', $data);
		$this->load->view('admin/partials/footer');
	}







	/**
	 * ==========================================================
	 * ADMIN > PROFIL
	 * ==========================================================
	*/

	// dasbor > profil
	public function profil()
	{	
		$data = array (
			// dasbor > info
			'dasbor_info_harga_baku' => $this->M_opsi->dasbor_info_harga_baku(),
			'dasbor_info_persentasi_pabt' => $this->M_opsi->dasbor_info_persentasi_pabt(),
			'dasbor_info_persentasi_sda' => $this->M_opsi->dasbor_info_persentasi_sda(),
			'dasbor_info_persentasi_kompensasi' => $this->M_opsi->dasbor_info_persentasi_kompensasi(),

			// profil
			'user' => $this->M_user->detail_profil(),
		);
		
		$pengaturan = array (
			'judul_situs' => $this->M_pengaturan->judul_situs(),
			'footer_text' => $this->M_pengaturan->footer_text(),
			'footer_text_right' => $this->M_pengaturan->footer_text_right(),
		);
		
		$this->load->view('admin/partials/header', $pengaturan);
		$this->load->view('admin/profil/index', $data);
		$this->load->view('admin/partials/footer');
	}

	// dasbor > profil > ubah
	public function profilubah()
	{
		$data = array (
			// dasbor > info
			'dasbor_info_harga_baku' => $this->M_opsi->dasbor_info_harga_baku(),
			'dasbor_info_persentasi_pabt' => $this->M_opsi->dasbor_info_persentasi_pabt(),
			'dasbor_info_persentasi_sda' => $this->M_opsi->dasbor_info_persentasi_sda(),
			'dasbor_info_persentasi_kompensasi' => $this->M_opsi->dasbor_info_persentasi_kompensasi(),

			// profil
			'user' => $this->M_user->detail_profil(),
		);
		
		$pengaturan = array (
			'judul_situs' => $this->M_pengaturan->judul_situs(),
			'footer_text' => $this->M_pengaturan->footer_text(),
			'footer_text_right' => $this->M_pengaturan->footer_text_right(),
		);
		
		$this->load->view('admin/partials/header', $pengaturan);
		$this->load->view('admin/profil/ubah', $data);
		$this->load->view('admin/partials/footer');
	}

	// dasbor > profil > ubah > foto
	public function profilubahfoto()
	{
		$data = array (
			// dasbor > info
			'dasbor_info_harga_baku' => $this->M_opsi->dasbor_info_harga_baku(),
			'dasbor_info_persentasi_pabt' => $this->M_opsi->dasbor_info_persentasi_pabt(),
			'dasbor_info_persentasi_sda' => $this->M_opsi->dasbor_info_persentasi_sda(),
			'dasbor_info_persentasi_kompensasi' => $this->M_opsi->dasbor_info_persentasi_kompensasi(),

			// profil
			'user' => $this->M_user->detail_profil(),
		);
		
		$pengaturan = array (
			'judul_situs' => $this->M_pengaturan->judul_situs(),
			'footer_text' => $this->M_pengaturan->footer_text(),
			'footer_text_right' => $this->M_pengaturan->footer_text_right(),
		);
		
		$this->load->view('admin/partials/header', $pengaturan);
		$this->load->view('admin/profil/ubah-foto', $data);
		$this->load->view('admin/partials/footer');
	}









	/**
	 * ==========================================================
	 * ADMIN > WAJIB PAJAK
	 * ==========================================================
	*/

	// admin > wajib pajak
	public function wajibpajak()
	{
		$this->db->order_by('id_wp', 'DESC')->where('hapus', '0');
		$data['wp'] = $this->M_wajibpajak->baca('wajib_pajak')->result_array();
		$data['wajib_pajak_kategori_usaha'] = $this->M_opsi->wajib_pajak_kategori_usaha();
		
		$pengaturan = array (
			'judul_situs' => $this->M_pengaturan->judul_situs(),
			'footer_text' => $this->M_pengaturan->footer_text(),
			'footer_text_right' => $this->M_pengaturan->footer_text_right(),
		);
		
		
		$this->load->view('admin/partials/header', $pengaturan);
		$this->load->view('admin/wajibpajak/index', $data);
		$this->load->view('admin/partials/footer');
	}

	// admin > wajib pajak
	public function wajib_pajak_sortir($id)
	{

		$data = array (
			'wajib_pajak_sortir' => $this->M_opsi->wajib_pajak_sortir($id),
			'wajib_pajak_kategori_usaha' => $this->M_opsi->wajib_pajak_kategori_usaha()
		);
		
		$pengaturan = array (
			'judul_situs' => $this->M_pengaturan->judul_situs(),
			'footer_text' => $this->M_pengaturan->footer_text(),
			'footer_text_right' => $this->M_pengaturan->footer_text_right(),
		);
		
		
		$this->load->view('admin/partials/header', $pengaturan);
		$this->load->view('admin/wajibpajak/index-sortir', $data);
		$this->load->view('admin/partials/footer');
	}


	// admin > wajib pajak > terhapus
	public function wajib_pajak_terhapus()
	{
		$this->db->order_by('id_wp', 'DESC')->where('hapus', '1');
		$data['wp'] = $this->M_wajibpajak->baca('wajib_pajak')->result_array();
		
		$pengaturan = array (
			'judul_situs' => $this->M_pengaturan->judul_situs(),
			'footer_text' => $this->M_pengaturan->footer_text(),
			'footer_text_right' => $this->M_pengaturan->footer_text_right(),
		);
		
		$this->load->view('admin/partials/header', $pengaturan);
		$this->load->view('admin/wajibpajak/index-terhapus', $data);
		$this->load->view('admin/partials/footer');
	}














	// admin > wajib pajak > tagihan
	public function wajibpajaktagihan($id_wp)
	{
		$where = array('id_wp' => $id_wp);
		$data['wp'] = $this->M_wajibpajak->edit($where, 'wajib_pajak')->row_array();
		$data['wajib_pajak'] = $this->M_wajibpajak->edit($where, 'wajib_pajak')->row_array();
		$data['bulan'] = $this->M_wajibpajak->baca('bulan')->result_array();
		$data['komponen_sda'] = $this->M_wajibpajak->baca('pajak_ksda')->result_array();
		
		$where = array('judul' => 'pajak_pabt');
		$data['pajak_pabt'] = $this->M_wajibpajak->edit($where, 'opsi')->row_array();
		
		$pengaturan = array (
			'judul_situs' => $this->M_pengaturan->judul_situs(),
			'footer_text' => $this->M_pengaturan->footer_text(),
			'footer_text_right' => $this->M_pengaturan->footer_text_right(),
		);
		
		$this->load->view('admin/partials/header', $pengaturan);
		$this->load->view('admin/wajibpajak/tagihan', $data);
		$this->load->view('admin/partials/footer');
	}


	// admin > wajib pajak > tagihan (new)
	public function wajibpajak_tagihan_new()
	{
		$data['wajib_pajak'] = $this->M_tagihan->baca_detail_wajib_pajak('wajib_pajak')->row_array();
		$data['bulans'] = $this->M_wajibpajak->baca('bulan')->result_array();
		$data['tagihans'] = $this->M_tagihan->baca_tagihan('tagihan')->result_array();
		
		$pengaturan = array (
			'judul_situs' => $this->M_pengaturan->judul_situs(),
			'footer_text' => $this->M_pengaturan->footer_text(),
			'footer_text_right' => $this->M_pengaturan->footer_text_right(),
		);
		
		$this->load->view('admin/partials/header', $pengaturan);
		$this->load->view('admin/wajibpajak/tagihan-new', $data);
		$this->load->view('admin/partials/footer');
	}



	// admin > wajib pajak > tagihan > buat
	public function wajibpajak_buat_tagihan()
	{
		$data['wajib_pajak'] = $this->M_tagihan->baca_detail_wajib_pajak('wajib_pajak')->row_array();
		$data['tagihan'] = $this->M_tagihan->baca('tagihan')->row_array();
		$data['bulans'] = $this->M_wajibpajak->baca('bulan')->result_array();
		$data['komponen_sda'] = $this->M_wajibpajak->baca('pajak_ksda')->result_array();


		$data['harga_baku'] = $this->M_tagihan->harga_baku('opsi')->row_array();
		$data['presentasi_pabt'] = $this->M_tagihan->presentasi_pabt('opsi')->row_array();
		$data['persentasi_sda'] = $this->M_tagihan->baca_persentasi_sda('pajak_hda')->row_array();
		$data['persentasi_kompensasi'] = $this->M_tagihan->baca_persentasi_kompensasi('pajak_hda')->row_array();
		
		$pengaturan = array (
			'judul_situs' => $this->M_pengaturan->judul_situs(),
			'footer_text' => $this->M_pengaturan->footer_text(),
			'footer_text_right' => $this->M_pengaturan->footer_text_right(),
		);
		
		$this->load->view('admin/partials/header', $pengaturan);
		$this->load->view('admin/wajibpajak/tagihan-buat', $data);
		$this->load->view('admin/partials/footer');

	}



	// admin > wajib pajak > tagihan > sunting
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
		
		$this->load->view('admin/partials/header', $pengaturan);
		$this->load->view('admin/wajibpajak/sunting-tagihan', $data);
		$this->load->view('admin/partials/footer');

	}

	
	// admin > wajib pajak > tagihan > fna (faktor nilai air)
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
		
		$this->load->view('admin/partials/header', $pengaturan);
		$this->load->view('admin/wajibpajak/tagihan-fna', $data);
		$this->load->view('admin/partials/footer');

	}

	
	// admin > wajib pajak > tagihan > info
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
		
		$this->load->view('admin/partials/header', $pengaturan);
		$this->load->view('admin/wajibpajak/tagihan-info', $data);
		$this->load->view('admin/partials/footer');

	}


	
	// admin > wajib pajak > tagihan > info > cetak
	public function tagihan_cetak()
	{
		$data['wajib_pajak'] = $this->M_tagihan->baca_detail_wajib_pajak('wajib_pajak')->row_array();
		$data['bulans'] = $this->M_wajibpajak->baca('bulan')->result_array();
		$data['tagihan'] = $this->M_tagihan->baca_sunting_tagihan('tagihan')->row_array();

		$data['jenis_usaha'] = $this->M_tagihan->baca('pajak_kk')->result_array();

		$this->load->view('admin/wajibpajak/tagihan-cetak', $data);

	}


















	// TAMBAH (admin/wajibpajak/tambah.php)
	public function wajibpajaktambah()
	{
		$data['kode'] = $this->M_wajibpajak->kode();
		$data['kategori_usaha'] = $this->M_wajibpajak->baca('pajak_kk')->result_array();
		$data['komponen_sda'] = $this->M_wajibpajak->baca('pajak_ksda')->result_array();
		
		$pengaturan = array (
			'judul_situs' => $this->M_pengaturan->judul_situs(),
			'footer_text' => $this->M_pengaturan->footer_text(),
			'footer_text_right' => $this->M_pengaturan->footer_text_right(),
		);
		
		$this->load->view('admin/partials/header', $pengaturan);
		$this->load->view('admin/wajibpajak/tambah', $data);
		$this->load->view('admin/partials/footer');
	}

	// UBAH (admin/wajibpajak/ubah.php)
	public function wajibpajakubah($id_wp)
	{
		$where = array('id_wp' => $id_wp);
		$data['wp'] = $this->M_wajibpajak->edit($where, 'wajib_pajak')->row_array();
		$data['kategori_usaha'] = $this->M_wajibpajak->baca('pajak_kk')->result_array();
		
		$pengaturan = array (
			'judul_situs' => $this->M_pengaturan->judul_situs(),
			'footer_text' => $this->M_pengaturan->footer_text(),
			'footer_text_right' => $this->M_pengaturan->footer_text_right(),
		);
		
		$this->load->view('admin/partials/header', $pengaturan);
		$this->load->view('admin/wajibpajak/ubah', $data);
		$this->load->view('admin/partials/footer');
	}

	// UBAH FOTO PEMILIK
	public function wajib_pajak_ubah_foto_pemilik($id_wp)
	{
		$where = array('id_wp' => $id_wp);
		$data['wp'] = $this->M_wajibpajak->edit($where, 'wajib_pajak')->row_array();
		$data['kategori_usaha'] = $this->M_wajibpajak->baca('pajak_kk')->result_array();
		
		$pengaturan = array (
			'judul_situs' => $this->M_pengaturan->judul_situs(),
			'footer_text' => $this->M_pengaturan->footer_text(),
			'footer_text_right' => $this->M_pengaturan->footer_text_right(),
		);
		
		$this->load->view('admin/partials/header', $pengaturan);
		$this->load->view('admin/wajibpajak/ubah-foto-pemilik', $data);
		$this->load->view('admin/partials/footer');
	}

	// UBAH FOTO USAHA
	public function wajib_pajak_ubah_foto_usaha($id_wp)
	{
		$where = array('id_wp' => $id_wp);
		$data['wp'] = $this->M_wajibpajak->edit($where, 'wajib_pajak')->row_array();
		$data['kategori_usaha'] = $this->M_wajibpajak->baca('pajak_kk')->result_array();
		
		$pengaturan = array (
			'judul_situs' => $this->M_pengaturan->judul_situs(),
			'footer_text' => $this->M_pengaturan->footer_text(),
			'footer_text_right' => $this->M_pengaturan->footer_text_right(),
		);
		
		$this->load->view('admin/partials/header', $pengaturan);
		$this->load->view('admin/wajibpajak/ubah-foto-usaha', $data);
		$this->load->view('admin/partials/footer');
	}

	// DETAIL (admin/wajibpajak/detail.php)
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
		
		$this->load->view('admin/partials/header', $pengaturan);
		$this->load->view('admin/wajibpajak/detail', $data);
		$this->load->view('admin/partials/footer');
	}

	// HAPUS (admin/wajibpajak/hapus.php)
	public function wajibpajakhapus()
	{
		$where = array('id_wp' => $id_wp);
		$data['wp'] = $this->M_wajibpajak->edit($where, 'wajib_pajak')->result();
		
		$pengaturan = array (
			'judul_situs' => $this->M_pengaturan->judul_situs(),
			'footer_text' => $this->M_pengaturan->footer_text(),
			'footer_text_right' => $this->M_pengaturan->footer_text_right(),
		);
		
		$this->load->view('admin/partials/header', $pengaturan);
		$this->load->view('admin/wajibpajak/hapus', $data);
		$this->load->view('admin/partials/footer');
	}












	/**
	 * ==========================================================
	 * TAGIHAN
	 * ==========================================================
	*/


	// Data tagihan 
	public function tagihan()
	{
		
		$pengaturan = array (
			'judul_situs' => $this->M_pengaturan->judul_situs(),
			'footer_text' => $this->M_pengaturan->footer_text(),
			'footer_text_right' => $this->M_pengaturan->footer_text_right(),
		);
		
		$this->load->view('admin/partials/header', $pengaturan);
		$this->load->view('admin/wajibpajak/tagihan');
		$this->load->view('admin/partials/footer');
	}



	// Data cetak tagihan 
	public function cetaktagihan($id_wp)
	{
		
		$pengaturan = array (
			'judul_situs' => $this->M_pengaturan->judul_situs(),
			'footer_text' => $this->M_pengaturan->footer_text(),
			'footer_text_right' => $this->M_pengaturan->footer_text_right(),
		);
		
		$this->load->view('admin/partials/header', $pengaturan);
		$this->load->view('admin/wajibpajak/cetaktagihan',$id_wp);
		$this->load->view('admin/partials/footer_cetak');
	}



	// Informasi Tagihan
	public function informasitagihan()
	{
		
		$pengaturan = array (
			'judul_situs' => $this->M_pengaturan->judul_situs(),
			'footer_text' => $this->M_pengaturan->footer_text(),
			'footer_text_right' => $this->M_pengaturan->footer_text_right(),
		);
		
		$this->load->view('admin/partials/header', $pengaturan);
		$this->load->view('admin/wajibpajak/informasitagihan');
		$this->load->view('admin/partials/footer_cetak');
	}





	/**
	 * ==========================================================
	 * ADMIN > TENTANG PAJAK
	 * ==========================================================
	*/


	// admin > tentang pajak > dasar pengenaan pajak
	public function dasarpengenaanpajak()
	{
		$where = array('judul' => 'pajak_dpp');
		$data['pajak_dpp'] = $this->M_wajibpajak->edit($where, 'opsi')->row_array();
		
		$pengaturan = array (
			'judul_situs' => $this->M_pengaturan->judul_situs(),
			'footer_text' => $this->M_pengaturan->footer_text(),
			'footer_text_right' => $this->M_pengaturan->footer_text_right(),
		);
		
		$this->load->view('admin/partials/header', $pengaturan);
		$this->load->view('admin/tentangpajak/dasarpengenaanpajak', $data);
		$this->load->view('admin/partials/footer');
	}


	// admin > tentang pajak > nilai perolehan air
	public function nilaiperolehanair()
	{

		$where = array('judul' => 'pajak_npa');
		$data['pajak_npa'] = $this->M_wajibpajak->edit($where, 'opsi')->row_array();
		
		$pengaturan = array (
			'judul_situs' => $this->M_pengaturan->judul_situs(),
			'footer_text' => $this->M_pengaturan->footer_text(),
			'footer_text_right' => $this->M_pengaturan->footer_text_right(),
		);
		
		$this->load->view('admin/partials/header', $pengaturan);
		$this->load->view('admin/tentangpajak/nilaiperolehanair', $data);
		$this->load->view('admin/partials/footer');
	}

	// admin > tentang pajak > penentuan npa (nilai perolehan air)
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
		
		$this->load->view('admin/partials/header', $pengaturan);
		$this->load->view('admin/tentangpajak/penentuannpa', $data);
		$this->load->view('admin/partials/footer');
	}









	/**
	 * ==========================================================
	 * ADMIN > PENGGUNA
	 * ==========================================================
	*/

	// admin > pengguna
	public function pengguna()
	{
		// $data['pengguna'] = $this->M_user->baca_pengguna();
		
		$this->db->order_by('id', 'ASC')->where('hapus', '0');
		$data['pengguna'] = $this->M_user->baca_pengguna('user')->result_array();
		
		$pengaturan = array (
			'judul_situs' => $this->M_pengaturan->judul_situs(),
			'footer_text' => $this->M_pengaturan->footer_text(),
			'footer_text_right' => $this->M_pengaturan->footer_text_right(),
		);
		
		$this->load->view('admin/partials/header', $pengaturan);
		$this->load->view('admin/pengguna/index', $data);
		$this->load->view('admin/partials/footer');
	}

	// admin > pengguna > terhapus
	public function pengguna_terhapus()
	{
		// $data['pengguna'] = $this->M_user->baca_pengguna();
		
		$this->db->order_by('id', 'ASC')->where('hapus', '1');
		$data['pengguna'] = $this->M_user->baca_pengguna('user')->result_array();
		
		$pengaturan = array (
			'judul_situs' => $this->M_pengaturan->judul_situs(),
			'footer_text' => $this->M_pengaturan->footer_text(),
			'footer_text_right' => $this->M_pengaturan->footer_text_right(),
		);
		
		$this->load->view('admin/partials/header', $pengaturan);
		$this->load->view('admin/pengguna/index-terhapus', $data);
		$this->load->view('admin/partials/footer');
	}

	// admin > pengguna > tambah
	public function penggunatambah()
	{
		$data['kode'] = $this->M_wajibpajak->kode();
		$data['levels'] = $this->M_user->baca_role();
		
		$pengaturan = array (
			'judul_situs' => $this->M_pengaturan->judul_situs(),
			'footer_text' => $this->M_pengaturan->footer_text(),
			'footer_text_right' => $this->M_pengaturan->footer_text_right(),
		);
		
		$this->load->view('admin/partials/header', $pengaturan);
		$this->load->view('admin/pengguna/tambah', $data);
		$this->load->view('admin/partials/footer');
	}

	// admin > pengguna > ubah
	public function penggunaubah($id)
	{
		
		$data['pengguna'] = $this->M_user->detail($id);
		$data['levels'] = $this->M_user->baca_role();
		
		$pengaturan = array (
			'judul_situs' => $this->M_pengaturan->judul_situs(),
			'footer_text' => $this->M_pengaturan->footer_text(),
			'footer_text_right' => $this->M_pengaturan->footer_text_right(),
		);
		
		$this->load->view('admin/partials/header', $pengaturan);
		$this->load->view('admin/pengguna/ubah', $data);
		$this->load->view('admin/partials/footer');
	}

	// admin > pengguna > ubah > foto
	public function penggunaubahfoto($id)
	{
		
		$data['pengguna'] = $this->M_user->detail($id);
		$data['levels'] = $this->M_user->baca_role();
		
		$pengaturan = array (
			'judul_situs' => $this->M_pengaturan->judul_situs(),
			'footer_text' => $this->M_pengaturan->footer_text(),
			'footer_text_right' => $this->M_pengaturan->footer_text_right(),
		);
		
		$this->load->view('admin/partials/header', $pengaturan);
		$this->load->view('admin/pengguna/ubah-foto', $data);
		$this->load->view('admin/partials/footer');
	}

	// UBAH FOTO (admin/pengguna/ubah-nama-pengguna.php)
	public function penggunaubahnamapengguna($id)
	{
		
		$data['pengguna'] = $this->M_user->detail($id);
		$data['levels'] = $this->M_user->baca_role();
		
		$pengaturan = array (
			'judul_situs' => $this->M_pengaturan->judul_situs(),
			'footer_text' => $this->M_pengaturan->footer_text(),
			'footer_text_right' => $this->M_pengaturan->footer_text_right(),
		);
		
		$this->load->view('admin/partials/header', $pengaturan);
		$this->load->view('admin/pengguna/ubah-nama-pengguna', $data);
		$this->load->view('admin/partials/footer');
	}

	// UBAH FOTO (admin/pengguna/ubah-kata-sandi.php)
	public function penggunaubahkatasandi($id)
	{
		
		$data['pengguna'] = $this->M_user->detail($id);
		$data['levels'] = $this->M_user->baca_role();
		
		$pengaturan = array (
			'judul_situs' => $this->M_pengaturan->judul_situs(),
			'footer_text' => $this->M_pengaturan->footer_text(),
			'footer_text_right' => $this->M_pengaturan->footer_text_right(),
		);
		
		$this->load->view('admin/partials/header', $pengaturan);
		$this->load->view('admin/pengguna/ubah-kata-sandi', $data);
		$this->load->view('admin/partials/footer');
	}

	// DETAIL (admin/pengguna/detail.php)
	public function penggunadetail($id)
	{
		$data['pengguna'] = $this->M_user->detail($id);
		$data['levels'] = $this->M_user->baca_role();
		
		$pengaturan = array (
			'judul_situs' => $this->M_pengaturan->judul_situs(),
			'footer_text' => $this->M_pengaturan->footer_text(),
			'footer_text_right' => $this->M_pengaturan->footer_text_right(),
		);
		
		$this->load->view('admin/partials/header', $pengaturan);
		$this->load->view('admin/pengguna/detail', $data);
		$this->load->view('admin/partials/footer');
	}

	// HAPUS (admin/pengguna/hapus.php)
	public function penggunahapus($id)
	{		
		$data['user'] = $this->M_user->detail($id);
		
		$pengaturan = array (
			'judul_situs' => $this->M_pengaturan->judul_situs(),
			'footer_text' => $this->M_pengaturan->footer_text(),
			'footer_text_right' => $this->M_pengaturan->footer_text_right(),
		);
		
		$this->load->view('admin/partials/header', $pengaturan);
		$this->load->view('admin/pengguna/hapus', $data);
		$this->load->view('admin/partials/footer');

	}







	/**
	 * ==========================================================
	 * PENGATURAN
	 * ==========================================================
	*/

	// Informasi situs
	public function informasisitus()
	{
		$data['pengaturan'] = $this->M_pengaturan->detail();
		
		$pengaturan = array (
			'judul_situs' => $this->M_pengaturan->judul_situs(),
			'footer_text' => $this->M_pengaturan->footer_text(),
			'footer_text_right' => $this->M_pengaturan->footer_text_right(),
		);
		
		$this->load->view('admin/partials/header', $pengaturan);
		$this->load->view('admin/pengaturan/informasisitus', $data);
		$this->load->view('admin/partials/footer');
	}

	// Logo
	public function logo()
	{
		$data['pengaturan'] = $this->M_pengaturan->detail();
		
		$pengaturan = array (
			'judul_situs' => $this->M_pengaturan->judul_situs(),
			'footer_text' => $this->M_pengaturan->footer_text(),
			'footer_text_right' => $this->M_pengaturan->footer_text_right(),
		);
		
		$this->load->view('admin/partials/header', $pengaturan);
		$this->load->view('admin/pengaturan/logo', $data);
		$this->load->view('admin/partials/footer');
	}

	// Tampilan
	public function tampilan()
	{
		
		$pengaturan = array (
			'judul_situs' => $this->M_pengaturan->judul_situs(),
			'footer_text' => $this->M_pengaturan->footer_text(),
			'footer_text_right' => $this->M_pengaturan->footer_text_right(),
		);
		
		$this->load->view('admin/partials/header', $pengaturan);
		$this->load->view('admin/pengaturan/tampilan');
		$this->load->view('admin/partials/footer');
	}

	// Halaman depan
	public function halamandepan()
	{
		
		$pengaturan = array (
			'judul_situs' => $this->M_pengaturan->judul_situs(),
			'footer_text' => $this->M_pengaturan->footer_text(),
			'footer_text_right' => $this->M_pengaturan->footer_text_right(),
		);
		
		$this->load->view('admin/partials/header', $pengaturan);
		$this->load->view('admin/pengaturan/halamandepan');
		$this->load->view('admin/partials/footer');
	}
}
