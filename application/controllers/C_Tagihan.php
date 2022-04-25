<?php
defined('BASEPATH') or exit('No direct script access allowed');

class C_Tagihan extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('M_wajibpajak');
    }

    public function index()
    {
        //
    }



    // proses ubah
    public function prosesbuat_tagihan()
    {

        $id_bulan = $_GET['b'];
        $id_wp = $_GET['wp'];
        $status = $_GET['s'];

        $data = array(
            'id_bulan' => $id_bulan,
            'id_wp' => $id_wp,
            'volume' => '0', // nilai default
            'kualitas' => '0', // nilai default
            'status' => $status, // 1 = aktif, 0 = tidak_aktif, 3 = hapus
        );

        $this->M_wajibpajak->tambah($data, 'tagihan');
        // alert success 
        $this->session->set_flashdata('message', '
                <div class="alert alert-success alert-dismissible fade show" role="alert">
                    <strong>Berhasil!</strong> Data tagihan telah dibuat.
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                    </button>
                </div>
            ');
        redirect('admin/wajibpajak/tagihan/' . $id_wp);
    }
    // proses ubah status tagihan



    // proses ubah
    public function proses_buat_tagihan()
    {
        $role = $this->input->post('role');
        
        $id_wp = $this->input->post('id_wp'); // id wajib pajak
        $id_bulan = $this->input->post('id_bulan');
        $tahun = $this->input->post('tahun');
        $keterangan = $this->input->post('keterangan');
        $kualitas = $this->input->post('kualitas');
        $volume = $this->input->post('volume');

        $jumlah_sumur = $this->input->post('jumlah_sumur');
        $kedalaman_sumur = $this->input->post('kedalaman_sumur');

        $usaha_kategori = $this->input->post('usaha_kategori');
        $harga_baku = $this->input->post('harga_baku');
        $pajak_pabt = $this->input->post('pajak_pabt');
        $persentasi_sda = $this->input->post('persentasi_sda');
        $persentasi_kompensasi = $this->input->post('persentasi_kompensasi');

        $id_pengguna = $this->input->post('id_pengguna');

        $data = array(
            'id_wp' => $id_wp,
            'id_bulan' => $id_bulan,
            'tahun' => $tahun,
            'keterangan' => $keterangan, 
            'kualitas' => $kualitas, // nilai default
            'volume' => $volume, // nilai default

            'jumlah_sumur' => $jumlah_sumur, 
            'kedalaman_sumur' => $kedalaman_sumur, 

            'usaha_kategori' => $usaha_kategori,
            'harga_baku' => $harga_baku,
            'pajak_pabt' => $pajak_pabt,
            'persentasi_sda' => $persentasi_sda,
            'persentasi_kompensasi' => $persentasi_kompensasi,

            'id_pengguna' => $id_pengguna,

            'status' => '0', // 1 = aktif, 0 = tidak_aktif, 3 = hapus
        );

        $this->M_wajibpajak->tambah($data, 'tagihan');

        // alert success 
        $this->session->set_flashdata('message', '
                <div class="alert alert-success alert-dismissible fade show" role="alert">
                    <strong>Berhasil!</strong> Data tagihan telah dibuat.
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                    </button>
                </div>
            ');

        redirect($role.'/wajibpajak/tagihan/new/' . $id_wp . '?t=' . $tahun);
    }
    // proses ubah status tagihan


    public function prosesubah_status_tagihan($id)
    {
        $status = $_GET['s'];
        $id_wp = $_GET['wp'];

        $where = array(
            'id' => $id,
        );

        $data = array(
            'status' => $status, // 1 = aktif, 0 = tidak_aktif, 3 = hapus
        );

        $this->M_wajibpajak->ubah($where, $data, 'tagihan');
        // alert success 
        $this->session->set_flashdata('message', '
                <div class="alert alert-success alert-dismissible fade show" role="alert">
                    <strong>Berhasil!</strong> Data tagihan telah diubah.
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                    </button>
                </div>
            ');
        redirect('admin/wajibpajak/tagihan/' . $id_wp);
    }



    // proses ubah tagihan
    public function proses_ubah_tagihan()
    {
        $role = $this->input->post('role');
        
        $t = $this->input->post('t');
        $tahun = $this->input->post('tahun');

        $id_wp = $this->input->post('id_wp'); // id wajib pajak
        $id_bulan = $this->input->post('id_bulan');
        $tahun = $this->input->post('tahun');
        $keterangan = $this->input->post('keterangan');
        $kualitas = $this->input->post('kualitas');
        $volume = $this->input->post('volume');

        $jumlah_sumur = $this->input->post('jumlah_sumur');
        $kedalaman_sumur = $this->input->post('kedalaman_sumur');

        $usaha_kategori = $this->input->post('usaha_kategori');
        $harga_baku = $this->input->post('harga_baku');
        $pajak_pabt = $this->input->post('pajak_pabt');
        $persentasi_sda = $this->input->post('persentasi_sda');
        $persentasi_kompensasi = $this->input->post('persentasi_kompensasi');

        $where = array(
            'id' => $this->input->post('id')
        );

        $data = array(
            'id_wp' => $id_wp,
            'id_bulan' => $id_bulan,
            'tahun' => $tahun,
            'keterangan' => $keterangan, 
            'kualitas' => $kualitas, // nilai default
            'volume' => $volume, // nilai default

            'jumlah_sumur' => $jumlah_sumur, 
            'kedalaman_sumur' => $kedalaman_sumur, 

            'usaha_kategori' => $usaha_kategori,
            'harga_baku' => $harga_baku,
            'pajak_pabt' => $pajak_pabt,
            'persentasi_sda' => $persentasi_sda,
            'persentasi_kompensasi' => $persentasi_kompensasi,

            // 'status' => '0', // 1 = aktif, 0 = tidak_aktif, 3 = hapus
        );

        $this->M_wajibpajak->ubah($where, $data, 'tagihan');
        // alert success 
        $this->session->set_flashdata('message', '
                <div class="alert alert-success alert-dismissible fade show" role="alert">
                    <strong>Berhasil!</strong> Data tagihan telah diubah.
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                    </button>
                </div>
            ');

        redirect($role.'/wajibpajak/tagihan/new/' . $id_wp . '?t=' . $tahun);
    }


    // proses hapus
    public function hapus($id)
    {

        $id = $_GET['wp'];
        $id_wp = $_GET['wp'];

        $where = array(
            'id' => $id
        );

        $this->M_wajibpajak->hapus($where, 'tagihan');
        // alert success 
        $this->session->set_flashdata('message', '
            <div class="alert alert-success alert-dismissible fade show" role="alert">
                <strong>Berhasil!</strong> Data telah dihapus.
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
                </button>
            </div>
        ');

        redirect(base_url() . 'admin/wajibpajak/tagihan/' . $id_wp);
    }

    // proses hapus tagihan
    public function proses_hapus_tagihan()
    {

        $role = $this->input->post('role');

        $id = $this->input->post('id');
        $id_wp = $this->input->post('id_wp');
        $t = $this->input->post('t');

        $where = array(
            'id' => $id
        );

        $this->M_wajibpajak->hapus($where, 'tagihan');
        // alert success 
        $this->session->set_flashdata('message', '
			<div class="alert alert-danger alert-dismissible fade show" role="alert">
				<strong>Terhapus!</strong> Data telah dihapus.
				<button type="button" class="close" data-dismiss="alert" aria-label="Close">
				<span aria-hidden="true">&times;</span>
				</button>
			</div>
		');

        redirect(base_url($role.'/wajibpajak/tagihan/new/') . $id_wp . '?t=' . $t);
    }

    /*
	| ===========================================================
	| TAGIHAN
	| ===========================================================
	|*/
}
