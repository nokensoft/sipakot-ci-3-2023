<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class M_pabt extends CI_Model
{
    // 	TAMPILKAN 
    function tampilkan_data($table)
    {
		return $this->db->get($table);
    }

    // BERSADARKAN DISTRIK 
    function berdasarkan_distrik($distrik)
    {
        return $this->db->get_where('wajib_pajak', 'usaha_distrik', $distrik);
    }
}


