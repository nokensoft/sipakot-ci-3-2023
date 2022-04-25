<?php
defined('BASEPATH') or exit('No direct script access allowed');

class C_User extends CI_Controller
{

	public function __construct()
	{
		parent::__construct();
		$this->load->library('form_validation');
		$this->load->model('M_user');
		$this->load->model('M_user');
	}

	/** 
	 * ==========================================================
	 * USER
	 * 
	 * PROSES TAMBAH
	 * PROSES UBAH PROFIL
	 * PROSES UBAH FOTO
	 * PROSES UBAH NAMA PENGGUNA
	 * PROSES UBAH KATA SANDI
	 * PROSES HAPUS
	 * 
	 * ==========================================================
	*/

	// PROSES TAMBAH
	public function proses_tambah()
	{
		// // validasi nama_lengkap
		// $this->form_validation->set_rules('nama_lengkap', 'NamaLengkap', 'required|trim',
		// 	array('required' => 'Data wajib, harus dilengkapi')
		// );

		// validasi alamat_email
        $this->form_validation->set_rules('email', 'Email', 'required|trim|valid_email|is_unique[user.email]', [
            'is_unique' => 'Email ini sudah terdaftar'
        ]);


		// // validasi nomor hp
		// $this->form_validation->set_rules('no_tlp', 'NoTelp', 'required|numeric|max_length[12]|min_length[10]',
		// 	array(
		// 		'required' => 'Data wajib, harus dilengkapi',
		// 		'numeric' => 'Data hanya berupa angka',
		// 		'min_length' => 'Nomor HP tidak kurang dari 10 angka',
		// 		'max_length' => 'Nomor HP tidak lebih dari 12 angka',
		// 		)
		// );

		// jika validasi gagal, tampilkan ulang form tambah
		if ($this->form_validation->run() == FALSE) {
			
			// tanda peringatan
			$this->session->set_flashdata('message', '
			<div class="alert alert-warning alert-dismissible fade show" role="alert">
				<strong>Perhatian!</strong> Email sudah terdaftar.
				<button type="button" class="close" data-dismiss="alert" aria-label="Close">
				<span aria-hidden="true">&times;</span>
				</button>
			</div>
		');

			redirect('admin/pengguna/tambah');

		} 

		// jika validasi berhasil, lakukan proses tambah
		else {		

			// buat variabel
			$nama_lengkap = $this->input->post('nama_lengkap');
			$foto = 'default-user.png';
			$email = $this->input->post('email');
			$no_tlp = $this->input->post('no_tlp');
			$kata_sandi = password_hash($this->input->post('kata_sandi1'), PASSWORD_DEFAULT);
			$role_id = $this->input->post('role_id');
			$is_active = $this->input->post('is_active');

			// masukan variabel ke dalam data array
			$data = array(
				'nama_lengkap' => $nama_lengkap,
				'foto' => $foto,
				'email' => $email,
				'no_tlp' => $no_tlp,
				'kata_sandi' => $kata_sandi,
				'role_id' => $role_id,
				'is_active' => $is_active,
			);

			// mengirim data ke database melalui fungsi pada model
			$this->M_user->tambah($data, 'user');
			
			// tanda sukses
			$this->session->set_flashdata('message', '
				<div class="alert alert-success alert-dismissible fade show" role="alert">
					<strong>Berhasil!</strong> Data telah ditambahkan.
					<button type="button" class="close" data-dismiss="alert" aria-label="Close">
					<span aria-hidden="true">&times;</span>
					</button>
				</div>
			');

			// mengalihkan halaman
			redirect('admin/pengguna');

		}
	}


	// PROSES UBAH PENGGUNA
	public function proses_ubah()
	{

		// buat variabel
		
		$id = $this->input->post('id');	
		$nama_lengkap = $this->input->post('nama_lengkap');
		$email = $this->input->post('email');
		$kata_sandi = $this->input->post('kata_sandi');
		$no_tlp = $this->input->post('no_tlp');
		$role_id = $this->input->post('role_id'); // level
		$is_active = $this->input->post('is_active'); // aktif



			// masukan variabel ke dalam data array
			$data = array(
				'id' => $id,
				'nama_lengkap' => $nama_lengkap,
				'email' => $email,
				'kata_sandi' => password_hash($this->input->post('kata_sandi'), PASSWORD_DEFAULT),
				'no_tlp' => $no_tlp,
				'role_id' => $role_id, 
				'is_active' => $is_active, 
			);

			$where = array(
				'id' => $id
			);

			// mengirim data ke database melalui fungsi pada model
			$this->M_user->ubah($data, $id);
			
			// tanda sukses
			$this->session->set_flashdata('message', '
				<div class="alert alert-success alert-dismissible fade show" role="alert">
					<strong>Berhasil!</strong> Data telah diubah.
					<button type="button" class="close" data-dismiss="alert" aria-label="Close">
					<span aria-hidden="true">&times;</span>
					</button>
				</div>
			');

			// mengalihkan halaman
			redirect('admin/pengguna/ubah/'.$id);

		
	}


	// PROSES UBAH PENGGUNA (HALAMAN PROFIL)
	public function proses_ubah_profil()
	{

		// buat variabel
		
		$role = $this->input->post('role');	

		$id = $this->input->post('id');	
		$nama_lengkap = $this->input->post('nama_lengkap');
		$email = $this->input->post('email');
		$kata_sandi = $this->input->post('kata_sandi');
		$no_tlp = $this->input->post('no_tlp');

			// masukan variabel ke dalam data array
			$data = array(
				'id' => $id,
				'nama_lengkap' => $nama_lengkap,
				'email' => $email,
				'kata_sandi' => password_hash($this->input->post('kata_sandi'), PASSWORD_DEFAULT),
				'no_tlp' => $no_tlp,
			);

			// mengirim data ke database melalui fungsi pada model
			$this->M_user->ubah($data, $id);
			
			// tanda sukses
			$this->session->set_flashdata('message', '
				<div class="alert alert-success alert-dismissible fade show" role="alert">
					<strong>Berhasil!</strong> Data telah diubah.
					<button type="button" class="close" data-dismiss="alert" aria-label="Close">
					<span aria-hidden="true">&times;</span>
					</button>
				</div>
			');

			// mengalihkan halaman
			redirect($role.'/profil');

	}

	


	// PROSES UBAH FOTO (HALAMAN PROFIL)
	public function proses_ubah_foto_profil()
	{
		$config['upload_path'] = './assets/images/pengguna/';
		$config['allowed_types'] = 'jpg|png|jpeg|gif';
		$config['max_size'] = '2048';  //2MB max
		$config['max_width'] = '4480'; // pixel
		$config['max_height'] = '4480'; // pixel
		$config['file_name'] = 'pengguna-'.time();

		$this->load->library('upload', $config);

		if (!$this->upload->do_upload('foto')) {

			$role = $this->input->post('role');	

			$id = $this->input->post('id');	
		
			// tanda peringatan
			$this->session->set_flashdata('message', '
			<div class="alert alert-warning alert-dismissible fade show" role="alert">
				<strong>Perhatian!</strong> Foto belum dipilih.
				<button type="button" class="close" data-dismiss="alert" aria-label="Close">
				<span aria-hidden="true">&times;</span>
				</button>
			</div>
			');

			redirect($role.'/profil/ubah/foto');

		} else {

			$role = $this->input->post('role');	

			$foto = $this->upload->data();
			$id = $this->input->post('id');	

			$data = array(
				'id' => $id,
				'foto' => $foto['file_name'],
			);

		}
		
		$this->M_user->ubah_foto($data, $id);
		
		// tanda sukses
		$this->session->set_flashdata('message', '
		<div class="alert alert-success alert-dismissible fade show" role="alert">
			<strong>Berhasil!</strong> Foto telah diubah.
			<button type="button" class="close" data-dismiss="alert" aria-label="Close">
			<span aria-hidden="true">&times;</span>
			</button>
		</div>
		');

		redirect($role.'/profil/ubah/foto/');

		
	}


	// PROSES UBAH FOTO
	public function proses_ubah_foto()
	{
		$config['upload_path'] = './assets/images/pengguna/';
		$config['allowed_types'] = 'jpg|png|jpeg|gif';
		$config['max_size'] = '2048';  //2MB max
		$config['max_width'] = '4480'; // pixel
		$config['max_height'] = '4480'; // pixel
		$config['file_name'] = 'pengguna-'.time();

		$this->load->library('upload', $config);

		if (!$this->upload->do_upload('foto')) {

			$id = $this->input->post('id');	
		
			// tanda peringatan
			$this->session->set_flashdata('message', '
			<div class="alert alert-warning alert-dismissible fade show" role="alert">
				<strong>Perhatian!</strong> Foto belum dipilih.
				<button type="button" class="close" data-dismiss="alert" aria-label="Close">
				<span aria-hidden="true">&times;</span>
				</button>
			</div>
			');

			redirect('admin/pengguna/ubah/foto/'.$id);

		} else {

			$foto = $this->upload->data();
			$id = $this->input->post('id');	

			$data = array(
				'id' => $id,
				'foto' => $foto['file_name'],
			);

		}
		
		$this->M_user->ubah_foto($data, $id);
		
		// tanda sukses
		$this->session->set_flashdata('message', '
		<div class="alert alert-success alert-dismissible fade show" role="alert">
			<strong>Berhasil!</strong> Foto telah diubah.
			<button type="button" class="close" data-dismiss="alert" aria-label="Close">
			<span aria-hidden="true">&times;</span>
			</button>
		</div>
		');

		redirect('admin/pengguna/ubah/foto/'.$id);

		
	}

	

    // proses pindah ke terhapus
    public function proses_hapus_pengguna()
    {

        $id = $this->input->post('id');

		$where = array(
			'id' => $id
		);
		
		$data = array(
			'hapus' => '1',
			'is_active' => '0',
		);

        $this->M_user->terhapus($where, $data, 'user');
        // alert success 
        $this->session->set_flashdata('message', '
			<div class="alert alert-danger alert-dismissible fade show" role="alert">
				<strong>Terhapus!</strong> Data telah dihapus.
				<button type="button" class="close" data-dismiss="alert" aria-label="Close">
				<span aria-hidden="true">&times;</span>
				</button>
			</div>
		');

        redirect(base_url() . 'admin/pengguna');
    }

	public function proses_kembalikan_pengguna()
    {

        $id = $this->input->post('id');

		$where = array(
			'id' => $id
		);
		
		$data = array(
			'hapus' => '0',
			'is_active' => '0',
		);

        $this->M_user->terhapus($where, $data, 'user');
        // alert success 
        $this->session->set_flashdata('message', '
			<div class="alert alert-success alert-dismissible fade show" role="alert">
				<strong>Berhasil!</strong> Data telah dikembalikan.
				<button type="button" class="close" data-dismiss="alert" aria-label="Close">
				<span aria-hidden="true">&times;</span>
				</button>
			</div>
		');

        redirect(base_url() . 'admin/pengguna');
    }

	public function proses_hapus_pengguna_permanen()
    {

        $id = $this->input->post('id');

		$where = array(
			'id' => $id
		);

        $this->M_user->hapus_permanen($where, 'user');
        // alert success 
        $this->session->set_flashdata('message', '
			<div class="alert alert-danger alert-dismissible fade show" role="alert">
				<strong>Terhapus!</strong> Data telah terhapus secara permanen.
				<button type="button" class="close" data-dismiss="alert" aria-label="Close">
				<span aria-hidden="true">&times;</span>
				</button>
			</div>
		');

        redirect(base_url() . 'admin/pengguna/terhapus');
    }


	// PROSES HAPUS
	public function proses_hapus($id)
	{	
		// hapus data di database
		$this->M_user->hapus($id);
		
		// tanda sukses
		$this->session->set_flashdata('message', '
			<div class="alert alert-danger alert-dismissible fade show" role="alert">
				<strong>Terhapus!</strong> Data telah dihapus.
				<button type="button" class="close" data-dismiss="alert" aria-label="Close">
				<span aria-hidden="true">&times;</span>
				</button>
			</div>
		');

		// mengalihkan halaman
		redirect('admin/pengguna');
	}


















	// prosestambah
	public function prosestambah()
	{
		$config['upload_path'] = './assets/images/gambar_pepa/';
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

			$id_pengguna = $this->input->post('id_pengguna');
			$nama_lengkap = $this->input->post('nama_lengkap');
			$no_telp = $this->input->post('no_telp');
			$email = $this->input->post('email');
			$alamat = $this->input->post('alamat');
			$tugas = $this->input->post('tugas');
			$username = $this->input->post('username');
			$password = $this->input->post('password');
			$level = $this->input->post('level');
			$status = $this->input->post('status');

			$data = array(
				'id_pengguna' => $id_pengguna,
				'nama_lengkap' => $nama_lengkap,
				'no_telp' => $no_telp,
				'email' => $email,
				'alamat' => $alamat,
				'tugas' => $tugas,
				'foto' => $foto['file_name'],
				'username' => $username,
				'password' => $password,
				'level' => $level,
				'status' => $status,
			);
			$this->M_pengguna->tambah($data, 'pengguna');
			// alert success 
			$this->session->set_flashdata('message', '
                <div class="alert alert-success alert-dismissible fade show" role="alert">
                    <strong>Berhasil!</strong> Data telah ditambahkan.
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                    </button>
                </div>
            ');
			redirect('admin/pengguna');
		}
	}


	// proses ubah
	public function prosesubah()
	{
		$config['upload_path'] = './assets/images/gambar_pepa/';
		$config['allowed_types'] = 'jpg|png|jpeg|gif';
		$config['max_size'] = '2048';  //2MB max
		$config['max_width'] = '4480'; // pixel
		$config['max_height'] = '4480'; // pixel
		$config['file_name'] = $_FILES['foto']['name'];

		$this->load->library('upload', $config);

		if (!$this->upload->do_upload('foto')) {

			$id = $this->input->post('id');
			$name = $this->input->post('name');

			$where = array(
				'id' => $id
			);

			$data = array(
				'name' => $name,
			);

			$this->M_pengguna->ubah($where, $data, 'user');
			
			// alert success 
			$this->session->set_flashdata('message', '
                <div class="alert alert-success alert-dismissible fade show" role="alert">
                    <strong>Berhasil!</strong> Data telah diubah.
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                    </button>
                </div>
			');

			redirect('admin/pengguna/ubah/' . $id);

		} else {
			$foto = $this->upload->data();

			$id_pengguna = $this->input->post('id_pengguna');
			$nama_lengkap = $this->input->post('nama_lengkap');
			$no_telp = $this->input->post('no_telp');
			$email = $this->input->post('email');
			$alamat = $this->input->post('alamat');
			$tugas = $this->input->post('tugas');
			$username = $this->input->post('username');
			$password = $this->input->post('password');
			$level = $this->input->post('level');
			$status = $this->input->post('status');

			$where = array(
				'id_pengguna' => $id_pengguna
			);

			$data = array(
				'nama_lengkap' => $nama_lengkap,
				'no_telp' => $no_telp,
				'email' => $email,
				'alamat' => $alamat,
				'tugas' => $tugas,
				'foto' => $foto['file_name'],
				'username' => $username,
				'password' => $password,
				'level' => $level,
				'status' => $status
			);

			$this->M_pengguna->ubah($where, $data, 'pengguna');

			// alert success 
			$this->session->set_flashdata('message', '
                <div class="alert alert-success alert-dismissible fade show" role="alert">
                    <strong>Berhasil!</strong> Data telah diubah.
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                    </button>
                </div>
			');
			
			redirect('admin/pengguna/ubah/' . $id);
		}
	}

	// proses hapus
	public function hapus($id_pengguna)
	{
		$where = array(
			'id_pengguna' => $id_pengguna
		);

		$this->M_pengguna->hapus($where, 'pengguna');
		// alert success 
		$this->session->set_flashdata('message', '
			<div class="alert alert-danger alert-dismissible fade show" role="alert">
				<strong>Terhapus!</strong> Data telah dihapus.
				<button type="button" class="close" data-dismiss="alert" aria-label="Close">
				<span aria-hidden="true">&times;</span>
				</button>
			</div>
		');

		redirect(base_url() . 'admin/pengguna');
	}
}
