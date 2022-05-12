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

    // Data Distrik
    function wajib_pajak_distrik()
    {
        $data = [
                    [
                        "id_distrik" => "abepura",
                        "nama_distrik" => "Abepura"
                    ],
                    [
                        "id_distrik" => "heram",
                        "nama_distrik" => "Heram"
                    ],
                    [
                        "id_distrik" => "jprutara",
                        "nama_distrik" => "Jayapura Utara"
                    ],
                    [
                        "id_distrik" => "jprselatan",
                        "nama_distrik" => "Jayapura Selatan"
                    ],
                    [
                        "id_distrik" => "muaratami",
                        "nama_distrik" => "Muara Tami"
                    ],
                    

                ];
        return $data;
    }
    function wajib_pajak_sortir_distrik($id)
    {
        return $this->db->where('usaha_distrik', $id)->get('wajib_pajak')->result_array();
    }

}
