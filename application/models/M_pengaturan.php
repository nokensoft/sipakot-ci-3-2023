<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class M_pengaturan extends CI_Model
{
    // fungsi untuk mengedit data
    function detail()
    {
        return $this->db->get('pengaturan')->row_array();
    }

    function pengaturan()
    {
        return $this->db->get('opsi');
    }

    // header > title
    function judul_situs()
    {
		return $this->db->where('judul', 'judul_situs')->get('opsi')->row_array();
    }

    // footer > text
    function footer_text()
    {
        return $this->db->where('judul', 'footer_text')->get('opsi')->row_array();
    }

    // footer > text > right
    function footer_text_right()
    {
        return $this->db->where('judul', 'footer_text_right')->get('opsi')->row_array();
    }


}
