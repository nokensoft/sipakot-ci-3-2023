<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class M_opsi extends CI_Model
{

    //  =========================
    //  DASBOR INFO
    //  =========================



    //  harga baku
    function dasbor_info_harga_baku()
    {
        return $this->db->where('judul', 'harga_baku')->get('opsi')->row_array();
    }

    //  persentasi pabt
    function dasbor_info_persentasi_pabt()
    {
        return $this->db->where('judul', 'pajak_pabt')->get('opsi')->row_array();
    }

    //  persentasi sda
    function dasbor_info_persentasi_sda()
    {
        return $this->db->where('kriteria', 'A')->get('pajak_hda')->row_array();
    }

    //  persentasi kompensasi
    function dasbor_info_persentasi_kompensasi()
    {
        return $this->db->where('kriteria', 'B')->get('pajak_hda')->row_array();
    }

    //  wajib pajak baru
    function dasbor_info_wajib_pajak_baru()
    {
        // return $this->db->where('hapus', '0')->order_by('id_wp', 'DESC')->get('wajib_pajak')->result_array();
        return $this->db->where('hapus', '0')->order_by('id_wp', 'DESC')->limit('10')->get('wajib_pajak')->result_array();
    }

    //  tagihan baru
    function dasbor_info_tagihan_baru()
    {
        return $this->db->order_by('id', 'DESC')->get('tagihan')->result_array();
        // return $this->db->order_by('id', 'DESC')->limit('20')->get('tagihan')->result_array();
    }



    //  =========================
    //  END DASBOR INFO
    //  =========================















    

    //  =========================
    //  WAJIB PAJAK
    //  =========================



    //  tagihan baru
    function wajib_pajak_kategori_usaha()
    {
        return $this->db->order_by('id', 'ASC')->get('pajak_kk')->result_array();
    }

    //  wajib pajak > rekapan
    function wajib_pajak_sortir($id)
    {
        // return $this->db->order_by('id', 'DESC')->get('wajib_pajak')->result_array();
        return $this->db->where('usaha_kategori', $id)->get('wajib_pajak')->result_array();
    }
    

    //  =========================
    //  END WAJIB PAJAK
    //  =========================

















    

    //  =========================
    //  TENTANG PAJAK
    //  =========================



    //  persentasi pabt
    function tentang_pajak_persentasi_ksda()
    {
        return $this->db->get('pajak_ksda')->result_array();
    }

    //  persentasi pabt
    function tentang_pajak_persentasi_kk()
    {
        return $this->db->get('pajak_kk')->result_array();
    }

    //  persentasi pabt
    function tentang_pajak_persentasi_hda()
    {
        return $this->db->get('pajak_hda')->result_array();
    }

    //  persentasi dpp
    function tentang_pajak_persentasi_dpp()
    {
        return $this->db->where('judul', 'pajak_dpp')->get('opsi')->row_array();
    }

    //  persentasi npa
    function tentang_pajak_persentasi_npa()
    {
        return $this->db->where('judul', 'pajak_npa')->get('opsi')->row_array();
    }

    //  persentasi pabt
    function tentang_pajak_persentasi_pabt()
    {
        return $this->db->where('judul', 'pajak_pabt')->get('opsi')->row_array();
    }
    

    //  =========================
    //  END TENTANG PAJAK
    //  =========================

}