<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class M_pabt extends CI_Model
{
    // 	TAMPILKAN 
    function tampilkan_data($table)
    {
        $this->db->from($table);
		$this->db->order_by('id_wp','desc');
		return $this->db->get();
    }

    // BERSADARKAN DISTRIK 
    function berdasarkan_distrik($distrik)
    {
        return $this->db->get_where('wajib_pajak', 'usaha_distrik', $distrik);
    }

       // BERSADARKAN wajib pajak 
    function berdasarkan_wp($id)
    {
        return $data = $this->db->where('id_wp', $id)->get('wajib_pajak');
    }
    // function pabt_semua($id)
    // {
    //     return $data = $this->db->query("SELECT * FROM wajib_pajak, tagihan WHERE wajib_pajak.id_wp = tagihan.id_wp ORDER BY YEAR(tagihan.tahun), MONTH(tagihan.id_bulan) ");
    // }
}


