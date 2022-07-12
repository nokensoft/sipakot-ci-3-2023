<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class M_kelurahan extends CI_Model
{

    // Data Distrik
    function wajib_pajak_kelurahan()
    {
        $data = [

            // Abepura
                    [
                        "id_distrik" => "abepura",
                        "id_kelurahan" => "asano",
                        "nama_kelurahan" => "Asano"
                    ],
                    [
                        "id_distrik" => "abepura",
                        "id_kelurahan" => "awiyo",
                        "nama_kelurahan" => "Awiyo"
                    ],
                    [
                        "id_distrik" => "abepura",
                        "id_kelurahan" => "kotabaru",
                        "nama_kelurahan" => "Kota Baru"
                    ],
                    [
                        "id_distrik" => "abepura",
                        "id_kelurahan" => "yobe",
                        "nama_kelurahan" => "Yobe"
                    ],
                    [
                        "id_distrik" => "abepura",
                        "id_kelurahan" => "abepantai",
                        "nama_kelurahan" => "Abe Pantai"
                    ],
                    [
                        "id_distrik" => "abepura",
                        "id_kelurahan" => "vim",
                        "nama_kelurahan" => "Vim"
                    ],
                    [
                        "id_distrik" => "abepura",
                        "id_kelurahan" => "whymhorock",
                        "nama_kelurahan" => "Why Mhorock"
                    ],
                    [
                        "id_distrik" => "abepura",
                        "id_kelurahan" => "wahno",
                        "nama_kelurahan" => "Wahno"
                    ],
                   
                   
                    
                    // heram
                    [
                        "id_distrik" => "heram",
                        "id_kelurahan" => "waena",
                        "nama_kelurahan" => "Waena"
                    ],
                    [
                        "id_distrik" => "heram",
                        "id_kelurahan" => "yabansa",
                        "nama_kelurahan" => "Yabansai"
                    ],
                    [
                        "id_distrik" => "heram",
                        "id_kelurahan" => "hedam",
                        "nama_kelurahan" => "Hedam"
                    ],

                      // heram
                    [
                        "id_distrik" => "jprutara",
                        "id_kelurahan" => "gurabesi",
                        "nama_kelurahan" => "Gurabesi"
                    ],
                    [
                        "id_distrik" => "jprutara",
                        "id_kelurahan" => "mandala",
                        "nama_kelurahan" => "Mandala"
                    ],
                    [
                        "id_distrik" => "jprutara",
                        "id_kelurahan" => "bhayangkara",
                        "nama_kelurahan" => "Bhayangkara"
                    ],
                    [
                        "id_distrik" => "jprutara",
                        "id_kelurahan" => "trikora",
                        "nama_kelurahan" => "Trikora"
                    ],
                    [
                        "id_distrik" => "jprutara",
                        "id_kelurahan" => "angkasapura",
                        "nama_kelurahan" => "Angkasapura"
                    ],
                    [
                        "id_distrik" => "jprutara",
                        "id_kelurahan" => "imbi",
                        "nama_kelurahan" => "Imbi"
                    ],
                    [
                        "id_distrik" => "jprutara",
                        "id_kelurahan" => "tanjungria",
                        "nama_kelurahan" => "Tanjung Ria"
                    ],


                    // jayapura selatan
                    [
                        "id_distrik" => "jprselatan",
                        "id_kelurahan" => "entrop",
                        "nama_kelurahan" => "Entrop"
                    ],
                    [
                        "id_distrik" => "jprselatan",
                        "id_kelurahan" => "hamadi",
                        "nama_kelurahan" => "Hamadi"
                    ],
                    [
                        "id_distrik" => "jprselatan",
                        "id_kelurahan" => "numbay",
                        "nama_kelurahan" => "Numbay"
                    ],
                    [
                        "id_distrik" => "jprselatan",
                        "id_kelurahan" => "argapura",
                        "nama_kelurahan" => "Argapura "
                    ],


                    // muaratami
                    [
                        "id_distrik" => "muaratami",
                        "id_kelurahan" => "koyabarat",
                        "nama_kelurahan" => "Koya barat "
                    ],
                    [
                        "id_distrik" => "muaratami",
                        "id_kelurahan" => "koyatimue",
                        "nama_kelurahan" => "Koya timur "
                    ],
                    
                    
                    

                ];
        return $data;
    }

    function wajib_pajak_sortir_kelurahan($kelurahan, $distrik)
    {
         $this->db->where('usaha_kelurahan', $kelurahan); 
         return $this->db->where('usaha_distrik', $distrik)->get('wajib_pajak')->result_array();

    }
   
}
