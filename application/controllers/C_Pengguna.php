<?php
defined('BASEPATH') or exit('No direct script access allowed');

class C_Pengguna extends CI_Controller
{

	public function __construct()
	{
		parent::__construct();
		$this->load->model('M_pengguna');
	}


	public function index()
	{
		$this->load->view('admin/partials/header');
		$this->load->view('admin/pengguna/index');
		$this->load->view('admin/partials/footer');
	}

	// filter
	public function filter()
	{
		$this->load->view('admin/pengguna');
	}

	// form tambah
	public function baru()
	{
		$data['kode'] = $this->M_pengguna->kode();
		$this->load->view('admin/partials/header');
		$this->load->view('admin/pengguna/penggunabaru', $data);
		$this->load->view('admin/partials/footer');
	}

	// prosestambah
	public function prosestambah()
	{
		$config['upload_path'] = './assets/images/gambar_pepa/';
		$config['allowed_types'] = 'jpg|png|jpeg|gif';
		$config['max_size'] = '2048';  //2MB max
		$config['max_width'] = '4480'; // pixel
		$config['max_height'] = '4480'; // pixel
		$config['file_name'] = $_FILES['foto']['name'];

		$this->load->library('upload', $config);
		if (!$this->upload->do_upload('foto')) {
			echo "gagal tambah";
		} else {
			$foto = $this->upload->data();

			$id_pengguna = $this->input->post('id_pengguna');
			$nama_lengkap = $this->input->post('nama_lengkap');
			$no_telp = $this->input->post('no_telp');
			$email = $this->input->post('email');
			$alamat = $this->input->post('alamat');
			$tugas = $this->input->post('tugas');
			$username = $this->input->post('username');
			$password = $this->input->post('password');
			$level = $this->input->post('level');
			$status = $this->input->post('status');

			$data = array(
				'id_pengguna' => $id_pengguna,
				'nama_lengkap' => $nama_lengkap,
				'no_telp' => $no_telp,
				'email' => $email,
				'alamat' => $alamat,
				'tugas' => $tugas,
				'foto' => $foto['file_name'],
				'username' => $username,
				'password' => $password,
				'level' => $level,
				'status' => $status,
			);
			$this->M_pengguna->tambah($data, 'pengguna');
			// alert success 
			$this->session->set_flashdata('message', '
                <div class="alert alert-success alert-dismissible fade show" role="alert">
                    <strong>Berhasil!</strong> Data telah ditambahkan.
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                    </button>
                </div>
            ');
			redirect('admin/pengguna');
		}
	}

	// form ubah
	public function ubah()
	{
		$this->load->view('admin/partials/header');
		$this->load->view('admin/pengguna/penggunaubah');
		$this->load->view('admin/partials/footer');
	}

	// proses ubah
	public function prosesubah()
	{
		$config['upload_path'] = './assets/images/gambar_pepa/';
		$config['allowed_types'] = 'jpg|png|jpeg|gif';
		$config['max_size'] = '2048';  //2MB max
		$config['max_width'] = '4480'; // pixel
		$config['max_height'] = '4480'; // pixel
		$config['file_name'] = $_FILES['foto']['name'];

		$this->load->library('upload', $config);

		if (!$this->upload->do_upload('foto')) {

			$id = $this->input->post('id');
			$name = $this->input->post('name');

			$where = array(
				'id' => $id
			);

			$data = array(
				'name' => $name,
			);

			$this->M_pengguna->ubah($where, $data, 'user');
			
			// alert success 
			$this->session->set_flashdata('message', '
                <div class="alert alert-success alert-dismissible fade show" role="alert">
                    <strong>Berhasil!</strong> Data telah diubah.
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                    </button>
                </div>
			');

			redirect('admin/pengguna/ubah/' . $id);

		} else {
			$foto = $this->upload->data();

			$id_pengguna = $this->input->post('id_pengguna');
			$nama_lengkap = $this->input->post('nama_lengkap');
			$no_telp = $this->input->post('no_telp');
			$email = $this->input->post('email');
			$alamat = $this->input->post('alamat');
			$tugas = $this->input->post('tugas');
			$username = $this->input->post('username');
			$password = $this->input->post('password');
			$level = $this->input->post('level');
			$status = $this->input->post('status');

			$where = array(
				'id_pengguna' => $id_pengguna
			);

			$data = array(
				'nama_lengkap' => $nama_lengkap,
				'no_telp' => $no_telp,
				'email' => $email,
				'alamat' => $alamat,
				'tugas' => $tugas,
				'foto' => $foto['file_name'],
				'username' => $username,
				'password' => $password,
				'level' => $level,
				'status' => $status
			);

			$this->M_pengguna->ubah($where, $data, 'pengguna');

			// alert success 
			$this->session->set_flashdata('message', '
                <div class="alert alert-success alert-dismissible fade show" role="alert">
                    <strong>Berhasil!</strong> Data telah diubah.
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                    </button>
                </div>
			');
			
			redirect('admin/pengguna/ubah/' . $id);
		}
	}

	// proses hapus
	public function hapus($id_pengguna)
	{
		$where = array(
			'id_pengguna' => $id_pengguna
		);

		$this->M_pengguna->hapus($where, 'pengguna');
		// alert success 
		$this->session->set_flashdata('message', '
			<div class="alert alert-success alert-dismissible fade show" role="alert">
				<strong>Berhasil!</strong> Data telah dihapus.
				<button type="button" class="close" data-dismiss="alert" aria-label="Close">
				<span aria-hidden="true">&times;</span>
				</button>
			</div>
		');

		redirect(base_url() . 'admin/pengguna');
	}
}
