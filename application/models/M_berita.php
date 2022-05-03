<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class M_berita extends CI_Model
{
    // CRUD
    // fungsi untuk mengambil data dari database
    function baca_berita($table)
    {
        return $this->db->get($table);
    }

    // fungsi untuk mengambil data dari database
    function beranda_berita($table)
    {

        $query = $this->db->get_where($table, array('is_active' => '1'));
        return $query;
       
    }

    // fungsi untuk menginput data ke database
    function tambah($data, $table)
    {
        $this->db->insert($table, $data);
    }

    function detail($id)
    {
        
        // tampilkan salah satu data secara detail
        $query = "SELECT * FROM `berita` WHERE `id` = $id";

        return $this->db->query($query)->row_array();
    }

    // 	UBAH 
    function ubah($data, $id)
	{
		$this->db->where('id', $id);
		$this->db->update('berita', $data);
	}

    // fungsi untuk menghapus data dari database
    function hapus($where, $table)
    {
        $this->db->delete($table, $where);
    }
}