<?php
defined('BASEPATH') or exit('No direct script access allowed');

class C_Berita extends CI_Controller
{

	public function __construct()
	{
		parent::__construct();
		$this->load->model('M_berita');
	}


	public function index()
	{
		$this->load->view('berita/partials/header');
		$this->load->view('berita/pengguna/index');
		$this->load->view('berita/partials/footer');
	}

	// prosestambah
	public function prosestambah()
	{
		$config['upload_path'] = './assets/images/berita/';
		$config['allowed_types'] = 'jpg|png|jpeg|gif';
		$config['max_size'] = '2048';  //2MB max
		$config['max_width'] = '4480'; // pixel
		$config['max_height'] = '4480'; // pixel
		$config['file_name'] = $_FILES['image']['name'];

		$this->load->library('upload', $config);

		if (!$this->upload->do_upload('image')) {
			
		
			$title = $this->input->post('title');
			$image = 'no-image.png';
			$body = $this->input->post('body');
			$is_active = $this->input->post('is_active');

			$data = array(
				'title' => $title,
				'image' => $image,
				'body' => $body,
				'is_active' => $is_active,
			);

		} else {

			$image = $this->upload->data();
			$title = $this->input->post('title');
			$body = $this->input->post('body');
			$is_active = $this->input->post('is_active');

			$data = array(
				'title' => $title,
				'image' => $image['file_name'],
				'body' => $body,
				'is_active' => $is_active,
			);
		}

		$this->M_berita->tambah($data, 'berita');
		// alert success 
		$this->session->set_flashdata('message', '
			<div class="alert alert-success alert-dismissible fade show" role="alert">
				<strong>Berhasil!</strong> Data telah ditambahkan.
				<button type="button" class="close" data-dismiss="alert" aria-label="Close">
				<span aria-hidden="true">&times;</span>
				</button>
			</div>
		');
		redirect('admin/berita');
		
	}









	// PROSES UBAH BERITA
	public function prosesubahberita()
	{

		

		// buat variabel
		$id = $this->input->post('id');	
		$title = $this->input->post('title');
		$body = $this->input->post('body');
		$is_active = $this->input->post('is_active');
		$old_image = $this->input->post('old_image');

		// file configurasi
		$config['upload_path'] = './assets/images/berita/';
		$config['allowed_types'] = 'jpg|png|jpeg';
		$config['max_size'] = '2048';  //2MB max
		$config['max_width'] = '4480'; // pixel
		$config['max_height'] = '4480'; // pixel

		// membuat slug 'title'
		$titleToLower = trim(strtolower($title));
		$out = explode(" ", $titleToLower);
		$slug = implode("-", $out);

		// hapus 'image' lama
		$path = './assets/images/berita/'.$old_image;
		unlink($path);

		// mengubah nama file di folder 'images'
		// $config['file_name'] = $_FILES['image']['name'];
		$config['file_name'] = $slug.'.jpg';

		$this->load->library('upload', $config);

		if (!$this->upload->do_upload('image')) {

			$data = array(
				'id' => $id,
				'title' => $title,
				'slug' => $slug,
				'image' => $old_image,
				'body' => $body,
				'is_active' => $is_active,
			);

		} else {


			$data = array(
				'id' => $id,
				'title' => $title,
				'slug' => trim(strtolower($title)),
				'image' => $slug.'.jpg',
				'body' => $body,
				'is_active' => $is_active,
			);

		}

		// mengirim data ke database melalui fungsi pada model
		$this->M_berita->ubah($data, $id);
		
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
		redirect('admin/berita');

	}









	public function proses_hapus_berita($id)
	{
		$this->db->where('id', $id);
		$this->db->delete('berita');

		// alert success 
		$this->session->set_flashdata('message', '
			<div class="alert alert-danger alert-dismissible fade show" role="alert">
				<strong>Berhasil!</strong> Data telah dihapus.
				<button type="button" class="close" data-dismiss="alert" aria-label="Close">
				<span aria-hidden="true">&times;</span>
				</button>
			</div>
		');
		redirect(base_url() . 'admin/berita');
		return true;
	}
}