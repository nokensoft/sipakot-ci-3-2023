<?php
defined('BASEPATH') or exit('No direct script access allowed');

class C_Wajibpajak extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();
		$this->load->model('M_wajibpajak');

		if ($this->session->userdata('status') != "telah_login") {
			redirect(base_url("wajibpajak/masuk"));
		}
	}

	public function index()
	{
		$this->dasbor();
	}

	public function dasbor()
	{
		$this->load->view('wajibpajak/partials/header');
		$this->load->view('wajibpajak/dasbor');
		$this->load->view('wajibpajak/partials/footer');
	}

	public function semua()
	{

		$this->load->view('wajibpajak/partials/header');
		$this->load->view('wajibpajak/tagihan');
		$this->load->view('wajibpajak/partials/footer');
	}

	// form tambah
	public function baru()
	{
		$this->load->view('admin/wajibpajakbaru');
	}

	// proses tambah
	public function proses_tambah()
	{

		// membuat variabel
		$id_wp = $this->input->post('id_wp');

		// profil pemilik
		$pemilik_nama = $this->input->post('pemilik_nama');
		$pemilik_foto = 'default-user.png';
		$pemilik_email = $this->input->post('pemilik_email');
		$pemilik_kata_sandi = password_hash($this->input->post('pemilik_kata_sandi'), PASSWORD_DEFAULT);
		$pemilik_telp = $this->input->post('pemilik_telp');
		$pemilik_alamat = $this->input->post('pemilik_alamat');

		// profil usaha
		$usaha_nama = $this->input->post('usaha_nama');
		$usaha_logo = 'default-image.png';
		$usaha_email = $this->input->post('usaha_email');
		$usaha_telp = $this->input->post('usaha_telp');
		$usaha_alamat = $this->input->post('usaha_alamat');
		$usaha_distrik = $this->input->post('usaha_distrik');
		$usaha_kategori = $this->input->post('usaha_kategori');

		$usaha_luas_bangunan = $this->input->post('usaha_luas_bangunan');
		$usaha_luas_lahan = $this->input->post('usaha_luas_lahan');
		$usaha_izin = $this->input->post('usaha_izin');
		$usaha_dokumen = $this->input->post('usaha_dokumen');
		$usaha_kos_jml_kmr = $this->input->post('usaha_kos_jml_kmr');
		$usaha_kos_jml_penghuni = $this->input->post('usaha_kos_jml_penghuni');
		$usaha_rm_jml_kursi = $this->input->post('usaha_rm_jml_kursi');

		$usaha_keterangan = $this->input->post('usaha_keterangan');

		$is_active = $this->input->post('is_active');

		// memasukan data ke dalam array
		$data = array(
			'id_wp' => $id_wp,

			// profil pemilik
			'pemilik_nama' => $pemilik_nama,
			'pemilik_foto' => $pemilik_foto,
			'pemilik_email' => $pemilik_email,
			'pemilik_kata_sandi' => $pemilik_kata_sandi,
			'pemilik_telp' => $pemilik_telp,
			'pemilik_alamat' => $pemilik_alamat,

			// profil usaha
			'usaha_nama' => $usaha_nama,
			'usaha_logo' => $usaha_logo,
			'usaha_email' => $usaha_email,
			'usaha_telp' => $usaha_telp,
			'usaha_alamat' => $usaha_alamat,
			'usaha_distrik' => $usaha_distrik,
			'usaha_kategori' => $usaha_kategori,

			'usaha_luas_bangunan' => $usaha_luas_bangunan,
			'usaha_luas_lahan' => $usaha_luas_lahan,
			'usaha_izin' => $usaha_izin,
			'usaha_dokumen' => $usaha_dokumen,
			'usaha_kos_jml_kmr' => $usaha_kos_jml_kmr,
			'usaha_kos_jml_penghuni' => $usaha_kos_jml_penghuni,
			'usaha_rm_jml_kursi' => $usaha_rm_jml_kursi,

			'usaha_keterangan' => $usaha_keterangan,

			'is_active' => $is_active,
		);


		// mengirim data ke database melalui model
		$this->M_wajibpajak->tambah($data, 'wajib_pajak');

		// pesan proses berhasil 
		$this->session->set_flashdata('message', '
			<div class="alert alert-success alert-dismissible fade show" role="alert">
				<strong>Berhasil!</strong> Data telah ditambahkan.
				<button type="button" class="close" data-dismiss="alert" aria-label="Close">
				<span aria-hidden="true">&times;</span>
				</button>
			</div>
		');

		// mengalihkan halaman setelah proses tambah sukses
		redirect(base_url() . 'admin/wajibpajak');
	}







	// proses ubah
	public function proses_ubah()
	{

		// membuat variabel
		$id_wp = $this->input->post('id_wp');

		// profil pemilik
		$pemilik_nama = $this->input->post('pemilik_nama');
		$pemilik_email = $this->input->post('pemilik_email');
		$pemilik_kata_sandi = password_hash($this->input->post('pemilik_kata_sandi'), PASSWORD_DEFAULT);
		$pemilik_telp = $this->input->post('pemilik_telp');
		$pemilik_alamat = $this->input->post('pemilik_alamat');

		// profil usaha
		$usaha_nama = $this->input->post('usaha_nama');
		$usaha_email = $this->input->post('usaha_email');
		$usaha_telp = $this->input->post('usaha_telp');
		$usaha_alamat = $this->input->post('usaha_alamat');
		$usaha_distrik = $this->input->post('usaha_distrik');
		$usaha_kategori = $this->input->post('usaha_kategori');

		$usaha_luas_bangunan = $this->input->post('usaha_luas_bangunan');
		$usaha_luas_lahan = $this->input->post('usaha_luas_lahan');
		$usaha_izin = $this->input->post('usaha_izin');
		$usaha_dokumen = $this->input->post('usaha_dokumen');
		$usaha_kos_jml_kmr = $this->input->post('usaha_kos_jml_kmr');
		$usaha_kos_jml_penghuni = $this->input->post('usaha_kos_jml_penghuni');
		$usaha_rm_jml_kursi = $this->input->post('usaha_rm_jml_kursi');

		$usaha_keterangan = $this->input->post('usaha_keterangan');

		$is_active = $this->input->post('is_active');

		$where = array(
			'id_wp' => $id_wp
		);

		$data = array(
			'id_wp' => $id_wp,

			// profil pemilik
			'pemilik_nama' => $pemilik_nama,
			'pemilik_email' => $pemilik_email,
			'pemilik_kata_sandi' => $pemilik_kata_sandi,
			'pemilik_telp' => $pemilik_telp,
			'pemilik_alamat' => $pemilik_alamat,

			// profil usaha
			'usaha_nama' => $usaha_nama,
			'usaha_email' => $usaha_email,
			'usaha_telp' => $usaha_telp,
			'usaha_alamat' => $usaha_alamat,
			'usaha_distrik' => $usaha_distrik,
			'usaha_kategori' => $usaha_kategori,

			'usaha_luas_bangunan' => $usaha_luas_bangunan,
			'usaha_luas_lahan' => $usaha_luas_lahan,
			'usaha_izin' => $usaha_izin,
			'usaha_dokumen' => $usaha_dokumen,
			'usaha_kos_jml_kmr' => $usaha_kos_jml_kmr,
			'usaha_kos_jml_penghuni' => $usaha_kos_jml_penghuni,
			'usaha_rm_jml_kursi' => $usaha_rm_jml_kursi,

			'usaha_keterangan' => $usaha_keterangan,

			'is_active' => $is_active,

		);

		$this->M_wajibpajak->ubah($where, $data, 'wajib_pajak');

		// alert success 
		$this->session->set_flashdata('message', '
			<div class="alert alert-success alert-dismissible fade show" role="alert">
				<strong>Berhasil!</strong> Data telah diubah.
				<button type="button" class="close" data-dismiss="alert" aria-label="Close">
				<span aria-hidden="true">&times;</span>
				</button>
			</div>
		');

		redirect('admin/wajibpajak/detail/' . $id_wp);
	}

	public function proses_ubah_foto_pemilik()
	{
		$config['upload_path'] = './assets/images/pemilik_foto/';
		$config['allowed_types'] = 'jpg|png|jpeg|gif';
		$config['max_size'] = '2048';  //2MB max
		$config['max_width'] = '4480'; // pixel
		$config['max_height'] = '4480'; // pixel
		$config['file_name'] = 'pemilik-' . time();

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

			redirect('admin/wajibpajak/ubah/foto/pemilik/' . $id_wp);
		} else {



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

		redirect('admin/wajibpajak/ubah/foto/pemilik/' . $id_wp);
	}







	public function proses_ubah_foto_usaha()
	{
		$config['upload_path'] = './assets/images/usaha_logo/';
		$config['allowed_types'] = 'jpg|png|jpeg|gif';
		$config['max_size'] = '2048';  //2MB max
		$config['max_width'] = '4480'; // pixel
		$config['max_height'] = '4480'; // pixel
		$config['file_name'] = 'pemilik-' . time();

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

			redirect('admin/wajibpajak/ubah/foto/usaha/' . $id_wp);
		} else {



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
			<strong>Berhasil!</strong> Foto telah diubah.
			<button type="button" class="close" data-dismiss="alert" aria-label="Close">
			<span aria-hidden="true">&times;</span>
			</button>
		</div>
		');

		redirect('admin/wajibpajak/ubah/foto/usaha/' . $id_wp);
	}




	// proses hapus wajibpajak (pindah ke tempat sampah)
	public function proses_hapus_wajib_pajak()
	{

		$id_wp = $this->input->post('id_wp');

		$where = array(
			'id_wp' => $id_wp
		);

		$data = array(
			'hapus' => '1',
			'is_active' => '0',
		);

		$this->M_wajibpajak->terhapus($where, $data, 'wajib_pajak');
		// alert success 
		$this->session->set_flashdata('message', '
			<div class="alert alert-danger alert-dismissible fade show" role="alert">
				<strong>Terhapus!</strong> Data telah dihapus.
				<button type="button" class="close" data-dismiss="alert" aria-label="Close">
				<span aria-hidden="true">&times;</span>
				</button>
			</div>
		');

		redirect(base_url() . 'admin/wajibpajak');
	}

	// proses hapus wajibpajak (keluarkan dari tempat sampah)
	public function proses_kembalikan_wajib_pajak()
	{

		$id_wp = $this->input->post('id_wp');

		$where = array(
			'id_wp' => $id_wp
		);

		$data = array(
			'hapus' => '0',
			'is_active' => '0',
		);

		$this->M_wajibpajak->terhapus($where, $data, 'wajib_pajak');
		// alert success 
		$this->session->set_flashdata('message', '
			<div class="alert alert-success alert-dismissible fade show" role="alert">
				<strong>Berhasil!</strong> Data telah dikembalikan.
				<button type="button" class="close" data-dismiss="alert" aria-label="Close">
				<span aria-hidden="true">&times;</span>
				</button>
			</div>
		');

		redirect(base_url() . 'admin/wajibpajak');
	}

	// proses hapus wajibpajak (keluarkan dari tempat sampah)
	public function proses_hapus_wajib_pajak_permanen()
	{

		$id_wp = $this->input->post('id_wp');

		$where = array(
			'id_wp' => $id_wp
		);

		$this->M_wajibpajak->hapus_permanen($where, 'wajib_pajak');
		// alert success 
		$this->session->set_flashdata('message', '
			<div class="alert alert-danger alert-dismissible fade show" role="alert">
				<strong>Terhapus!</strong> Data telah terhapus secara permanen.
				<button type="button" class="close" data-dismiss="alert" aria-label="Close">
				<span aria-hidden="true">&times;</span>
				</button>
			</div>
		');

		redirect(base_url() . 'admin/wajibpajak/terhapus');
	}

	// proses hapus
	public function hapus($id_wp)
	{
		$where = array(
			'id_wp' => $id_wp
		);

		$this->M_wajibpajak->hapus($where, 'wajib_pajak');
		// alert success 
		$this->session->set_flashdata('message', '
			<div class="alert alert-danger alert-dismissible fade show" role="alert">
				<strong>Terhapus!</strong> Data telah dihapus.
				<button type="button" class="close" data-dismiss="alert" aria-label="Close">
				<span aria-hidden="true">&times;</span>
				</button>
			</div>
		');

		redirect(base_url() . 'admin/wajibpajak');
	}

	/*
	| ===========================================================
	| TAGIHAN
	| ===========================================================
	|*/
}
