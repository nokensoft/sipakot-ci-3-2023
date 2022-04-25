<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Login extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();
		$this->load->model('M_pengaturan');
		$this->load->model('M_opsi');
		$this->load->library('form_validation');
	}

	public function index()
	{
		$this->form_validation->set_rules('email', 'Email', 'trim|required|valid_email');
		$this->form_validation->set_rules('kata_sandi', 'KataSandi', 'trim|required');

		if ($this->form_validation->run() == false) {

			$pengaturan = array (
				'judul_situs' => $this->M_pengaturan->judul_situs(),
				'footer_text' => $this->M_pengaturan->footer_text(),
				'footer_text_right' => $this->M_pengaturan->footer_text_right(),
			);
			
			$this->load->view('login/index', $pengaturan);

		} else {
			// validasinya sukses 
			$this->_login();
		}
	}

	// Proses masuk 
	private function _login()
	{
		$username = $this->input->post('email');
		$password = $this->input->post('kata_sandi');

		$user = $this->db->get_where('user', ['email' => $username])->row_array();

		// usernya ada
		if ($user) {
			// jika usernya aktif
			if ($user['is_active'] == 1 && $user['hapus'] == 0) {
				// cek password 
				if (password_verify($password, $user['kata_sandi'])) {
					$data = array(
						'nama_lengkap' => $user['nama_lengkap'],
						'email' => $user['email'],
						'foto' => $user['foto'],
						'id' => $user['id'],
						'role_id' => $user['role_id'],
						'status' => 'telah_login'
					);
					$this->session->set_userdata($data);
					if ($user['role_id'] == 0){
						redirect('admin');
					}
					if ($user['role_id'] == 1){
						redirect('admin');
					}
					if ($user['role_id'] == 2) {
						redirect('dispenda');
					}
					if ($user['role_id'] == 3) {
						redirect('pelaksana');
					}
					if ($user['role_id'] == 4) {
						redirect('wajibpajak');
					} else {
						redirect('login');
					}
				} else {
					$this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Kata sandi tidak cocok!</div>');
					redirect(base_url() . 'login');
				}
			} else {
				$this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Email ini tidak aktif.</div>');
				redirect('login');
			}
		} else {
			$this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Email tidak terdaftar tidak terdaftar.</div>');
			redirect('admin/masuk');
		}
	}

	// Proses keluar
	public function keluar()
	{
		$this->session->unset_userdata('nama_lengkap');
		$this->session->unset_userdata('email');
		$this->session->unset_userdata('id');
		$this->session->unset_userdata('role_id');
		$this->session->unset_userdata('status');

		$this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Anda telah keluar!</div>');
		redirect('admin/masuk');
	}

	public function blocked()
	{
		$this->load->view('auth/blocked');
	}
}
