<!-- ============================================================== -->
<!-- Start Page Content here -->
<!-- ============================================================== -->

<div class="content-page">
    <div class="content">

        <!-- Start Content-->
        <div class="container-fluid">

            <!-- start page title -->
            <div class="row">
                <div class="col-12">
                    <div class="page-title-box">
                        <div class="page-title-right">
                            <ol class="breadcrumb m-0">
                                <li class="breadcrumb-item"><a href="<?= base_url('admin/dasbor') ?>">Dasbor</a></li>
                                <li class="breadcrumb-item"><a href="<?= base_url('admin/pengguna') ?>">Pengguna</a></li>
                                <li class="breadcrumb-item active">Ubah</li>
                            </ol>
                        </div>
                        <h4 class="page-title">Ubah Foto</span></h4>
                    </div>
                </div>
            </div>
            <!-- end page title -->





            <!-- start .row  -->
            <div class="row">
                <div class="col-12">

                    <?= $this->session->flashdata('message') ?>

                    <?= form_open_multipart('C_User/proses_ubah/'); ?>
                    <input type="hidden" name="id" value="<?= $pengguna['id'] ?>">
                        
                        <div class="card">
                            <div class="card-body">

                                <div class="row">
                                    <div class="col-12">
                                        <div class="d-flex justify-content-between">
                                            <a href="#">
                                                <button type="submit" class="btn btn-lg btn-primary waves-effect waves-light" data-plugin="tippy" data-tippy-placement="top-start" title="Simpan">
                                                <span class="btn-label"><i class="fas fa-save"></i></span>Simpan</button>
                                            </a>
                                            
                                            <a href="<?= base_url('admin/pengguna') ?>" data-plugin="tippy" data-tippy-placement="top-start" title="Kembali ke Halaman Wajib Pajak">
                                                <button type="button" class="btn btn-lg btn-primary text-primary bg-light waves-effect waves-light">
                                                <span class="btn-label"><i class="mdi mdi-replay"></i></span>Kembali</button>
                                            </a>

                                        </div>
                                        <hr>
                                    </div>
                                </div> <!-- end .row  -->

                                <div class="row">

                                    <div class="col-sm-12 col-md-12 col-lg-6 col-xl-6">
                                        
                                        <div class="form-group mb-3">
                                            <label for="nama_lengkap">Nama Lengkap <sup class="text-danger" data-plugin="tippy" data-tippy-placement="top-start" title="Wajib dilengkapi"><i class="fas fa-xs fa-asterisk"></i></sup> </label> 
                                            <input type="text" class="form-control form-control-lg" name="nama_lengkap" id="nama_lengkap" value="<?= $pengguna['nama_lengkap'] ?>">
                                            <?= form_error('nama_lengkap', '<small class="text-danger">', '</small>'); ?>
                                        </div>

                                        <div class="form-group mb-3">
                                            <label for="no_tlp">Nomor Telepon</label>
                                            <input type="text" class="form-control form-control-lg" name="no_tlp" id="no_tlp" value="<?= $pengguna['no_tlp'] ?>">
                                            <?= form_error('no_tlp', '<small class="text-danger">', '</small>'); ?>
                                        </div>

                                        <div class="form-group mb-3">
                                            <label for="role_id">Level <sup class="text-danger" data-plugin="tippy" data-tippy-placement="top-start" title="Wajib dilengkapi"><i class="fas fa-xs fa-asterisk"></i></sup> </label>
                                            <select class="form-control form-control-lg" name="role_id" id="role_id">
                                                <option></option>
                                                <?php foreach ($levels as $level) : ?>
                                                    <option value="<?php echo $level['id'] ?>" <?php if($pengguna['role_id'] == $level['id']) { echo 'selected'; } ?>><?php echo $level['role'] ?></option>
                                                <?php endforeach; ?>
                                            </select>
                                            <?= form_error('role_id', '<small class="text-danger">', '</small>'); ?>
                                        </div>

                                        <div class="form-group mb-3">
                                            <label for="email">Email <sup class="text-danger" data-plugin="tippy" data-tippy-placement="top-start" title="Wajib dilengkapi"><i class="fas fa-xs fa-asterisk"></i></sup> </label>
                                            <input type="text" class="form-control form-control-lg" name="email" id="email" value="<?= $pengguna['email'] ?>">
                                            <?= form_error('email', '<small class="text-danger">', '</small>'); ?>
                                        </div>

                                        <div class="form-group mb-3">
                                            <label for="kata_sandi">Kata Sandi (password) <sup class="text-danger" data-plugin="tippy" data-tippy-placement="top-start" title="Wajib dilengkapi"><i class="fas fa-xs fa-asterisk"></i></sup> </label>
                                            <div class="input-group input-group-merge">
                                                <input type="password" name="kata_sandi" class="form-control form-control-lg" id="kata_sandi" value="">
                                                <?= form_error('kata_sandi', '<small class="text-danger">', '</small>'); ?>
                                                <!-- <a href="<?= base_url('admin/pengguna/ubah/kata-sandi/'.$pengguna['id']); ?>" class="mt-1 d-block">Ubah Kata Sandi</a> -->
                                                <div class="input-group-append" data-password="false">
                                                    <div class="input-group-text">
                                                        <span class="password-eye font-12"></span>
                                                    </div>
                                                </div>
                                            </div>
                                            <small class="text-warning mt-1 d-block"><i>Silahkan isi jika ingin buat kata sandi baru</i></small>
                                        </div>

                                        <hr>

                                        <div class="form-group mb-3">
                                            <label for="is_active">Aktif</label>
                                            <select class="form-control form-control-lg" name="is_active" id="is_active">
                                                <option></option>
                                                <option value="1" <?php if($pengguna['is_active'] == '1') { echo 'selected';} ?>>Aktif</option>
                                                <option value="0" <?php if($pengguna['is_active'] == '0') { echo 'selected';} ?>>Tidak Aktif</option>
                                            </select>
                                            <?= form_error('is_active', '<small class="text-danger">', '</small>'); ?>
                                        </div>


                                    </div>
                                    <!-- end .col -->

                                    <div class="col-md-6">
                                    

                                        <div class="form-group">
                                            <label for="foto">Foto</label>
                                            <div class="form-grouptext-center">
                                                <?php if(!empty($pengguna['foto'])) { ?> 
                                                    <img src="<?= base_url() ?>assets/images/pengguna/<?=$pengguna['foto'] ?>" alt="" class="img img-thumbnail" width="300px">
                                                <?php } else { ?> 
                                                    <img src="<?= base_url() ?>assets/images/pengguna/default-user.png" alt="" class="img img-thumbnail" width="300px">
                                                <?php }?>
                                                <br>
                                            </div>
                                        </div>

                                        <div class="form-group mb-3">
                                            <a href="<?=base_url('/admin/pengguna/ubah/foto/'.$pengguna['id']) ?>" class="btn btn-dark">Ubah Foto</a>
                                        </div>
                                        

                                    </div>

                                </div>
                                <!-- end .row -->
                            </div> <!-- end card-body-->

                        </div> <!-- end card-->
                    <?= form_close() ?>
                </div> <!-- end col -->

            </div>
            <!-- end row -->











        </div> <!-- container -->

    </div> <!-- content -->