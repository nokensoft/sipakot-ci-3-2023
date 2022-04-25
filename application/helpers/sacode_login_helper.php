<?php

function is_logged_in()
{
    $ci = get_instance();
    if (!$ci->session->userdata('email')) {
        $ci->session->set_flashdata('message', '
        <div class="alert alert-danger alert-dismissible fade show" role="alert">
            <strong>Maaf!</strong> Nama pengguna dan kata sandi harus dimasukan dengan benar.
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
            </button>
        </div>
        ');
        redirect('admin/masuk');
    } else {
        $role_id = $ci->session->userdata('role_id');
        $menu = $ci->uri->segment(1);

        $queryMenu = $ci->db->get_where('user_menu', ['menu' => $menu])->row_array();
        $menu_id = $queryMenu['id'];

        $userAccess = $ci->db->get_where('user_access_menu', [
            'role_id' => $role_id,
            'menu_id' => $menu_id
        ]);

        // if ($userAccess->num_rows() < 1) {
        //     $ci->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Silahkan login untuk mengakses.</div>');
        //     redirect('auth/blocked');
        // }

        // $userAccess = $ci->db->get_where('user_access_menu', [
        //     'role_id' => $ci->session->userdata('role_id'),
        //     'menu_id' => $ci->uri->segment(1)
        //     ]);

        if ($userAccess->num_rows() < 1) {
                $ci->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Silahkan login untuk mengakses.</div>');
                // redirect('auth/blocked');
                redirect('admin/keluar');
            }

    }
}



function is_logged_in_wajibpajak()
{
    $ci = get_instance();
    if (!$ci->session->userdata('email')) {
        $ci->session->set_flashdata('message', '
        <div class="alert alert-danger alert-dismissible fade show" role="alert">
            <strong>Maaf!</strong> Nama pengguna dan kata sandi harus dimasukan dengan benar.
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
            </button>
        </div>
        ');
        redirect('wajibpajak/masuk');

    } 
    // else {
    //     $role_id = $ci->session->userdata('role_id');
    //     $menu = $ci->uri->segment(1);

    //     $queryMenu = $ci->db->get_where('user_menu', ['menu' => $menu])->row_array();
    //     $menu_id = $queryMenu['id'];

    //     $userAccess = $ci->db->get_where('user_access_menu', [
    //         'role_id' => $role_id,
    //         'menu_id' => $menu_id
    //     ]);

    //     // if ($userAccess->num_rows() < 1) {
    //     //     $ci->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Silahkan login untuk mengakses.</div>');
    //     //     redirect('auth/blocked');
    //     // }

    //     // $userAccess = $ci->db->get_where('user_access_menu', [
    //     //     'role_id' => $ci->session->userdata('role_id'),
    //     //     'menu_id' => $ci->uri->segment(1)
    //     //     ]);

    //     if ($userAccess->num_rows() < 1) {
    //             $ci->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Silahkan login untuk mengakses.</div>');
    //             // redirect('auth/blocked');
    //             redirect('wajibpajak/keluar');
    //         }

    // }
}

