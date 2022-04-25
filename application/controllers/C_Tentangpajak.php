<?php
defined('BASEPATH') or exit('No direct script access allowed');

class C_Tentangpajak extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();
		$this->load->model('M_wajibpajak');
	}

	public function index()
	{
		echo "tentangpajak";
	}





	/**
	 * MULAI DASAR PENGENAAN PAJAK
	 */

	public function prosesubah_info_dpp()
	{
		$where = array(
			'judul' => 'pajak_dpp'
		);

		$data = array(
			'isi' => $this->input->post('isi')
		);

		$this->M_wajibpajak->ubah($where, $data, 'opsi');

		// alert success 
		$this->session->set_flashdata('message', '
                <div class="alert alert-success alert-dismissible fade show" role="alert">
                    <strong>Berhasil!</strong> Data telah diubah.
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                    </button>
                </div>
            ');

		// redirect
		redirect('admin/tentangpajak/dasarpengenaanpajak');
	}

	/**
	 * SELESAI DASAR PENGENAAN PAJAK
	 */










	/**
	 * MULAI NILAI PEROLEHAN AIR
	 */

	public function prosesubah_info_npa()
	{
		$where = array(
			'judul' => 'pajak_npa'
		);

		$data = array(
			'isi' => $this->input->post('isi')
		);

		$this->M_wajibpajak->ubah($where, $data, 'opsi');

		// alert success 
		$this->session->set_flashdata('message', '
                <div class="alert alert-success alert-dismissible fade show" role="alert">
                    <strong>Berhasil!</strong> Data telah diubah.
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                    </button>
                </div>
            ');

		// redirect
		redirect('admin/tentangpajak/nilaiperolehanair');
	}

	/**
	 * SELESAI NILAI PEROLEHAN AIR
	 */












	/**
	 * MULAI PENENTUAN NPA
	 */


	//Mulai Penentuan Nilai NPA

	// Bobot Komponen Sumber Daya Alam
	public function psesubah_ksda()
	{
		$where = array(
			'id' => $this->input->post('id')
		);

		$data = array(
			'kriteria' => $this->input->post('kriteria'),
			'peringkat' => $this->input->post('peringkat'),
			'bobot' => $this->input->post('bobot')
		);

		$this->M_wajibpajak->ubah($where, $data, 'pajak_ksda');

		// alert success 
		$this->session->set_flashdata('message_ksda', '
                <div class="alert alert-success alert-dismissible fade show" role="alert">
                    <strong>Berhasil!</strong> Data telah diubah.
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                    </button>
                </div>
            ');

		// redirect
		redirect('admin/tentangpajak/penentuannpa');
	}








	// Bobot Komponen Sumber Daya Alam
	public function prosesubah_kk()
	{
		$where = array(
			'id' => $this->input->post('id')
		);

		$data = array(
			'kriteria' => $this->input->post('kriteria'),
			'n1' => $this->input->post('n1'),
			'n2' => $this->input->post('n2'),
			'n3' => $this->input->post('n3'),
			'n4' => $this->input->post('n4'),
			'n5' => $this->input->post('n5'),
		);

		$this->M_wajibpajak->ubah($where, $data, 'pajak_kk');

		// alert success 
		$this->session->set_flashdata('message_kk', '
                <div class="alert alert-success alert-dismissible fade show" role="alert">
                    <strong>Berhasil!</strong> Data telah diubah.
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                    </button>
                </div>
            ');

		// redirect
		redirect('admin/tentangpajak/penentuannpa');
	}









	// Bobot Komponen Kompensasi
	public function prosesubah_hda()
	{
		$where = array(
			'id' => $this->input->post('id')
		);

		$data = array(
			'kriteria' => $this->input->post('kriteria'),
			'komponen' => $this->input->post('komponen'),
			'persentasi' => $this->input->post('persentasi'),
		);

		$this->M_wajibpajak->ubah($where, $data, 'pajak_hda');

		// alert success 
		$this->session->set_flashdata('message_hda', '
                <div class="alert alert-success alert-dismissible fade show" role="alert">
                    <strong>Berhasil!</strong> Data telah diubah.
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                    </button>
                </div>
            ');

		// redirect
		redirect('admin/tentangpajak/penentuannpa');
	}




	// Bobot Komponen Kompensasi
	public function proses_ubah_pabt()
	{
		$where = array(
			'judul' => 'pajak_pabt'
		);

		$data = array(
			'isi' => $this->input->post('isi'),
		);

		$this->M_wajibpajak->ubah($where, $data, 'opsi');

		// alert success 
		$this->session->set_flashdata('message_pabt', '
                <div class="alert alert-success alert-dismissible fade show" role="alert">
                    <strong>Berhasil!</strong> Data telah diubah.
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                    </button>
                </div>
            ');

		// redirect
		redirect('admin/tentangpajak/penentuannpa');
	}






	/**
	 * AKHIR PENENTUAN NPA
	 */
}
