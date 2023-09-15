<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Wajibpajak extends CI_Controller {
    
	public function __construct()
	{
		parent::__construct();
		$this->load->model('M_pengaturan');
		$this->load->model('M_opsi');
		$this->load->model('M_wajibpajak');
		$this->load->model('M_tagihan');
		$this->load->model('M_tagihan');

		if ($this->session->userdata('status') != "telah_login") {
			redirect(base_url("wajibpajak/masuk"));
		}

		is_logged_in_wajibpajak();
		$this->load->helper('rupiah');
		$this->load->helper('tanpa_rupiah');
		$this->load->helper('volume_air');
	}

	

	// KELUAR (admin/keluar)
	public function keluar()
	{
		
		$this->session->sess_destroy();
		redirect('wajibpajak/masuk');
	}


	/**
	 * ==========================================================
	 * WAJIB PAJAK > DASBOR
	 * ==========================================================
	*/



	public function index()
	{
		$this->dasbor();
	}

	

	// DASBOR
	public function dasbor()
	{		
		$data = array (
			// dasbor > info
			'dasbor_info_harga_baku' => $this->M_opsi->dasbor_info_harga_baku(),
			'dasbor_info_persentasi_pabt' => $this->M_opsi->dasbor_info_persentasi_pabt(),
			'dasbor_info_persentasi_sda' => $this->M_opsi->dasbor_info_persentasi_sda(),
			'dasbor_info_persentasi_kompensasi' => $this->M_opsi->dasbor_info_persentasi_kompensasi(),
		);
		
		$pengaturan = array (
			'judul_situs' => $this->M_pengaturan->judul_situs(),
			'footer_text' => $this->M_pengaturan->footer_text(),
			'footer_text_right' => $this->M_pengaturan->footer_text_right(),
		);
		
		$this->load->view('wajibpajak/partials/header', $pengaturan);
		$this->load->view('wajibpajak/dasbor', $data);
		$this->load->view('partials/footer');
	}
















	/**
	 * ==========================================================
	 * WAJIB PAJAK > PROFIL
	 * ==========================================================
	*/


	// halaman profil
	public function profil()
	{
		$data = array (
			// dasbor > info
			'dasbor_info_harga_baku' => $this->M_opsi->dasbor_info_harga_baku(),
			'dasbor_info_persentasi_pabt' => $this->M_opsi->dasbor_info_persentasi_pabt(),
			'dasbor_info_persentasi_sda' => $this->M_opsi->dasbor_info_persentasi_sda(),
			'dasbor_info_persentasi_kompensasi' => $this->M_opsi->dasbor_info_persentasi_kompensasi(),

			'user' => $this->M_wajibpajak->detail_profil(),

		);
		
		$pengaturan = array (
			'judul_situs' => $this->M_pengaturan->judul_situs(),
			'footer_text' => $this->M_pengaturan->footer_text(),
			'footer_text_right' => $this->M_pengaturan->footer_text_right(),
		);
		
		$this->load->view('wajibpajak/partials/header', $pengaturan);
		$this->load->view('wajibpajak/profil/index', $data);
		$this->load->view('partials/footer');
	}

	// halaman ubah profil 
	public function profil_ubah()
	{
		$data = array (
			// dasbor > info
			'dasbor_info_harga_baku' => $this->M_opsi->dasbor_info_harga_baku(),
			'dasbor_info_persentasi_pabt' => $this->M_opsi->dasbor_info_persentasi_pabt(),
			'dasbor_info_persentasi_sda' => $this->M_opsi->dasbor_info_persentasi_sda(),
			'dasbor_info_persentasi_kompensasi' => $this->M_opsi->dasbor_info_persentasi_kompensasi(),

			'user' => $this->M_wajibpajak->detail_profil(),
		);
		
		$pengaturan = array (
			'judul_situs' => $this->M_pengaturan->judul_situs(),
			'footer_text' => $this->M_pengaturan->footer_text(),
			'footer_text_right' => $this->M_pengaturan->footer_text_right(),
		);
		
		$this->load->view('wajibpajak/partials/header', $pengaturan);
		$this->load->view('wajibpajak/profil/ubah', $data);
		$this->load->view('partials/footer');
	}

	// proses ubah profil 
	public function profil_proses_ubah()
	{
		// buat variabel
		
		$id_wp = $this->input->post('id_wp');

		$pemilik_nama = $this->input->post('pemilik_nama');
		$pemilik_email = $this->input->post('pemilik_email');
		$pemilik_kata_sandi = password_hash($this->input->post('pemilik_kata_sandi'), PASSWORD_DEFAULT);
		$pemilik_telp = $this->input->post('pemilik_telp');
		$pemilik_alamat = $this->input->post('pemilik_alamat');

			// masukan variabel ke dalam data array
			$data = array(
				'id_wp' => $id_wp,

				'pemilik_nama' => $pemilik_nama,
				'pemilik_email' => $pemilik_email,
				'pemilik_kata_sandi' => $pemilik_kata_sandi,
				'pemilik_telp' => $pemilik_telp,
				'pemilik_alamat' => $pemilik_alamat,
			);

			// mengirim data ke database melalui fungsi pada model
			$this->M_wajibpajak->ubah_profil($data, $id_wp);
			
			// tanda sukses
			$this->session->set_flashdata('message', '
				<div class="alert alert-success alert-dismissible fade show" role="alert">
					<strong>Berhasil!</strong> Data telah diubah.
					<button type="button" class="close" data-dismiss="alert" aria-label="Close">
					<span aria-hidden="true">&times;</span>
					</button>
				</div>
			');

			// mengalihkan halaman
			redirect('wajibpajak/profil');
	}

	// halaman ubah foto 
	public function profil_ubah_foto()
	{
		$data = array (
			// dasbor > info
			'dasbor_info_harga_baku' => $this->M_opsi->dasbor_info_harga_baku(),
			'dasbor_info_persentasi_pabt' => $this->M_opsi->dasbor_info_persentasi_pabt(),
			'dasbor_info_persentasi_sda' => $this->M_opsi->dasbor_info_persentasi_sda(),
			'dasbor_info_persentasi_kompensasi' => $this->M_opsi->dasbor_info_persentasi_kompensasi(),

			'user' => $this->M_wajibpajak->detail_profil(),
		);
		
		$pengaturan = array (
			'judul_situs' => $this->M_pengaturan->judul_situs(),
			'footer_text' => $this->M_pengaturan->footer_text(),
			'footer_text_right' => $this->M_pengaturan->footer_text_right(),
		);
		
		$this->load->view('wajibpajak/partials/header', $pengaturan);
		$this->load->view('wajibpajak/profil/ubah-foto', $data);
		$this->load->view('partials/footer');
	}

	// proses ubah foto 
	public function profil_proses_ubah_foto()
	{
		//
		
		$config['upload_path'] = './assets/images/pemilik_foto/';
		$config['allowed_types'] = 'jpg|png|jpeg|gif';
		$config['max_size'] = '2048';  //2MB max
		$config['max_width'] = '4480'; // pixel
		$config['max_height'] = '4480'; // pixel
		$config['file_name'] = 'wajibpajak-'.time();

		$this->load->library('upload', $config);

		if (!$this->upload->do_upload('foto')) {

			$id_wp = $this->input->post('id_wp');	
		
			// tanda peringatan
			$this->session->set_flashdata('message', '
			<div class="alert alert-warning alert-dismissible fade show" role="alert">
				<strong>Perhatian!</strong> Foto belum dipilih.
				<button type="button" class="close" data-dismiss="alert" aria-label="Close">
				<span aria-hidden="true">&times;</span>
				</button>
			</div>
			');

			redirect('wajibpajak/profil/ubah/foto');

		} else {

			$role = $this->input->post('role');	

			$foto = $this->upload->data();
			$id_wp = $this->input->post('id_wp');	

			$data = array(
				'id_wp' => $id_wp,
				'pemilik_foto' => $foto['file_name'],
			);

		}
		
		$this->M_wajibpajak->ubah_foto($data, $id_wp);
		
		// tanda sukses
		$this->session->set_flashdata('message', '
		<div class="alert alert-success alert-dismissible fade show" role="alert">
			<strong>Berhasil!</strong> Foto telah diubah.
			<button type="button" class="close" data-dismiss="alert" aria-label="Close">
			<span aria-hidden="true">&times;</span>
			</button>
		</div>
		');

		redirect('wajibpajak/profil/ubah/foto/');

	}




















	

	/**
	 * ==========================================================
	 * WAJIB PAJAK > PROFIL USAHA
	 * ==========================================================
	*/


	// halaman profil
	public function profil_usaha()
	{
		$data = array (
			// dasbor > info
			'dasbor_info_harga_baku' => $this->M_opsi->dasbor_info_harga_baku(),
			'dasbor_info_persentasi_pabt' => $this->M_opsi->dasbor_info_persentasi_pabt(),
			'dasbor_info_persentasi_sda' => $this->M_opsi->dasbor_info_persentasi_sda(),
			'dasbor_info_persentasi_kompensasi' => $this->M_opsi->dasbor_info_persentasi_kompensasi(),

			'user' => $this->M_wajibpajak->detail_profil(),
		);
		
		$pengaturan = array (
			'judul_situs' => $this->M_pengaturan->judul_situs(),
			'footer_text' => $this->M_pengaturan->footer_text(),
			'footer_text_right' => $this->M_pengaturan->footer_text_right(),
		);
		
		$this->load->view('wajibpajak/partials/header', $pengaturan);
		$this->load->view('wajibpajak/profil-usaha/index', $data);
		$this->load->view('partials/footer');
	}

	// halaman ubah profil 
	public function profil_usaha_ubah()
	{
		$data = array (
			'user' => $this->M_wajibpajak->detail_profil(),
			'kategori_usaha' => $this->M_wajibpajak->baca('pajak_kk')->result_array(),
		);
		
		$pengaturan = array (
			'judul_situs' => $this->M_pengaturan->judul_situs(),
			'footer_text' => $this->M_pengaturan->footer_text(),
			'footer_text_right' => $this->M_pengaturan->footer_text_right(),
		);

		$this->load->view('wajibpajak/partials/header', $pengaturan);
		$this->load->view('wajibpajak/profil-usaha/ubah', $data);
		$this->load->view('partials/footer');
	}

	// proses ubah profil 
	public function profil_usaha_proses_ubah()
	{
		// buat variabel
		
		$id_wp = $this->input->post('id_wp');	

		// profil usaha
		$usaha_nama = $this->input->post('usaha_nama');
		$usaha_email = $this->input->post('usaha_email');
		$usaha_telp = $this->input->post('usaha_telp');
		$usaha_alamat = $this->input->post('usaha_alamat');
		$usaha_kategori = $this->input->post('usaha_kategori');

		$usaha_luas_bangunan = $this->input->post('usaha_luas_bangunan');
		$usaha_luas_lahan = $this->input->post('usaha_luas_lahan');
		$usaha_izin = $this->input->post('usaha_izin');
		$usaha_dokumen = $this->input->post('usaha_dokumen');
		$usaha_kos_jml_kmr = $this->input->post('usaha_kos_jml_kmr');
		$usaha_kos_jml_penghuni = $this->input->post('usaha_kos_jml_penghuni');
		$usaha_rm_jml_kursi = $this->input->post('usaha_rm_jml_kursi');

			// masukan variabel ke dalam data array
			$data = array(
				'id_wp' => $id_wp,
				
				// profil usaha
				'usaha_nama' => $usaha_nama,
				'usaha_email' => $usaha_email,
				'usaha_telp' => $usaha_telp,
				'usaha_alamat' => $usaha_alamat,
				'usaha_kategori' => $usaha_kategori,
	
				'usaha_luas_bangunan' => $usaha_luas_bangunan,
				'usaha_luas_lahan' => $usaha_luas_lahan,
				'usaha_izin' => $usaha_izin,
				'usaha_dokumen' => $usaha_dokumen,
				'usaha_kos_jml_kmr' => $usaha_kos_jml_kmr,
				'usaha_kos_jml_penghuni' => $usaha_kos_jml_penghuni,
				'usaha_rm_jml_kursi' => $usaha_rm_jml_kursi,
			);

			// mengirim data ke database melalui fungsi pada model
			$this->M_wajibpajak->ubah_profil($data, $id_wp);
			
			// tanda sukses
			$this->session->set_flashdata('message', '
				<div class="alert alert-success alert-dismissible fade show" role="alert">
					<strong>Berhasil!</strong> Data telah diubah.
					<button type="button" class="close" data-dismiss="alert" aria-label="Close">
					<span aria-hidden="true">&times;</span>
					</button>
				</div>
			');

			// mengalihkan halaman
			redirect('wajibpajak/profil-usaha');
	}

	// halaman ubah logo 
	public function profil_usaha_ubah_logo()
	{
		$data = array (
			'user' => $this->M_wajibpajak->detail_profil(),
		);
		
		$pengaturan = array (
			'judul_situs' => $this->M_pengaturan->judul_situs(),
			'footer_text' => $this->M_pengaturan->footer_text(),
			'footer_text_right' => $this->M_pengaturan->footer_text_right(),
		);
		
		$this->load->view('wajibpajak/partials/header', $pengaturan);
		$this->load->view('wajibpajak/profil-usaha/ubah-logo', $data);
		$this->load->view('partials/footer');
	}

	// proses ubah logo 
	public function profil_usaha_proses_ubah_logo()
	{
		//
		
		$config['upload_path'] = './assets/images/usaha_logo/';
		$config['allowed_types'] = 'jpg|png|jpeg|gif';
		$config['max_size'] = '2048';  //2MB max
		$config['max_width'] = '4480'; // pixel
		$config['max_height'] = '4480'; // pixel
		$config['file_name'] = $this->input->post('id_wp').'-usaha-logo-'.time();

		$this->load->library('upload', $config);

		if (!$this->upload->do_upload('foto')) {

			$id_wp = $this->input->post('id_wp');	
		
			// tanda peringatan
			$this->session->set_flashdata('message', '
			<div class="alert alert-warning alert-dismissible fade show" role="alert">
				<strong>Perhatian!</strong> Logo belum dipilih.
				<button type="button" class="close" data-dismiss="alert" aria-label="Close">
				<span aria-hidden="true">&times;</span>
				</button>
			</div>
			');

			redirect('wajibpajak/profil-usaha/ubah/logo');

		} else {

			$role = $this->input->post('role');	

			$foto = $this->upload->data();
			$id_wp = $this->input->post('id_wp');	

			$data = array(
				'id_wp' => $id_wp,
				'usaha_logo' => $foto['file_name'],
			);

		}
		
		$this->M_wajibpajak->ubah_foto($data, $id_wp);
		
		// tanda sukses
		$this->session->set_flashdata('message', '
		<div class="alert alert-success alert-dismissible fade show" role="alert">
			<strong>Berhasil!</strong> Logo telah diubah.
			<button type="button" class="close" data-dismiss="alert" aria-label="Close">
			<span aria-hidden="true">&times;</span>
			</button>
		</div>
		');

		redirect('wajibpajak/profil-usaha/ubah/logo/');

	}











	/**
	 * ==========================================================
	 * WAJIB PAJAK > TAGIHAN
	 * ==========================================================
	*/


	// TAGIHAN

	public function wajibpajak_tagihan_new()
	{
		if(isset($_GET['t']) && $_GET['t'] != '') 
		{
			$data = array (
				'tagihans' => $this->M_tagihan->wajib_pajak_baca_tagihan('tagihan')->result_array(),
			);
			
			$pengaturan = array (
				'judul_situs' => $this->M_pengaturan->judul_situs(),
				'footer_text' => $this->M_pengaturan->footer_text(),
				'footer_text_right' => $this->M_pengaturan->footer_text_right(),
			);
			
			$this->load->view('wajibpajak/partials/header', $pengaturan);
			$this->load->view('wajibpajak/tagihan/index', $data);
			$this->load->view('partials/footer');

		} else {
			redirect(base_url('wajibpajak/tagihan?t=').date('Y'));
		}
	}





	
	// info tagihan
	public function tagihan_info($id)
	{
		$data = array (
			'wajib_pajak' => $this->M_tagihan->baca_detail_wajib_pajak_info_tagihan('wajib_pajak')->row_array(),
			'bulans' => $this->M_wajibpajak->baca('bulan')->result_array(),
			'tagihan' => $this->M_tagihan->baca_info_tagihan('tagihan', $id)->row_array(),
			'jenis_usaha' => $this->M_tagihan->baca('pajak_kk')->result_array(),
		);
		
		$pengaturan = array (
			'judul_situs' => $this->M_pengaturan->judul_situs(),
			'footer_text' => $this->M_pengaturan->footer_text(),
			'footer_text_right' => $this->M_pengaturan->footer_text_right(),
		);

		$this->load->view('wajibpajak/partials/header', $pengaturan);
		$this->load->view('wajibpajak/tagihan/tagihan-info', $data);
		$this->load->view('partials/footer');

	}


	
	// cetak tagihan
	public function tagihan_cetak($id)
	{
		$data['wajib_pajak'] = $this->M_tagihan->baca_detail_wajib_pajak_info_tagihan('wajib_pajak')->row_array(); // baca data wajib pajak saat buka detail tagihan bulan
		$data['bulans'] = $this->M_wajibpajak->baca('bulan')->result_array();
		$data['tagihan'] = $this->M_tagihan->baca_info_tagihan('tagihan', $id)->row_array(); // baca semua data tagihan
		$data['jenis_usaha'] = $this->M_tagihan->baca('pajak_kk')->result_array();

		$nama = $this->session->nama_lengkap;
		$judul=  strtolower(str_replace(" ", "-", $nama));
		$tanggal = strtolower($this->tgl_indo(date('Y-m-d')));
		$mpdf = new \Mpdf\Mpdf(['mode' => 'utf-8', 'format' => 'A5-L','margin_top' => 9,
		'margin_left' => 3,
		'margin_right' => 3,
		'mirrorMargins' => true]);
		$pdf = $this->load->view('wajibpajak/tagihan/tagihan-cetak_pdf', $data,TRUE);
		$mpdf->WriteHTML($pdf);
		$mpdf->Output('tagihan-wajib-pajak-'.$judul. '-('.$tanggal.')'.'.pdf',"I");

	}

	public function tgl_indo($tanggal){
		$bulan = array (
			1 =>   'Januari',
			'Februari',
			'Maret',
			'April',
			'Mei',
			'Juni',
			'Juli',
			'Agustus',
			'September',
			'Oktober',
			'November',
			'Desember'
		);
		$pecahkan = explode('-', $tanggal);
		// variabel pecahkan 0 = tanggal
		// variabel pecahkan 1 = bulan
		// variabel pecahkan 2 = tahun
		return $pecahkan[2] . '-' . $bulan[ (int)$pecahkan[1] ] . '-' . $pecahkan[0];
	}




	// TAGIHAN

	public function unggah_bukti_pembayaran()
	{
		$data = array (
			'bukti_pembayaran' => $this->M_tagihan->baca_detail_tagihan('tagihan')->row_array(),
		);
		
		$pengaturan = array (
			'judul_situs' => $this->M_pengaturan->judul_situs(),
			'footer_text' => $this->M_pengaturan->footer_text(),
			'footer_text_right' => $this->M_pengaturan->footer_text_right(),
		);
		
		$this->load->view('wajibpajak/partials/header', $pengaturan);
		$this->load->view('wajibpajak/tagihan/unggah-bukti-pembayaran', $data);
		$this->load->view('partials/footer');
	}

	public function proses_unggah_bukti_pembayaran()
	{
		$config['upload_path'] = './assets/images/bukti_pembayaran/';
		$config['allowed_types'] = 'jpg|png|jpeg|gif';
		$config['max_size'] = '2048';  //2MB max
		$config['max_width'] = '4480'; // pixel
		$config['max_height'] = '4480'; // pixel
		$config['file_name'] = 'bukti-pembayaran-'.time();

		$this->load->library('upload', $config);

		if (!$this->upload->do_upload('foto')) {
		
			// tanda peringatan
			$this->session->set_flashdata('message', '
			<div class="alert alert-warning alert-dismissible fade show" role="alert">
				<strong>Perhatian!</strong> Foto belum dipilih.
				<button type="button" class="close" data-dismiss="alert" aria-label="Close">
				<span aria-hidden="true">&times;</span>
				</button>
			</div>
			');

			redirect('wajibpajak/tagihan/unggah-bukti-pembayaran?id='. $id_tagihan);

		} else {
			
			$id_tagihan = $this->input->post('id_tagihan');	
			$foto = $this->upload->data();
		
			$data = array(
				'bukti_pembayaran' => $foto['file_name'],
			);

		}
		
		$this->M_tagihan->unggah_bukti_pembayaran($data, $id_tagihan);
		
		// tanda sukses
		$this->session->set_flashdata('message', '
		<div class="alert alert-success alert-dismissible fade show" role="alert">
			<strong>Berhasil!</strong> Foto telah diubah.
			<button type="button" class="close" data-dismiss="alert" aria-label="Close">
			<span aria-hidden="true">&times;</span>
			</button>
		</div>
		');

		redirect('wajibpajak/tagihan/unggah-bukti-pembayaran?id='. $id_tagihan);

	}


	


	public function proses_hapus_bukti_pembayaran()
	{

		$t = $this->input->post('t');	
		$id_tagihan = $this->input->post('id_tagihan');	

		
		$data = array(
			'bukti_pembayaran' => '',
		);
		
		$this->M_tagihan->unggah_bukti_pembayaran($data, $id_tagihan);
		
		// tanda sukses
		$this->session->set_flashdata('message', '
		<div class="alert alert-success alert-dismissible fade show" role="alert">
			<strong>Berhasil!</strong> Foto telah diubah.
			<button type="button" class="close" data-dismiss="alert" aria-label="Close">
			<span aria-hidden="true">&times;</span>
			</button>
		</div>
		');

		redirect('wajibpajak/tagihan?t='. $t);
		
	}






	/*
	| ===========================================================
	| WAJIB PAJAK > TENTANG PAJAK
	| ===========================================================
	|*/


	// wajib pajak > tentang pajak > dasar pengenaan pajak
	public function dasarpengenaanpajak()
	{

		$data = array (
			'pajak_dpp' => $this->M_opsi->tentang_pajak_persentasi_dpp(),
		);
		
		$pengaturan = array (
			'judul_situs' => $this->M_pengaturan->judul_situs(),
			'footer_text' => $this->M_pengaturan->footer_text(),
			'footer_text_right' => $this->M_pengaturan->footer_text_right(),
		);

		$this->load->view('wajibpajak/partials/header', $pengaturan);
		$this->load->view('pelaksana/tentangpajak/dasarpengenaanpajak', $data);
		$this->load->view('partials/footer');
	}

	// wajib pajak > tentang pajak > nilai perolehan air (npa)
	public function nilaiperolehanair()
	{

		$data = array (
			'pajak_npa' => $this->M_opsi->tentang_pajak_persentasi_npa(),
		);
		
		$pengaturan = array (
			'judul_situs' => $this->M_pengaturan->judul_situs(),
			'footer_text' => $this->M_pengaturan->footer_text(),
			'footer_text_right' => $this->M_pengaturan->footer_text_right(),
		);

		$this->load->view('wajibpajak/partials/header', $pengaturan);
		$this->load->view('pelaksana/tentangpajak/nilaiperolehanair', $data);
		$this->load->view('partials/footer');
	}

	// wajib pajak > tentang pajak > penentuan npa
	public function penentuannpa()
	{	
		$data = array (
			'pajak_ksda' => $this->M_opsi->tentang_pajak_persentasi_ksda(),
			'pajak_kk' => $this->M_opsi->tentang_pajak_persentasi_kk(),
			'pajak_hda' => $this->M_opsi->tentang_pajak_persentasi_hda(),
			'pajak_pabt' => $this->M_opsi->tentang_pajak_persentasi_pabt(),
		);
		
		$pengaturan = array (
			'judul_situs' => $this->M_pengaturan->judul_situs(),
			'footer_text' => $this->M_pengaturan->footer_text(),
			'footer_text_right' => $this->M_pengaturan->footer_text_right(),
		);
		
		$this->load->view('wajibpajak/partials/header', $pengaturan);
		$this->load->view('pelaksana/tentangpajak/penentuannpa', $data);
		$this->load->view('partials/footer');
	}


}
