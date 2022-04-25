<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Registrasi extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->library('form_validation');
    }

    public function index()
    {
        $this->registration();
    }


    public function registration()
    {
        $this->form_validation->set_rules('nama_lengkap', 'NamaLengkap', 'required|trim');

        $this->form_validation->set_rules('email', 'Email', 'required|trim|valid_email|is_unique[user.email]', [
            'is_unique' => 'This email has already registered!'
        ]);
        
        $this->form_validation->set_rules('kata_sandi1', 'Password', 'required|trim|min_length[3]|matches[kata_sandi2]', [
            'matches' => 'password dont match!',
            'matches' => 'Password too short'
        ]);
        $this->form_validation->set_rules('kata_sandi2', 'Password', 'required|trim|matches[kata_sandi1]');

        if ($this->form_validation->run() == false) {
            $this->load->view('login/registrasi');
        } else {
            $data = [
                'nama_lengkap' => htmlspecialchars($this->input->post('nama_lengkap', true)),
                'email' => htmlspecialchars($this->input->post('email', true)),
                'foto' => 'default-user.png',
                'kata_sandi' => password_hash($this->input->post('kata_sandi1'), PASSWORD_DEFAULT),
                'role_id' => 1,
                'is_active' => 1,
                'date_created' => time()
            ];

            $this->db->insert('user', $data);
            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Congratulation! Your account has been created. Please Login.</div>');
            redirect('login');
        }
    }



}