<?php
defined('BASEPATH') or exit('No direct script access allowed');

use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;

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
		$this->load->model('M_distrik');
		$this->load->model('M_berita');
		$this->load->model('M_kelurahan');
		$this->load->model('M_pabt');

		if ($this->session->userdata('status') != "telah_login") {
			redirect(base_url("admin/masuk"));
		}

		// helper login's function
		is_logged_in();

		// helper membuat rupiah (Rp.)
		$this->load->helper('rupiah');

		// helper membuat titik pada angka
		$this->load->helper('volume_air');

		$this->load->helper('tanpa_rupiah');

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

			// total wajibpajak
			'totalWajibPajak' => $this->M_wajibpajak->totalWajibPajak(),
			'totalNonNiaga' => $this->M_wajibpajak->totalNonNiaga(),
			'totalNiagaKecil' => $this->M_wajibpajak->totalNiagaKecil(),
			'totalIndustriKecil' => $this->M_wajibpajak->totalIndustriKecil(),
			'totalNiagaBesar' => $this->M_wajibpajak->totalNiagaBesar(),
			'totalIndustriBesar' => $this->M_wajibpajak->totalIndustriBesar(),

			// total tagihan
			'totalTagihan' => $this->M_tagihan->totalTagihan(),
			'totalTagihanNonNiaga' => $this->M_tagihan->totalTagihanNonNiaga(),
			'totalTagihanNiagaKecil' => $this->M_tagihan->totalTagihanNiagaKecil(),
			'totalTagihanIndustriKecil' => $this->M_tagihan->totalTagihanIndustriKecil(),
			'totalTagihanNiagaBesar' => $this->M_tagihan->totalTagihanNiagaBesar(),
			'totalTagihanIndustriBesar' => $this->M_tagihan->totalTagihanIndustriBesar(),

			// Total Distrik
			'totalAbepura' => $this->M_distrik->totalDistrikAbepura(),
			'totalHeram' => $this->M_distrik->totalDistrikHeram(),
			'totalJprutara' => $this->M_distrik->totalDistrikJprutara(),
			'totalJprselatan' => $this->M_distrik->totalDistrikJprselatan(),
			'totalMuaratami' => $this->M_distrik->totalDistrikMuaratami(),
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
		$data['wajib_pajak_distrik'] = $this->M_distrik->wajib_pajak_distrik();
		$data['wajib_pajak_kelurahan'] = $this->M_kelurahan->wajib_pajak_kelurahan();
		$data['tahun'] = date('Y');
		$data['bulan'] = date('m');

	

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
			'wajib_pajak_kategori_usaha' => $this->M_opsi->wajib_pajak_kategori_usaha(),
			'wajib_pajak_distrik' => $this->M_distrik->wajib_pajak_distrik(),
			'wajib_pajak_kelurahan' => $this->M_kelurahan->wajib_pajak_kelurahan()

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

	// admin > wajib pajak > PDF
	public function wajib_pajak_pdf($id)
	{
		$wajib_pajak_kategori_usaha = $this->M_opsi->wajib_pajak_kategori_usaha();
		foreach($wajib_pajak_kategori_usaha as $kategori)
		{
			if($kategori['id'] == $id)
			{
				$judul_kategori = $kategori['kriteria'];
			}
		}
		$judul=  strtolower(str_replace(" ", "-", $judul_kategori));
		$judul_dua =  $judul_kategori;
		$data = array (
			'wajib_pajak_sortir' => $this->M_opsi->wajib_pajak_sortir($id),
			'wajib_pajak_kategori_usaha' => $this->M_opsi->wajib_pajak_kategori_usaha(),
			'id' => $id,
			'judul' => $judul_kategori
		);
		$mpdf = new \Mpdf\Mpdf(['mode' => 'utf-8', 'format' => 'A4-L','margin_bottom' => 18,'margin_top' => 10]);
		$pdf = $this->load->view('admin/wajibpajak/pdf',$data, TRUE);
		
		// $mpdf->setFooter($judul_kategori. ' Halaman - {PAGENO}');
		$mpdf->SetHTMLFooter('
				<table width="100%" height="1" style="border:0px; font-size:12px">
					<tr>
					<hr>
						<td width="33%"> <i>sipakot.jayapurakota.go.id</i></td>
						<td width="33%" align="center"></td>
						<td width="33%" style="text-align: right;"> Wajib Pajak '.$judul_dua.'<b>  Halaman - {PAGENO}</b></td>
					</tr>
				</table>
		');
		$mpdf->WriteHTML($pdf);
		$mpdf->Output('sipakot-wajib-pajak-'.$judul.'.pdf',"I");
	}

	// admin > wajib pajak distrik
	public function wajib_pajak_sortir_distrik($id)
	{
		$data = array (
			'wajib_pajak_sortir_distrik' => $this->M_distrik->wajib_pajak_sortir_distrik($id),
			'wajib_pajak_kategori_usaha' => $this->M_opsi->wajib_pajak_kategori_usaha(),
			'wajib_pajak_distrik' => $this->M_distrik->wajib_pajak_distrik(),
			'wajib_pajak_kelurahan' => $this->M_kelurahan->wajib_pajak_kelurahan()
			
		);
			
			
		$pengaturan = array (
				'judul_situs' => $this->M_pengaturan->judul_situs(),
				'footer_text' => $this->M_pengaturan->footer_text(),
				'footer_text_right' => $this->M_pengaturan->footer_text_right(),
			);
			
			
			$this->load->view('admin/partials/header', $pengaturan);
			$this->load->view('admin/wajibpajak/index-sortir-distrik', $data);
			$this->load->view('admin/partials/footer');
		}

	public function wajib_pajak_pdf_distrik($id)
	{
		
		$wajib_pajak_distrik = $this->M_distrik->wajib_pajak_distrik();

		foreach($wajib_pajak_distrik as $distrik)
		{
			if($distrik['id_distrik'] == $id)
			{
				$judul_distirk = $distrik['nama_distrik'];
			}
		}
		$judul=  strtolower(str_replace(" ", "-", $judul_distirk));
		$judul_dua =  $judul_distirk;
		$data = array (
			'wajib_pajak_sortir_distrik' => $this->M_distrik->wajib_pajak_sortir_distrik($id),
			'wajib_pajak_kategori_usaha' => $this->M_opsi->wajib_pajak_kategori_usaha(),
			'id' => $id,
			'judul' => $judul_distirk
		);
		$mpdf = new \Mpdf\Mpdf(['mode' => 'utf-8', 'format' => 'A4-L','margin_bottom' => 18,'margin_top' => 10]);
		if($_GET['pdf'] == 'noemail')
		{
			$pdf = $this->load->view('admin/wajibpajak/distrikpdf_noemail',$data, TRUE);
		}else{
			$pdf = $this->load->view('admin/wajibpajak/distrikpdf',$data, TRUE);
		}
		// $mpdf->setFooter($judul_dua. 'Halaman - {PAGENO}');
		// $mpdf->setFooter('sipakot.jayapurakota.go.id||Data Distrik '.$judul_dua.' Halaman - {PAGENO}');
		$mpdf->SetHTMLFooter('
				<table width="100%" height="1" style="border:0px; font-size:12px">
					<tr>
					<hr>
						<td width="33%"> <i>sipakot.jayapurakota.go.id</i></td>
						<td width="33%" align="center"></td>
						<td width="33%" style="text-align: right;"> Wajib Pajak Distrik '.$judul_dua.'<b>  Halaman - {PAGENO}</b></td>
					</tr>
				</table>
		');
		$mpdf->WriteHTML($pdf);
		$mpdf->Output('sipakot-wajib-pajak-distrik-'.$judul.'.pdf',"I");
	}


	// admin > wajib pajak distrik
	public function wajib_pajak_sortir_kelurahan()
	{
		
		$kelurahan =$_GET['kelurahan'];
		$distrik =$_GET['distrik'];
		$data = array (
			'wajib_pajak_sortir_kelurahan' => $this->M_kelurahan->wajib_pajak_sortir_kelurahan($kelurahan,$distrik),
			'wajib_pajak_kategori_usaha' => $this->M_opsi->wajib_pajak_kategori_usaha(),
			'wajib_pajak_distrik' => $this->M_distrik->wajib_pajak_distrik(),
			'wajib_pajak_kelurahan' => $this->M_kelurahan->wajib_pajak_kelurahan(),
			'kelurahan' =>$kelurahan,
			'distrik' =>$distrik,
		);
			
		$pengaturan = array (
				'judul_situs' => $this->M_pengaturan->judul_situs(),
				'footer_text' => $this->M_pengaturan->footer_text(),
				'footer_text_right' => $this->M_pengaturan->footer_text_right(),
			);
			
			
			$this->load->view('admin/partials/header', $pengaturan);
			$this->load->view('admin/wajibpajak/index-sortir-kelurahan', $data);
			$this->load->view('admin/partials/footer');
		}

	public function wajib_pajak_pdf_kelurahan()
	{
	
		$kelurahan =$_GET['kelurahan'];
		$distrik =$_GET['distrik'];
		$wajib_pajak_kelurahan = $this->M_kelurahan->wajib_pajak_kelurahan();
		$wajib_pajak_distrik = $this->M_distrik->wajib_pajak_distrik();

		foreach($wajib_pajak_kelurahan as $k)
		{
			if($k['id_kelurahan'] == $kelurahan)
			{
				$judul_kelurahan = $k['nama_kelurahan'];
			}
		}

		foreach($wajib_pajak_distrik as $k)
		{
			if($k['id_distrik'] == $distrik)
			{
				$judul_distrik = $k['nama_distrik'];
			}
		}
		$judul_kategori = 'Kelurahan '. $judul_kelurahan.' Distrik '.$judul_distrik;
		$judul=  strtolower(str_replace(" ", "_", $judul_kategori));
		$judul_dua =  $judul_kategori;
		$data = array (
			'wajib_pajak_sortir_kelurahan' => $this->M_kelurahan->wajib_pajak_sortir_kelurahan($kelurahan,$distrik),
			'wajib_pajak_kategori_usaha' => $this->M_opsi->wajib_pajak_kategori_usaha(),
			'judul' => $judul_kategori
		);
		$mpdf = new \Mpdf\Mpdf(['mode' => 'utf-8', 'format' => 'A4-L','margin_bottom' => 18,'margin_top' => 10]);
		if($_GET['pdf'] == 'noemail')
		{
		
			$pdf = $this->load->view('admin/wajibpajak/kelurahanpdf_noemail',$data, TRUE);
		}else{
			$pdf = $this->load->view('admin/wajibpajak/kelurahanpdf',$data, TRUE);
		}
		$mpdf->SetHTMLFooter('
				<table width="100%" height="1" style="border:0px; font-size:12px">
					<tr>
					<hr>
						<td width="33%"> <i>sipakot.jayapurakota.go.id</i></td>
						<td width="33%" align="center"></td>
						<td width="33%" style="text-align: right;"> Wajib Pajak Distrik '.$judul_dua.'<b>  Halaman - {PAGENO}</b></td>
					</tr>
				</table>
		');
		$mpdf->WriteHTML($pdf);
		$mpdf->Output('sipakot-wajib-pajak-distrik-'.$judul.'.pdf',"I");
	}

	// admin > wajib pajak > pabt
	public function wajib_pajak_pabt($id)
	{
		$data['wajib_pajak'] = $this->M_pabt->tampilkan_data('wajib_pajak')->result_array();
		$data['bulan'] = $this->M_wajibpajak->baca('bulan')->result_array();
		$data['tahun'] = $id;
		$data['wajib_pajak_distrik'] = $this->M_distrik->wajib_pajak_distrik();

		
		
		$pengaturan = array (
			'judul_situs' => $this->M_pengaturan->judul_situs(),
			'footer_text' => $this->M_pengaturan->footer_text(),
			'footer_text_right' => $this->M_pengaturan->footer_text_right(),
		);
		
		
		$this->load->view('admin/partials/header', $pengaturan);
		$this->load->view('admin/wajibpajak/pabt', $data);
		$this->load->view('admin/partials/footer');
	}

	// admin > wajib pajak > patb - distrik 
	public function wajib_pajak_pabt_distrik($id)
	{
		$distrik = $_GET['distrik'];
		$data['wajib_pajak'] = $this->M_distrik->wajib_pajak_sortir_distrik($distrik);
		$data['bulan'] = $this->M_wajibpajak->baca('bulan')->result_array();
		$data['tahun'] = $id;
		$data['distrik'] = $distrik;
		$data['wajib_pajak_distrik'] = $this->M_distrik->wajib_pajak_distrik();
		$pengaturan = array (
			'judul_situs' => $this->M_pengaturan->judul_situs(),
			'footer_text' => $this->M_pengaturan->footer_text(),
			'footer_text_right' => $this->M_pengaturan->footer_text_right(),
		);
		$this->load->view('admin/partials/header', $pengaturan);
		$this->load->view('admin/wajibpajak/pabt-distrik', $data);
		$this->load->view('admin/partials/footer');
	}

	// admin > wajib pajak > patb
	public function wajib_pajak_pabt_pertahun($id)
	{
		$data['wajib_pajak'] = $this->M_pabt->berdasarkan_wp($id)->result_array();
		$data['bulan'] = $this->M_wajibpajak->baca('bulan')->result_array();
		$data['tahun'] = $_GET['t'];
		$data['id'] = $id;
		$pengaturan = array (
			'judul_situs' => $this->M_pengaturan->judul_situs(),
			'footer_text' => $this->M_pengaturan->footer_text(),
			'footer_text_right' => $this->M_pengaturan->footer_text_right(),
		);
		$this->load->view('admin/partials/header', $pengaturan);
		$this->load->view('admin/wajibpajak/pabt-wp', $data);
		$this->load->view('admin/partials/footer');
	}

	// admin > wajib pajak > patb > pdf 
	public function wajib_pajak_pabt_pdf($id)
	{
		$data['wajib_pajak'] = $this->M_pabt->tampilkan_data('wajib_pajak')->result_array();
		$data['bulan'] = $this->M_wajibpajak->baca('bulan')->result_array();
		$data['judul'] = $id;
		$judul = $id;
		
		$mpdf = new \Mpdf\Mpdf(['mode' => 'utf-8', 'format' => 'A4-L','margin_bottom' => 30,'margin_top' => 10]);
		$pdf = $this->load->view('admin/wajibpajak/pabt-pdf',$data, TRUE);
		$mpdf->SetHTMLFooter('
				<table width="100%" height="1" style="border:0px; font-size:12px">
					<tr>
					<hr>
						<td width="33%"> <i>sipakot.jayapurakota.go.id</i></td>
						<td width="33%" align="center"></td>
						<td width="33%" style="text-align: right;"> PABT Wajib Pajak Tahun '.$judul.'<b>  Halaman - {PAGENO}</b></td>
					</tr>
				</table>
		');
		$mpdf->WriteHTML($pdf);
		$mpdf->Output('sipakot-wajib-pajak-pabt-tahun-'.$judul.'.pdf',"I");
	}



		// admin > wajin pajak > patb > perdistrik pdf 
		public function wajib_pajak_pabt_perdistrik_pdf($id)
		{
			$distrik = $_GET['distrik'];
			$data['wajib_pajak'] = $this->M_distrik->wajib_pajak_sortir_distrik($distrik);
			$data['bulan'] = $this->M_wajibpajak->baca('bulan')->result_array();
			$data['tahun'] = $id;
			$wajib_pajak_distrik = $this->M_distrik->wajib_pajak_distrik();
			foreach($wajib_pajak_distrik as $k)
			{
			if($k['id_distrik'] == $distrik)
			{
				$judul_distrik = $k['nama_distrik'];
			}
			}
			$data['distrik'] = $judul_distrik;
			$mpdf = new \Mpdf\Mpdf(['mode' => 'utf-8', 'format' => 'A4-L','margin_bottom' => 30,'margin_top' => 10]);
			$pdf = $this->load->view('admin/wajibpajak/pabt-perdistrik-pdf',$data, TRUE);
			$mpdf->SetHTMLFooter('
					<table width="100%" height="1" style="border:0px; font-size:12px">
						<tr>
						<hr>
							<td width="33%"> <i>sipakot.jayapurakota.go.id</i></td>
							<td width="30%" align="center"></td>
							<td width="36%" style="text-align: right;"> PABT Wajib Pajak Distrik '.$judul_distrik.' Tahun '.$id.'<b>  Halaman - {PAGENO}</b></td>
						</tr>
					</table>
			');
			$judul_lower= strtolower(str_replace(" ", "-", $judul_distrik));
			$mpdf->WriteHTML($pdf);
			$mpdf->Output('sipakot-pabt-wajib-pajak-distrik-'.$judul_lower.'-tahun-'.$id.'.pdf',"I");
	
			
		}

		// admin > wajib pajak > patb > excel 
		public function wajib_pajak_pabt_perdistrik_excel($id)
		{

			// $password = "user_input_password";
			// $hashed_password = password_hash($password, PASSWORD_DEFAULT);
			// var_dump($hashed_password);
			// die;
			$distrik = $_GET['distrik'];
			$wajib_pajak = $this->M_distrik->wajib_pajak_sortir_distrik($distrik);
			$bulan = $this->M_wajibpajak->baca('bulan')->result_array();
			$tahun = $id;
			$wajib_pajak_distrik = $this->M_distrik->wajib_pajak_distrik();
			foreach($wajib_pajak_distrik as $k)
			{
			if($k['id_distrik'] == $distrik)
				{
					$judul_distrik = $k['nama_distrik'];
				}
			}

			$distrik_biasa = 'Distrik '.$judul_distrik.' Tahun '. $tahun;
			
			$spreadsheet = new Spreadsheet();
			$sheet = $spreadsheet->getActiveSheet();

		
			$style_col = [
				'font' => ['bold' => true], // Set font nya jadi bold
				'alignment' => [
				  'horizontal' => \PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_CENTER, // Set text jadi ditengah secara horizontal (center)
				  'vertical' => \PhpOffice\PhpSpreadsheet\Style\Alignment::VERTICAL_CENTER // Set text jadi di tengah secara vertical (middle)
				],
				'borders' => [
				  'top' => ['borderStyle'  => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN], // Set border top dengan garis tipis
				  'right' => ['borderStyle'  => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN],  // Set border right dengan garis tipis
				  'bottom' => ['borderStyle'  => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN], // Set border bottom dengan garis tipis
				  'left' => ['borderStyle'  => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN] // Set border left dengan garis tipis
				]
			  ];

			  $style_biasa = [
				'font' => ['bold' => false], // Set font nya jadi bold
				'alignment' => [
				  'horizontal' => \PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_CENTER, // Set text jadi ditengah secara horizontal (center)
				  'vertical' => \PhpOffice\PhpSpreadsheet\Style\Alignment::VERTICAL_CENTER // Set text jadi di tengah secara vertical (middle)
				],
				'borders' => [
				  'top' => ['borderStyle'  => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN], // Set border top dengan garis tipis
				  'right' => ['borderStyle'  => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN],  // Set border right dengan garis tipis
				  'bottom' => ['borderStyle'  => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN], // Set border bottom dengan garis tipis
				  'left' => ['borderStyle'  => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN] // Set border left dengan garis tipis
				]
			  ];

			  $style_biasa_dua = [
				'font' => ['bold' => false], // Set font nya jadi bold
				'alignment' => [
				  'vertical' => \PhpOffice\PhpSpreadsheet\Style\Alignment::VERTICAL_CENTER // Set text jadi di tengah secara vertical (middle)
				],
				'borders' => [
				  'top' => ['borderStyle'  => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN], // Set border top dengan garis tipis
				  'right' => ['borderStyle'  => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN],  // Set border right dengan garis tipis
				  'bottom' => ['borderStyle'  => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN], // Set border bottom dengan garis tipis
				  'left' => ['borderStyle'  => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN] // Set border left dengan garis tipis
				]
			  ];

			  $style_ttd = [
				'font' => ['bold' => false], // Set font nya jadi bold
				'alignment' => [
					'horizontal' => \PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_CENTER, // Set text jadi ditengah secara horizontal (center)
					'vertical' => \PhpOffice\PhpSpreadsheet\Style\Alignment::VERTICAL_CENTER // Set text jadi di tengah secara vertical (middle)
				  ],
				
			  ];

			  $kepala_dinas = [
				'font' => ['bold' => true], // Set font nya jadi bold
				'alignment' => [
					'horizontal' => \PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_CENTER, // Set text jadi ditengah secara horizontal (center)
					'vertical' => \PhpOffice\PhpSpreadsheet\Style\Alignment::VERTICAL_CENTER // Set text jadi di tengah secara vertical (middle)
				  ],
			  ];



			  // Buat sebuah variabel untuk menampung pengaturan style dari isi tabel
			  $style_row = [
				'alignment' => [
				  'vertical' => \PhpOffice\PhpSpreadsheet\Style\Alignment::VERTICAL_CENTER // Set text jadi di tengah secara vertical (middle)
				],
				'borders' => [
				  'top' => ['borderStyle'  => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN], // Set border top dengan garis tipis
				  'right' => ['borderStyle'  => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN],  // Set border right dengan garis tipis
				  'bottom' => ['borderStyle'  => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN], // Set border bottom dengan garis tipis
				  'left' => ['borderStyle'  => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN] // Set border left dengan garis tipis
				]
			  ];

			
			  
			$sheet->setCellValue('A1', 'Data PABT Wajib Pajak')->mergeCells('A1:Q1');;
			$sheet->setCellValue('A2', $distrik_biasa)->mergeCells('A2:Q2');;
			$sheet->getStyle('A1')->applyFromArray($style_ttd);
			$sheet->getStyle('A2')->applyFromArray($style_ttd);


			$sheet->setCellValue('A5', "No");
			$sheet->setCellValue('B5', "Nama Usaha");
			$sheet->setCellValue('C5', "Alamat Usaha");
			$sheet->setCellValue('D5', "Pemilik Usaha");
			$sheet->setCellValue('Q5', "Total PABT");
			// BULAN
			foreach($bulan as $b)
			{
				$bulan_2[] = $b["bulan"];
			}
			$rowArray = $bulan_2;
			$sheet->fromArray($rowArray,NULL,'E5');
			// $sheet->fromArray($rowArray,NULL,'E5')->setWidth(30, 'pt');
    
			$sheet->getStyle('A5')->applyFromArray($style_col);
			$sheet->getStyle('B5')->applyFromArray($style_col);
			$sheet->getStyle('C5')->applyFromArray($style_col);
			$sheet->getStyle('D5')->applyFromArray($style_col);
			$sheet->getStyle('E5')->applyFromArray($style_col);
			$sheet->getStyle('F5')->applyFromArray($style_col);
			$sheet->getStyle('G5')->applyFromArray($style_col);
			$sheet->getStyle('H5')->applyFromArray($style_col);
			$sheet->getStyle('I5')->applyFromArray($style_col);
			$sheet->getStyle('J5')->applyFromArray($style_col);
			$sheet->getStyle('K5')->applyFromArray($style_col);
			$sheet->getStyle('L5')->applyFromArray($style_col);
			$sheet->getStyle('M5')->applyFromArray($style_col);
			$sheet->getStyle('N5')->applyFromArray($style_col);
			$sheet->getStyle('O5')->applyFromArray($style_col);
			$sheet->getStyle('P5')->applyFromArray($style_col);
			$sheet->getStyle('Q5')->applyFromArray($style_col);
			

			$totalPabt = 0;
			$no = 0; 
			$totalSemuaPabt = 0;
			$numrow = 6;
			$satu = 0;
			$dua = 0;
			$tiga = 0;
			$empat = 0;
			$lima = 0;
			$enam = 0;
			$tujuh = 0;
			$delapan = 0;
			$sembilan = 0;
			$sepuluh = 0;
			$sebelas = 0;
			$duabelas = 0;
			

			foreach ($wajib_pajak as $l) {
				$sheet->setCellValue('A'.$numrow, ++$no);
				$sheet->setCellValue('B'.$numrow, $l['usaha_nama']);
				$sheet->setCellValue('C'.$numrow, $l['usaha_alamat']);
				$sheet->setCellValue('D'.$numrow, $l['pemilik_nama']);
				$sheet->getStyle('A'.$numrow)->applyFromArray($style_biasa);
				$sheet->getStyle('B'.$numrow)->applyFromArray($style_biasa_dua);
				$sheet->getStyle('C'.$numrow)->applyFromArray($style_biasa_dua);
				$sheet->getStyle('D'.$numrow)->applyFromArray($style_biasa_dua);

				$sheet->getColumnDimension('A')->setWidth(30, 'pt');
				$sheet->getColumnDimension('B')->setWidth(200, 'pt');
				$sheet->getColumnDimension('C')->setWidth(200, 'pt');
				$sheet->getColumnDimension('D')->setWidth(200, 'pt');

				foreach($bulan as $b)
				{
					error_reporting(0);
					$id_wp = $l['id_wp'];
					$id_bulan  = $b['id'];
					$queryPabt = $this->db->query("SELECT * FROM tagihan WHERE id_wp = '$id_wp' AND tahun = '$tahun' AND id_bulan = '$id_bulan' ")->result_array();
				$tes = "SELECT * FROM tagihan WHERE id_wp = '$id_wp' AND tahun = '$tahun' AND id_bulan = '$id_bulan'";	
				// var_dump($tes);
				// var_dump($queryPabt);
				// die;
					// if(($queryPabt) != null)
					// {
						$pabt = $queryPabt[0]['total_pabt'];
						$bulan_pabt  = ($queryPabt[0]["id_bulan"]);
						$totalPabt = $queryPabt[0]['total_pabt'] + $totalPabt;
					// }else{
					// 	$pabt = 0;
					// 	$bulan_pabt  = '0';
					// 	$totalPabt = 0;
					// }

					
						if($pabt != null){
						$pabt = $pabt;

						}else{
							$pabt = 0;
						}; 

						if($bulan_pabt == '0')
						{
							$row_bulan = '';
							$duabelas = '';
						}

						if($bulan_pabt == '1' )
						{
							$row_bulan = 'E';
							$satu = $queryPabt[0]['total_pabt'] + $satu;
			
						}
						if($bulan_pabt == '2' )
						{
							$row_bulan = 'F';
							$dua =  $queryPabt[0]['total_pabt'] + $dua;
			
						}
						if($bulan_pabt == '3' )
						{
							$row_bulan = 'G';
							$tiga =  $queryPabt[0]['total_pabt'] + $tiga;
						}
						if($bulan_pabt == '4')
						{
							$row_bulan = 'H';
							$empat =  $queryPabt[0]['total_pabt'] + $empat;
							
						}
						if($bulan_pabt == '5')
						{
							$row_bulan = 'I';
							$lima =  $queryPabt[0]['total_pabt'] + $lima;
							
						}
						if($bulan_pabt == '6')
						{
							$row_bulan = 'J';
							$enam =  $queryPabt[0]['total_pabt'] + $enam;
							
						}
						if($bulan_pabt == '7')
						{
							$row_bulan = 'K';
							$tujuh =  $queryPabt[0]['total_pabt'] + $tujuh;
						}
						if($bulan_pabt == '8')
						{
							$row_bulan = 'L';
							$delapan =  $queryPabt[0]['total_pabt'] + $delapan;
							
							
						}
						if($bulan_pabt == '9')
						{
							$row_bulan = 'M';
							$sembilan =  $queryPabt[0]['total_pabt'] + $sembilan;
							
						}
						if($bulan_pabt == '10')
						{
							$row_bulan = 'N';
							$sepuluh =  $queryPabt[0]['total_pabt'] + $sepuluh;
							
						}
						if($bulan_pabt == '11')
						{
							$row_bulan = 'O';
							$sebelas = $queryPabt[0]['total_pabt'] + $sebelas;
							
						}
						if($bulan_pabt == '12')
						{
							$row_bulan = 'P';
							$duabelas = $queryPabt[0]['total_pabt'] + $duabelas;
						}
						$sheet->setCellValue($row_bulan.$numrow, $pabt);
						$sheet->getStyle($row_bulan.$numrow)->getNumberFormat()->setFormatCode('#,###,###,###');
						$sheet->getStyle($row_bulan.$numrow)->applyFromArray($style_biasa);
						$sheet->getColumnDimension($row_bulan)->setWidth(100, 'pt');
				}

				$totalSemuaPabt = $totalSemuaPabt + $totalPabt;
				$sheet->setCellValue("Q".$numrow, $totalPabt);
				$sheet->getColumnDimension('Q')->setWidth(100, 'pt');
				$sheet->getStyle("Q".$numrow)->applyFromArray($style_biasa);
				$sheet->getStyle("Q".$numrow)->getNumberFormat()->setFormatCode('#,###,###,###');
				$totalPabt = 0;

				++$numrow;
				
			}
			foreach($bulan as $b)
			{
				error_reporting(0);
				$perbulan  = $b['id'];
							if($perbulan == '1' )
							{
								$total_bulan = 'E';
							}
							if($perbulan == '2' )
							{
								$total_bulan = 'F';
							}
							if($perbulan == '3' )
							{
								$total_bulan = 'G';
							}
							if($perbulan == '4')
							{
								$total_bulan = 'H';
							}
							if($perbulan == '5')
							{
								$total_bulan = 'I';
							}
							if($perbulan == '6')
							{
								$total_bulan = 'J';
							}
							if($perbulan == '7')
							{
								$total_bulan = 'K';
							}
							if($perbulan == '8')
							{
								$total_bulan = 'L';
							}
							if($perbulan == '9')
							{
								$total_bulan = 'M';
							}
							if($perbulan == '10')
							{
								$total_bulan = 'N';
							}
							if($perbulan == '11')
							{
								$total_bulan = 'O';
							}
							if($perbulan == '12')
							{
								$total_bulan = 'P';
							}
				$sheet->setCellValue('E'.$numrow, $satu);
				$sheet->setCellValue('F'.$numrow, $dua);
				$sheet->setCellValue('G'.$numrow, $tiga);
				$sheet->setCellValue('H'.$numrow, $empat);
				$sheet->setCellValue('I'.$numrow, $lima);
				$sheet->setCellValue('J'.$numrow, $enam);
				$sheet->setCellValue('K'.$numrow, $tujuh);
				$sheet->setCellValue('L'.$numrow, $delapan);
				$sheet->setCellValue('M'.$numrow, $sembilan);
				$sheet->setCellValue('N'.$numrow, $sepuluh);
				$sheet->setCellValue('O'.$numrow, $sebelas);
				$sheet->setCellValue('P'.$numrow, $duabelas);
				$sheet->setCellValue('Q'.$numrow, $totalSemuaPabt);
				
				$sheet->getStyle($total_bulan.$numrow)->getNumberFormat()->setFormatCode('#,###,###,###');
				$sheet->getStyle($total_bulan.$numrow)->applyFromArray($style_biasa);
				$sheet->getStyle('Q'.$numrow)->getNumberFormat()->setFormatCode('#,###,###,###');
				$sheet->getStyle('Q'.$numrow)->applyFromArray($style_biasa);

			}

			$sheet->setCellValue('A'.$numrow,'Total')->mergeCells('A'.$numrow.':'.'D'.$numrow);
			$sheet->getStyle('A'.$numrow)->applyFromArray($style_biasa);
			$sheet->getStyle('B'.$numrow)->applyFromArray($style_biasa);
			$sheet->getStyle('C'.$numrow)->applyFromArray($style_biasa);
			$sheet->getStyle('D'.$numrow)->applyFromArray($style_biasa);
			$sheet->getStyle('Q'.$numrow)->applyFromArray($style_biasa);


			$row = $numrow + 2;
			$sheet->setCellValue('N'.$row,'Mengetahui,')->mergeCells('N'.$row.':'.'P'.$row);
			$sheet->getStyle('N'.$row)->applyFromArray($style_ttd);

			$row = $numrow + 3;
			$sheet->setCellValue('N'.$row,'Kepala Dinas Lingkungan Hidup dan Kebersihan Kota Jayapura,')->mergeCells('N'.$row.':'.'P'.$row);
			$sheet->getStyle('N'.$row)->applyFromArray($style_ttd);
			

			$row = $numrow + 8;
			$sheet->setCellValue('N'.$row,'Ir. DOLFINA JECE MANO, M.Si,')->mergeCells('N'.$row.':'.'P'.$row);
			$sheet->getStyle('N'.$row)->applyFromArray($kepala_dinas);

			$row = $numrow + 9;
			$sheet->setCellValue('N'.$row,'Pembina Tk. 1,')->mergeCells('N'.$row.':'.'P'.$row);
			$sheet->getStyle('N'.$row)->applyFromArray($kepala_dinas);

			$row = $numrow + 10;
			$sheet->setCellValue('N'.$row,'NIP. 19671223 199503 2 001,')->mergeCells('N'.$row.':'.'P'.$row);
			$sheet->getStyle('N'.$row)->applyFromArray($kepala_dinas);

			$row = $numrow + 5;
			$path_image = base_url('assets/images/info_tagihan/stempel_ttd.png');

			// Prepare the drawing object
			$drawing = new \PhpOffice\PhpSpreadsheet\Worksheet\Drawing();

			// Set the picture name
			$drawing->setName('PhpSpreadsheet logo');

			// Set the picture path
			$drawing->setPath($path_image);

			// Set the cell address where the picture will be inserted
			$drawing->setCoordinates('C2');

			// Add the drawing to the worksheet
			// $drawing->setWorksheet($spreadsheet->getActiveSheet());

			$writer = new Xlsx($spreadsheet);
			
			$filename = $distrik_biasa;
			
			header('Content-Type: application/vnd.ms-excel');
			header('Content-Disposition: attachment;filename="'. $filename .'.xlsx"'); 
			header('Cache-Control: max-age=0');

			$writer->save('php://output');
		}

	// admin > wajib pajak > volume air
	public function volume_air($volume)
	{
		$tahun = $_GET['tahun'];
		$bulan = $_GET['bulan'];
		$distrik = $_GET['distrik'];
		if($tahun == null)
		{
			$tahun = date('Y');
		}

		if($bulan == null)
		{
			$bulan = date('m');
		}

		foreach( $this->M_distrik->wajib_pajak_distrik() as $distrikLoop)
		{
			if($distrikLoop['id_distrik'] == $distrik )
			{
				$nama_distrik = $distrikLoop['nama_distrik'];
			}
		}
		
		$data['wp'] = $this->M_tagihan->tagihan_volume($volume, $tahun, $bulan, $distrik)->result_array();
		$data['wajib_pajak_kategori_usaha'] = $this->M_opsi->wajib_pajak_kategori_usaha();
		$data['wajib_pajak_distrik'] = $this->M_distrik->wajib_pajak_distrik();
		$data['wajib_pajak_kelurahan'] = $this->M_kelurahan->wajib_pajak_kelurahan();
		$data['tahun'] = $tahun;
		$data['bulan'] = $bulan;
		$data['distrik'] = $distrik;
		$data['volume'] = $volume;
		$data['bulans'] = $this->db->query("SELECT * FROM bulan")->result_array();
		$data['b'] = $this->db->query("SELECT * FROM bulan WHERE id = $bulan")->row_array();
		$data['nama_distrik'] = $nama_distrik;
		
	
	  
	

		$pengaturan = array (
			'judul_situs' => $this->M_pengaturan->judul_situs(),
			'footer_text' => $this->M_pengaturan->footer_text(),
			'footer_text_right' => $this->M_pengaturan->footer_text_right(),
		);
		
		
		$this->load->view('admin/partials/header', $pengaturan);
		$this->load->view('admin/wajibpajak/index-volume', $data);
		$this->load->view('admin/partials/footer');
	}

	// admin > wajib pajak > volume air > pdf
	public function volume_air_pdf($volume)
	{
		$tahun = $_GET['tahun'];
		$bulan = $_GET['bulan'];
		$distrik = $_GET['distrik'];
		if($tahun == null)
		{
			$tahun = date('Y');
		}

		if($bulan == null)
		{
			$bulan = date('m');
		}
		foreach( $this->M_distrik->wajib_pajak_distrik() as $distrikLoop)
		{
			if($distrikLoop['id_distrik'] == $distrik )
			{
				$nama_distrik = $distrikLoop['nama_distrik'];
			}
		}
		$judul_distrik =  strtolower(str_replace(" ", "-", $nama_distrik));

		$bln = $this->db->query("SELECT * FROM bulan WHERE id = $bulan")->row_array();
		$bln = strtolower($bln['bulan']);
		$data['judul'] = ' Wajib Pajak Volume < '.volume_air($volume).' Distrik '.$nama_distrik. ' Bulan '. $bln.' Tahun '.$tahun;
		$data['judul2'] = ' Wajib Pajak Volume < '.$volume.' Distrik '.$nama_distrik. ' Bulan '. $bln.' Tahun '.$tahun;
		$data['wp'] = $this->M_tagihan->tagihan_volume($volume, $tahun, $bulan, $distrik)->result_array();
		$mpdf = new \Mpdf\Mpdf(['mode' => 'utf-8', 'format' => 'A4-L','margin_bottom' => 30,'margin_top' => 10]);
		$pdf = $this->load->view('admin/wajibpajak/volume-pdf',$data, TRUE);
		$mpdf->SetHTMLFooter('
					<table width="100%" height="1" style="border:0px; font-size:12px">
						<tr>
						<hr>
							<td width="30%"> <i>sipakot.jayapurakota.go.id</i></td>
							<td width="30%" align="center"></td>
							<td width="40%" style="text-align: right;">  Wajib Pajak Volume < '.$volume.'Distrik '.$nama_distrik. ' Bulan '. $bln.' Tahun '.$tahun.'<b>  Halaman - {PAGENO}</b></td>
						</tr>
					</table>
		');
		$mpdf->WriteHTML($pdf);
		$mpdf->Output('data-wajib-pajak-volume-'.$volume.'-distrik-'.$judul_distrik.'-bulan-'.$bln.'-tahun-'.$tahun.'.pdf',"I");
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
		$mpdf = new \Mpdf\Mpdf(['mode' => 'utf-8', 'format' => 'A5-P','margin_top' => 5,
		'margin_left' => 3,
		'margin_right' => 3,
		'mirrorMargins' => true]);
		$pdf = $this->load->view('admin/wajibpajak/tagihan-cetak_pdf', $data,TRUE);
		$mpdf->WriteHTML($pdf);
		$mpdf->Output('tagihan-wajib-pajak'.'.pdf',"I");
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
		$data['wajib_pajak_distrik'] = $this->M_distrik->wajib_pajak_distrik();
		$data['wajib_pajak_kelurahan'] = $this->M_kelurahan->wajib_pajak_kelurahan();
		
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
	 * ADMIN > BERITA
	 * ==========================================================
	*/



	// admin > berita
	public function berita()
	{
		
		$this->db->order_by('id', 'DESC');
		$data['berita'] = $this->M_berita->baca_berita('berita')->result_array();
		
		$pengaturan = array (
			'judul_situs' => $this->M_pengaturan->judul_situs(),
			'footer_text' => $this->M_pengaturan->footer_text(),
			'footer_text_right' => $this->M_pengaturan->footer_text_right(),
		);
		
		$this->load->view('admin/partials/header', $pengaturan);
		$this->load->view('admin/berita/index', $data);
		$this->load->view('admin/partials/footer');
	}

	// admin > berita > tambah
	public function beritatambah()
	{
		$data['kode'] = $this->M_wajibpajak->kode();
		$data['levels'] = $this->M_user->baca_role();
		
		$pengaturan = array (
			'judul_situs' => $this->M_pengaturan->judul_situs(),
			'footer_text' => $this->M_pengaturan->footer_text(),
			'footer_text_right' => $this->M_pengaturan->footer_text_right(),
		);
		
		$this->load->view('admin/partials/header', $pengaturan);
		$this->load->view('admin/berita/tambah', $data);
		$this->load->view('admin/partials/footer');
	}

	// admin > berita > ubah
	public function beritaubah($id)
	{
		$data['berita'] = $this->M_berita->detail($id);
		
		$pengaturan = array (
			'judul_situs' => $this->M_pengaturan->judul_situs(),
			'footer_text' => $this->M_pengaturan->footer_text(),
			'footer_text_right' => $this->M_pengaturan->footer_text_right(),
		);
		
		$this->load->view('admin/partials/header', $pengaturan);
		$this->load->view('admin/berita/ubah', $data);
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
