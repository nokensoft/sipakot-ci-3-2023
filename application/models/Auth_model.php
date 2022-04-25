<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Auth_model extends CI_Model
{

    // 	CREATE 
    function tambah()
    {
        // menambahkan data ke database
    }

    // 	READ 
    function baca()
    {
        // tampilkan semua data
        return $this->db->get_where('user', ['username' => $this->session->userdata('username')])->result_array();
    }

    // 	READ DETAIL
    function detail()
    {
        // tampilkan salah satu data secara detail
        return $this->db->get_where('user', ['username' => $this->session->userdata('username')])->row_array();
    }

    // 	UPDATE
    function ubah()
    {
        // 
    }

    // 	UPDATE
    function hapus()
    {
        // 
    }
}
