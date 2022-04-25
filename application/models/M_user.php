<?php
defined('BASEPATH') or exit('No direct script access allowed');

class M_user extends CI_Model
{


    // TAMABH
    function tambah($data, $table)
    {
        $this->db->insert($table, $data);
    }

    // 	BACA 
    function baca()
    {
        $query = "SELECT `user`.*,`user_role`.`role`
        FROM `user` JOIN `user_role`
        ON `user`. `role_id`= `user_role`.`id` ";

        return $this->db->query($query)->result_array();
    }


    function baca_pengguna($table)
	{
        return $this->db->get($table);        
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




    // BACA ROLE
    function baca_role()
    {
        $query = "SELECT * FROM `user_role`";
        return $this->db->query($query)->result_array();
    }

    // 	DETAIL
    function detail($id)
    {
        
        // tampilkan salah satu data secara detail
        $query = "SELECT `user`.*,`user_role`.`role`
        FROM `user` JOIN `user_role`
        ON `user`. `role_id`= `user_role`.`id`
        WHERE `user`. `id` = $id";

        return $this->db->query($query)->row_array();
    }

    // 	DETAIL PROFIL
    function detail_profil()
    {
        $id = $this->session->userdata('id');
        // tampilkan salah satu data secara detail
        $query = "SELECT `user`.*,`user_role`.`role`
        FROM `user` JOIN `user_role`
        ON `user`. `role_id`= `user_role`.`id`
        WHERE `user`. `id` = $id";

        return $this->db->query($query)->row_array();
    }

    // 	UBAH PROFIL
    function ubah($data, $id)
	{
		$this->db->where('id', $id);
		$this->db->update('user', $data);
	}


    // 	UBAH FOTO
    function ubah_foto($data, $id)
    {
        $this->db->where('id', $id);
        $this->db->update('user', $data);
    }


    // UBAH USERNAME
    function ubah_username()
    {

        $username = $this->input->post('username', TRUE);

        // Membuat session username baru
        $session_data = [
            'username' => $username,
        ];
        $this->session->set_userdata($session_data);

        $data = array(
            'username' => $username,
        );

        $this->db->where('id', $this->session->userdata('id'));
        $this->db->update('user', $data);

        $this->session->set_flashdata('message', '
                <div class="alert alert-success alert-dismissible fade show" role="alert">
                    <strong>Berhasil!</strong> Data telah diubah.
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                    </button>
                </div>
            ');
    }

    // 	HAPUS
    function hapus($id)
    {
        $this->db->where('id', $id)->delete('user'); 
    }









    // UNGGAH GAMBAR
    function unggahGambar()
    {



        $config['upload_path'] = './assets/img/users/';
        $config['allowed_types'] = 'gif|jpg|png';
        $config['max_size'] = 100;
        $config['max_width'] = 1024;
        $config['max_height'] = 768;
        $config['file_name'] = url_title(time());

        $this->load->library('upload', $config);

        if (!$this->upload->do_upload('userfile')) {
            $error = array('error' => $this->upload->display_errors());
            $this->session->set_flashdata('message', '
                <div class="alert alert-danger alert-dismissible fade show" role="alert">
                    <strong>Oops!</strong> Terjadi kesalahan, silahkan coba lagi.
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                    </button>
                </div>
            ');
        } else {
            $image = $this->upload->data();

            $data = array('image' => $image['file_name']);

            $this->load->library('image_lib', $config);

            $this->db->where('id', $this->session->userdata('id'));
            $this->db->update('user', $data);
            $this->session->set_flashdata('message', '
                <div class="alert alert-success alert-dismissible fade show" role="alert">
                    <strong>Berhasil!</strong> Gambar telah diunggah.
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                    </button>
                </div>
            ');
        }
    }



    // EXMAPLE

    function update_pajak()
    {
        $k1p = $this->input->post('k1p', TRUE);
        $this->db->where('k1p', $k1p)->update('tbpajak', $k1p);
    }





}