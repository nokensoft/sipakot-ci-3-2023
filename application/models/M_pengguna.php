<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class M_pengguna extends CI_Model
{
    //penomoran
    function kode()
    {
        $this->db->select('RIGHT(pengguna.id_pengguna,2) as id_pengguna', FALSE);
        $this->db->order_by('id_pengguna', 'DESC');
        $this->db->limit(1);
        $query = $this->db->get('pengguna');  //cek dulu apakah ada sudah ada kode di tabel.    
        if ($query->num_rows() <> 0) {
            //cek kode jika telah tersedia    
            $data = $query->row();
            $kode = intval($data->id_pengguna) + 1;
        } else {
            $kode = 1;  //cek jika kode belum terdapat pada table
        }
        $tgl = date('dmY');
        $batas = str_pad($kode, 3, "0", STR_PAD_LEFT);
        $kodetampil = "DP" . $tgl . $batas;  //format kode
        return $kodetampil;
    }

    // FUNGSI CRUD
    // fungsi untuk mengambil data dari database
    function baca($table)
    {
        // if ($this->db->order_by('nama_usaha', 'DESC')) {
        // 	return $this->db->get($table);
        // } else {
        // 	return $this->db->get($table);
        // };
        return $this->db->get($table);
    }

    // fungsi untuk menginput data ke database
    function tambah($data, $table)
    {
        $this->db->insert($table, $data);
    }

    // fungsi untuk mengedit data
    function edit($where, $table)
    {
        return $this->db->get_where($table, $where);
    }

    // fungsi untuk mengupdate atau mengubah data di database
    function ubah($where, $data, $table)
    {
        $this->db->where($where);
        $this->db->update($table, $data);
    }

    // fungsi untuk menghapus data dari database
    function hapus($where, $table)
    {
        $this->db->delete($table, $where);
    }
    // AKHIR FUNGSI CRUD

}
