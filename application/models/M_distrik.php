<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class M_distrik extends CI_Model
{
    function totalDistrikAbepura()
    {
        return $this->db->from("wajib_pajak")
                        ->where("usaha_distrik", "abepura")
                        ->count_all_results();
    }

    function totalDistrikHeram()
    {
        return $this->db->from("wajib_pajak")
                        ->where("usaha_distrik", "heram")
                        ->count_all_results();
    }

    function totalDistrikJprutara()
    {
        return $this->db->from("wajib_pajak")
                        ->where("usaha_distrik", "jprutara")
                        ->count_all_results();
    }

    function totalDistrikJprselatan()
    {
        return $this->db->from("wajib_pajak")
                        ->where("usaha_distrik", "jprselatan")
                        ->count_all_results();
    }

    function totalDistrikMuaratami()
    {
        return $this->db->from("wajib_pajak")
                        ->where("usaha_distrik", "muaratami")
                        ->count_all_results();
    }

}
