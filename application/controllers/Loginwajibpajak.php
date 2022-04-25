<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Loginwajibpajak extends CI_Controller
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

			$this->load->view('wajibpajak/login/index', $pengaturan);
		} else {
			// validasinya sukses 
			$this->_login();
		}
	}

	// Proses masuk 
	private function _login()
	{
		$email = $this->input->post('email');
		$kata_sandi = $this->input->post('kata_sandi');

		$wajibpajak = $this->db->get_where('wajib_pajak', ['pemilik_email' => $email])->row_array();

		// usernya ada
		if ($wajibpajak) {
			// jika usernya aktif
			if ($wajibpajak['is_active'] == 1 && $wajibpajak['hapus'] == 0) {
				// cek password 
				if (password_verify($kata_sandi, $wajibpajak['pemilik_kata_sandi'])) {
					$data = array(
						'nama_lengkap' => $wajibpajak['pemilik_nama'],
						'email' => $wajibpajak['pemilik_email'],
						'foto' => $wajibpajak['pemilik_foto'],
						'id_wp' => $wajibpajak['id_wp'],
						'status' => 'telah_login'
					);
					$this->session->set_userdata($data);
					if ($wajibpajak['is_active'] == 1){
						redirect('wajibpajak');
					} else {
						redirect('wajibpajak/masuk');
					}
				} else {
					$this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Kata sandi tidak cocok!</div>');
					redirect(base_url() . 'wajibpajak/masuk');
				}
			} else {
				$this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Email ini tidak aktif.</div>');
				redirect('wajibpajak/masuk');
			}
		} else {
			$this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Email tidak terdaftar.</div>');
			redirect('wajibpajak/masuk');
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
		redirect('wajibpajak/masuk');
	}

	public function blocked()
	{
		$this->load->view('auth/blocked');
	}
}
