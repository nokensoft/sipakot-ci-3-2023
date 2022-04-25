<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Auth extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();
		$this->load->library('form_validation');
	}

	public function index()
	{
		$this->form_validation->set_rules('nama_pengguna', 'NamaPengguna', 'required');
		$this->form_validation->set_rules('kata_sandi', 'Katasandi', 'trim|required');

		if ($this->form_validation->run() == false) {
			$this->load->view('login/index');
		} else {
			// validasinya success 
			$this->_login();
		}
	}


	private function _login()
	{
		$username = $this->input->post('username');
		$password = $this->input->post('password');

		$user = $this->db->get_where('user', ['username' => $username])->row_array();


		// usernya ada
		if ($user) {
			// jika usernya aktif
			if ($user['is_active'] == 1) {
				// cek password 
				if (password_verify($password, $user['password'])) {
					$data = array(
						'name' => $user['name'],
						'username' => $user['username'],
						'role_id' => $user['role_id'],
						// 'id' => $user->id,
						'status' => 'telah_login'
						// 'image' => $user['image']
					);
					$this->session->set_userdata($data);
					if ($user['role_id'] == 1) {
						redirect('admin');
					}
					if ($user['role_id'] == 2) {
						redirect('dispenda');
					}
					if ($user['role_id'] == 3) {
						redirect('petugaslapangan');
					}
					if ($user['role_id'] == 4) {
						redirect('wajibpajak');
					} else {
						redirect('login');
					}
				} else {
					$this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Wrong Password!</div>');
					redirect(base_url() . 'login');
				}
			} else {
				$this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">This username has not been activeted.</div>');
				redirect('login');
			}
		} else {
			$this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Username is not registered.</div>');
			redirect('login');
		}
	}

	public function daftar()
	{
		$this->form_validation->set_rules('nama_lengkap', 'NamaLengkap', 'required|trim');

		$this->form_validation->set_rules('nama_pengguna', 'NamaPengguna', 'required|trim|min_length[5]|is_unique[user.username]', [
			'is_unique' => 'Nama pengguna sudah terdaftar'
		]);

		$this->form_validation->set_rules('kata_sandi1', 'KataSandi', 'required|trim|min_length[8]|matches[kata_sandi2]', [
			'matches' => 'Kata sandi tidak cocok!',
			'matches' => 'Kata sandi terlalu pendek'
		]);
		
		$this->form_validation->set_rules('kata_sandi2', 'KataSandi', 'required|trim|matches[kata_sandi1]');

		if ($this->form_validation->run() == false) {
			$data['title'] = 'WPU User Registration';
			$this->load->view('auth/daftar', $data);
		} else {
			$data = [
				'nama_lengkap' => htmlspecialchars($this->input->post('nama_lengkap', true)),
				'nama_pengguna' => $this->input->post('nama_pengguna', true),
                'kata_sandi' => password_hash($this->input->post('kata_sandi1'), PASSWORD_DEFAULT),
                
				'image' => 'default.jpg',
				'role_id' => 2,
				'is_active' => 1,
				'date_created' => time()
			];

			$this->db->insert('user', $data);
			$this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Congratulation! Your account has been created. Please Login.</div>');
			redirect('auth');
		}
	}



	public function update_password()
	{
		$this->form_validation->set_rules('name', 'Name', 'required|trim');
		// $this->form_validation->set_rules('email', 'Email', 'required|trim|valid_email|is_unique[user.email]', [
		//     'is_unique' => 'This email has already registered!'
		// ]);
		$this->form_validation->set_rules('username', 'Username', 'required|trim|min_length[5]|is_unique[user.username]', [
			'is_unique' => 'Nama pengguna sudah terdaftar'
		]);
		$this->form_validation->set_rules('password1', 'Password', 'required|trim|min_length[8]|matches[password2]', [
			'matches' => 'Kata sandi tidak cocok!',
			'matches' => 'Kata sandi terlalu pendek'
		]);
		$this->form_validation->set_rules('password2', 'Password', 'required|trim|matches[password1]');

		if ($this->form_validation->run() == false) {
			$data['title'] = 'WPU User Registration';
			$this->load->view('templates/auth_header', $data);
			$this->load->view('auth/registration');
			$this->load->view('templates/auth_footer');
		} else {
			$data = [
				'name' => htmlspecialchars($this->input->post('name', true)),
				// 'email' => htmlspecialchars($this->input->post('email', true)),
				'username' => $this->input->post('username', true),
				'image' => 'default.jpg',
				'password' => password_hash($this->input->post('password1'), PASSWORD_DEFAULT),
				'role_id' => 2,
				'is_active' => 1,
				'date_created' => time()
			];

			$this->db->where('id', $user['id']);
			$this->db->update('user', $data);
			$this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Congratulation! Your account has been created. Please Login.</div>');
			redirect('auth');
		}
	}

	public function logout()
	{
		// $this->session->unset_userdata('email');
		$this->session->unset_userdata('username');
		$this->session->unset_userdata('role_id');

		$this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">You have been logout!</div>');
		redirect('auth');
	}

	public function blocked()
	{
		$this->load->view('auth/blocked');
	}
}
