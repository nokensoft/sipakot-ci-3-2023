<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class M_wajibpajak extends CI_Model
{

	//  wajib_pajak_hapus_0
    function wajib_pajak_hapus_0()
    {
        return $this->db->where('hapus', '0')->get('wajib_pajak')->result_array();
    }

	//  wajib_pajak_hapus_1
    function wajib_pajak_hapus_1()
    {
        return $this->db->where('hapus', '1')->get('wajib_pajak')->result_array();
    }


	//penomoran
	function kode()
	{
		$this->db->select('RIGHT(wajib_pajak.id_wp,2) as id_wp', FALSE);
		$this->db->order_by('id_wp', 'DESC');
		$this->db->limit(1);
		$query = $this->db->get('wajib_pajak');  //cek dulu apakah ada sudah ada kode di tabel.    
		if ($query->num_rows() <> 0) {
			//cek kode jika telah tersedia    
			$data = $query->row();
			$kode = intval($data->id_wp) + 1;
		} else {
			$kode = 1;  //cek jika kode belum terdapat pada table
		}
		$tgl = date('dmY');
		$batas = str_pad($kode, 3, "0", STR_PAD_LEFT);
		$kodetampil = "WP" . $tgl . $batas;  //format kode
		return $kodetampil;
	}

	// FUNGSI CRUD
	// fungsi untuk mengambil data dari database
	function baca($table)
	{
		return $this->db->get($table);
	}

	// ambil data detail profil usaha dari database
	function baca_detail_profil_usaha()
	{
		return $this->db->get_where('wajib_pajak', 'id_wp', $this->session->userdata('id_wp'));
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

    // 	UBAH PROFIL
    function ubah_profil($data, $id_wp)
	{
		$this->db->where('id_wp', $id_wp);
		$this->db->update('wajib_pajak', $data);
	}

	// PINDAH KE DAFTAR TERHAPUS
	function terhapus($where, $data, $table)
	{
		$this->db->where($where);
		$this->db->update($table, $data);
	}

	// HAPUS PERMANEN
	function hapus_permanen($where, $table)
	{
		$this->db->delete($table, $where);
	}

	// 	UBAH FOTO
    function ubah_foto($data, $id_wp)
    {
        $this->db->where('id_wp', $id_wp);
        $this->db->update('wajib_pajak', $data);
    }

	// fungsi untuk menghapus data dari database
	function hapus($where, $table)
	{
		$this->db->delete($table, $where);
	}



	// Menghitung Jumlah

	 // 	total wajib pajak
	 function totalWajibPajak()
	 {
		 return $this->db->from("wajib_pajak")
						 ->where("hapus", "0")
						 ->count_all_results();
	 }
 
	 // total wajib pajak : non niaga [1]
	 function totalNonNiaga()
	 {
		 return $this->db->from("wajib_pajak")
						 ->where("hapus", "0")
						 ->where("usaha_kategori", "1")
						 ->count_all_results();
	 }
 
	 // total wajib pajak : niaga kecil [2]
	 function totalNiagaKecil()
	 {
		 return $this->db->from("wajib_pajak")
						 ->where("hapus", "0")
						 ->where("usaha_kategori", "2")
						 ->count_all_results();
	 }
 
	 // total wajib pajak : industri kecil [3]
	 function totalIndustriKecil()
	 {
		 return $this->db->from("wajib_pajak")
						 ->where("hapus", "0")
						 ->where("usaha_kategori", "3")
						 ->count_all_results();
	 }
 
	 // total wajib pajak : niaga besar [4]
	 function totalNiagaBesar()
	 {
		 return $this->db->from("wajib_pajak")
						 ->where("hapus", "0")
						 ->where("usaha_kategori", "4")
						 ->count_all_results();
	 }
 
	 // total wajib pajak : industri besar [5]
	 function totalIndustriBesar()
	 {
		 return $this->db->from("wajib_pajak")
						 ->where("hapus", "0")
						 ->where("usaha_kategori", "5")
						 ->count_all_results();
	 }












	

    // 	UBAH PROFIL
    function detail_profil()
	{
		$this->db->where('id_wp', $this->session->userdata('id_wp'));
		return $this->db->get('wajib_pajak')->row_array();
        // return $this->db->query($query)->result_array();
	}
	
	// AKHIR FUNGSI CRUD
}
