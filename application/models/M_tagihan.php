<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class M_tagihan extends CI_Model
{
    // 	TAMBAH 
    function tambah()
    {
        //
    }

    // 	BACA 
    function baca($table)
	{
		return $this->db->get($table);
	}

    // 	BACA DETAIL WAJIB PAJAK
    function baca_detail_wajib_pajak($table)
	{
		return $this->db->where('id_wp', $this->uri->segment(5))->get($table);
	}

    // 	BACA DETAIL WAJIB PAJAK
    function baca_sunting_tagihan($table)
	{
        $id = $_GET['id'];
		return $this->db->where('id', $id)->get($table);
	}







    //  =========================
    //  ROLE WAJIB PAJAK
    // 	BACA DETAIL WAJIB PAJAK
    function baca_tagihan($table)
	{
		return $this->db
                    ->where('id_wp', $this->uri->segment(5))
                    ->where('tahun', $_GET['t'])
                    ->get($table);

        return $this->db->query($query);
	}

    // 	BACA DETAIL WAJIB PAJAK
    function wajib_pajak_baca_tagihan($table)
	{
		return $this->db
                    ->where('id_wp', $this->session->userdata("id_wp"))
                    ->where('tahun', $_GET['t'])
                    ->get($table);

        return $this->db->query($query);
	}

    function unggah_bukti_pembayaran($data, $id_tagihan)
	{
		$this->db->where('id', $id_tagihan);
        return $this->db->update('tagihan', $data);
	}

    // 	BACA INFO TAGIHAN
    function baca_info_tagihan($table, $id)
	{
        // $id = $_GET['id'];
		return $this->db->where('id', $id)->get($table);
	}

    

    // 	BACA DETAIL WAJIB PAJAK
    function baca_detail_wajib_pajak_info_tagihan($table)
	{
		return $this->db->where('id_wp', $this->session->userdata("id_wp"))->get($table);
	}

    // END ROLE WAJIB PAJAK
    // ==========================









    // 	BACA DETAIL TAGIHAN
    function baca_detail_tagihan($table)
	{
		return $this->db
        // ->where('id_wp', $this->session->userdata("id_wp"))
        ->where('id', $_GET['id'])
        ->get($table);
	}

    // 	
    function harga_baku($table)
	{
		return $this->db->where('judul', 'harga_baku')->get($table);
	}
    
    // 	
    function presentasi_pabt($table)
	{
		return $this->db->where('judul', 'pajak_pabt')->get($table);
	}

    // 
    function baca_persentasi_sda($table)
    {
        return $this->db->where('kriteria', 'A')->get($table);
    }

    // 
    function baca_persentasi_kompensasi($table)
    {
        return $this->db->where('kriteria', 'B')->get($table);
    }

    // 	DETAIL
    function detail()
    {
        // 
    }

    // 	UBAH
    function ubah()
    {
        // 
    }

    // 	HAPUS
    function hapus()
    {
        // 
    }
}


