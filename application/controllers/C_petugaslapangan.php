<?php
defined('BASEPATH') or exit('No direct script access allowed');

class C_petugaslapangan extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('M_wajibpajak');
    }

    public function index()
    {
        $this->dasbor();
    }

    public function dasbor()
    {
        $this->load->view('wajibpajak/partials/header');
        $this->load->view('wajibpajak/dasbor');
        $this->load->view('wajibpajak/partials/footer');
    }

    public function semua()
    {

        $this->load->view('wajibpajak/partials/header');
        $this->load->view('wajibpajak/tagihan');
        $this->load->view('wajibpajak/partials/footer');
    }

    // form tambah
    public function baru()
    {
        $this->load->view('admin/wajibpajakbaru');
    }

    // prosestambah
    public function prosestambah()
    {

        $config['upload_path'] = './assets/images/gambar_wp/';
        $config['allowed_types'] = 'jpg|png|jpeg|gif';
        $config['max_size'] = '2048';  //2MB max
        $config['max_width'] = '4480'; // pixel
        $config['max_height'] = '4480'; // pixel
        $config['file_name'] = $_FILES['foto']['name'];

        $this->load->library('upload', $config);
        if (!$this->upload->do_upload('foto')) {
            echo "gagal tambah";
        } else {
            $foto = $this->upload->data();

            $id_wp = $this->input->post('id_wp');
            $nama_usaha = $this->input->post('nama_usaha');
            $nama_pemilik = $this->input->post('nama_pemilik');
            $alamat = $this->input->post('alamat');
            $no_tlp = $this->input->post('no_tlp');
            $email = $this->input->post('email');
            $kategori_usaha = $this->input->post('kategori_usaha');
            $luas_bangunan = $this->input->post('luas_bangunan');
            $luas_lahan = $this->input->post('luas_lahan');
            $izin = $this->input->post('izin');
            $dokumen = $this->input->post('dokumen');
            $jumlah_kamar = $this->input->post('jumlah_kamar');
            $jumlah_penghuni = $this->input->post('jumlah_penghuni');
            $jumlah_kursi = $this->input->post('jumlah_kursi');

            $data = array(
                'id_wp' => $id_wp,
                'nama_usaha' => $nama_usaha,
                'nama_pemilik' => $nama_pemilik,
                'foto' => $foto['file_name'],
                'alamat' => $alamat,
                'no_tlp' => $no_tlp,
                'email' => $email,
                'kategori_usaha' => $kategori_usaha,
                'luas_bangunan' => $luas_bangunan,
                'luas_lahan' => $luas_lahan,
                'izin' => $izin,
                'dokumen' => $dokumen,
                'jumlah_kamar' => $jumlah_kamar,
                'jumlah_penghuni' => $jumlah_penghuni,
                'jumlah_kursi' => $jumlah_kursi,
            );
            $this->M_wajibpajak->tambah($data, 'wajib_pajak');
            // alert success 
            $this->session->set_flashdata('message', '
                <div class="alert alert-success alert-dismissible fade show" role="alert">
                    <strong>Berhasil!</strong> Data telah ditambahkan.
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                    </button>
                </div>
            ');
            redirect(base_url() . 'petugaslapangan/wajibpajak');
        }
    }

    // form ubah
    public function ubah()
    {
        echo 'ubah';
    }

    // proses ubah
    public function prosesubah()
    {
        $config['upload_path'] = './assets/images/gambar_wp/';
        $config['allowed_types'] = 'jpg|png|jpeg|gif';
        $config['max_size'] = '2048';  //2MB max
        $config['max_width'] = '4480'; // pixel
        $config['max_height'] = '4480'; // pixel
        $config['file_name'] = $_FILES['foto']['name'];

        $this->load->library('upload', $config);
        if (!$this->upload->do_upload('foto')) {
            $id_wp = $this->input->post('id_wp');
            $nama_usaha = $this->input->post('nama_usaha');
            $nama_pemilik = $this->input->post('nama_pemilik');
            $alamat = $this->input->post('alamat');
            $no_tlp = $this->input->post('no_tlp');
            $email = $this->input->post('email');
            $kategori_usaha = $this->input->post('kategori_usaha');
            $luas_bangunan = $this->input->post('luas_bangunan');
            $luas_lahan = $this->input->post('luas_lahan');
            $izin = $this->input->post('izin');
            $dokumen = $this->input->post('dokumen');
            $jumlah_kamar = $this->input->post('jumlah_kamar');
            $jumlah_penghuni = $this->input->post('jumlah_penghuni');
            $jumlah_kursi = $this->input->post('jumlah_kursi');

            $where = array(
                'id_wp' => $id_wp
            );

            $data = array(
                'nama_usaha' => $nama_usaha,
                'nama_pemilik' => $nama_pemilik,
                'alamat' => $alamat,
                'no_tlp' => $no_tlp,
                'email' => $email,
                'kategori_usaha' => $kategori_usaha,
                'luas_bangunan' => $luas_bangunan,
                'luas_lahan' => $luas_lahan,
                'izin' => $izin,
                'dokumen' => $dokumen,
                'jumlah_kamar' => $jumlah_kamar,
                'jumlah_penghuni' => $jumlah_penghuni,
                'jumlah_kursi' => $jumlah_kursi
            );

            $this->M_wajibpajak->ubah($where, $data, 'wajib_pajak');
            $this->session->set_flashdata('message', 'Data berhasil diubah');
            redirect('petugaslapangan/wajibpajakubah/' . $id_wp);
        } else {
            $foto = $this->upload->data();

            $id_wp = $this->input->post('id_wp');
            $nama_usaha = $this->input->post('nama_usaha');
            $nama_pemilik = $this->input->post('nama_pemilik');
            $alamat = $this->input->post('alamat');
            $no_tlp = $this->input->post('no_tlp');
            $email = $this->input->post('email');
            $kategori_usaha = $this->input->post('kategori_usaha');
            $luas_bangunan = $this->input->post('luas_bangunan');
            $luas_lahan = $this->input->post('luas_lahan');
            $izin = $this->input->post('izin');
            $dokumen = $this->input->post('dokumen');
            $jumlah_kamar = $this->input->post('jumlah_kamar');
            $jumlah_penghuni = $this->input->post('jumlah_penghuni');
            $jumlah_kursi = $this->input->post('jumlah_kursi');

            $where = array(
                'id_wp' => $id_wp
            );

            $data = array(
                'nama_usaha' => $nama_usaha,
                'nama_pemilik' => $nama_pemilik,
                'foto' => $foto['file_name'],
                'alamat' => $alamat,
                'no_tlp' => $no_tlp,
                'email' => $email,
                'kategori_usaha' => $kategori_usaha,
                'luas_bangunan' => $luas_bangunan,
                'luas_lahan' => $luas_lahan,
                'izin' => $izin,
                'dokumen' => $dokumen,
                'jumlah_kamar' => $jumlah_kamar,
                'jumlah_penghuni' => $jumlah_penghuni,
                'jumlah_kursi' => $jumlah_kursi
            );

            $this->M_wajibpajak->ubah($where, $data, 'wajib_pajak');
            // alert success 
            $this->session->set_flashdata('message', '
                <div class="alert alert-success alert-dismissible fade show" role="alert">
                    <strong>Berhasil!</strong> Data telah diubah.
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                    </button>
                </div>
            ');
            redirect('petugaslapangan/wajibpajakubah/' . $id_wp);
        }
    }

    // proses hapus
    public function hapus($id_wp)
    {
        $where = array(
            'id_wp' => $id_wp
        );

        $this->M_wajibpajak->hapus($where, 'wajib_pajak');
        // alert success 
        $this->session->set_flashdata('message', '
            <div class="alert alert-success alert-dismissible fade show" role="alert">
                <strong>Berhasil!</strong> Data telah dihapus.
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
                </button>
            </div>
        ');

        redirect(base_url() . 'petugaslapangan/wajibpajak');
    }

    public function prosestambah_npa()
    {
        $data = array(
            'id_ksda' => $this->input->post('id_ksda'),
            'ket' => $this->input->post('ket')
        );
        $this->M_wajibpajak->tambah($data, 'komponen_sda');
        redirect('petugaslapangan/nilaiperolehanair');
    }

    /*
	| ===========================================================
	| TAGIHAN
	| ===========================================================
	|*/

    // Data tagihan 
    public function tagihan()
    {
        $this->load->view('petugaslapangan/partials/header');
        $this->load->view('petugaslapangan/wajibpajak/tagihan');
        $this->load->view('petugaslapangan/partials/footer');
    }

    // Data cetak tagihan 
    public function cetaktagihan()
    {

        $this->load->view('petugaslapangan/partials/header_cetak');
        $this->load->view('petugaslapangan/wajibpajak/cetaktagihan');
        $this->load->view('petugaslapangan/partials/footer_cetak');
    }
}
