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


    // VOLUME AIR
    function tagihan_volume($volume, $tahun, $bulan,$distrik)
    {
        return $this->db->query("SELECT * FROM `tagihan`, `wajib_pajak` WHERE   `wajib_pajak`.`id_wp` = `tagihan`.`id_wp` AND `wajib_pajak`.`hapus` = 0 AND `tagihan`.`volume` < $volume AND `tahun` = '$tahun' AND `id_bulan` = '$bulan' AND `wajib_pajak`.`usaha_distrik` = '$distrik' ORDER BY  `tagihan`.`id_wp` DESC" );
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


     // 	total tagihan
     function totalTagihan()
     {
         return $this->db->from("tagihan")
                         ->where("hapus", "0")
                         ->join('wajib_pajak', 'wajib_pajak.id_wp=tagihan.id_wp')
                         ->count_all_results();
     }
 
     // total non niaga [1]
     function totalTagihanNonNiaga()
     {
         return $this->db->from("tagihan")
                         ->where("hapus", "0")
                         ->where_in('wajib_pajak.usaha_kategori', '1')
                         ->join('wajib_pajak', 'wajib_pajak.id_wp=tagihan.id_wp')
                         ->count_all_results();
     }
 
     // total niaga kecil [2]
     function totalTagihanNiagaKecil()
     {
         return $this->db->from("tagihan")
                         ->where("hapus", "0")
                         ->where_in('wajib_pajak.usaha_kategori', '2')
                         ->join('wajib_pajak', 'wajib_pajak.id_wp=tagihan.id_wp')
                         ->count_all_results();
     }
 
     // total niaga kecil [3]
     function totalTagihanIndustriKecil()
     {
         return $this->db->from("tagihan")
                         ->where("hapus", "0")
                         ->where_in('wajib_pajak.usaha_kategori', '3')
                         ->join('wajib_pajak', 'wajib_pajak.id_wp=tagihan.id_wp')
                         ->count_all_results();
     }
 
     // total niaga besar [4]
     function totalTagihanNiagaBesar()
     {
         return $this->db->from("tagihan")
                         ->where("hapus", "0")
                         ->where_in('wajib_pajak.usaha_kategori', '4')
                         ->join('wajib_pajak', 'wajib_pajak.id_wp=tagihan.id_wp')
                         ->count_all_results();
     }
 
     // total industri besar [5]
     function totalTagihanIndustriBesar()
     {
         return $this->db->from("tagihan")
                         ->where("hapus", "0")
                         ->where_in('wajib_pajak.usaha_kategori', '5')
                         ->join('wajib_pajak', 'wajib_pajak.id_wp=tagihan.id_wp')
                         ->count_all_results();
     }
}


