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
                                <li class="breadcrumb-item active">Tambah</li>
                            </ol>
                        </div>
                        <h4 class="page-title">Tambah Pengguna</span></h4>
                    </div>
                </div>
            </div>
            <!-- end page title -->
           

            <!-- start .row  -->
            <div class="row">
                <div class="col-lg-12">

                    <?= $this->session->flashdata('message') ?>

                    <form class="needs-validation" action="<?php echo base_url('C_User/proses_tambah'); ?>" method="POST" enctype="multipart/form-data">
                        
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

                                    <div class="col-sm-12 col-md-12 col-lg-6 col-xl-6">
                                        
                                        <div class="form-group mb-3">
                                            <label for="nama_lengkap">Nama Lengkap <sup class="text-danger" data-plugin="tippy" data-tippy-placement="top-start" title="Wajib dilengkapi"><i class="fas fa-xs fa-asterisk"></i></sup> </label>
                                            <input type="text" class="form-control form-control-lg" name="nama_lengkap" id="nama_lengkap" value="<?= set_value('nama_lengkap') ?>" required>
                                            <?= form_error('nama_lengkap', '<small class="text-danger">', '</small>'); ?>
                                        </div>

                                        <div class="form-group mb-3">
                                            <label for="no_tlp">Nomor Telepon</label>
                                            <input type="text" class="form-control form-control-lg" name="no_tlp" id="no_tlp" value="<?= set_value('no_tlp') ?>">
                                            <?= form_error('no_tlp', '<small class="text-danger">', '</small>'); ?>
                                        </div>

                                        <div class="form-group mb-3">
                                            <label for="role_id">Level <sup class="text-danger" data-plugin="tippy" data-tippy-placement="top-start" title="Wajib dilengkapi"><i class="fas fa-xs fa-asterisk"></i></sup> </label>
                                            <select class="form-control form-control-lg" name="role_id" id="role_id" required>
                                                <option></option>
                                                <?php foreach ($levels as $level) : ?>
                                                    <option value="<?php echo $level['id'] ?>"><?php echo $level['role'] ?></option>
                                                <?php endforeach; ?>
                                            </select>
                                            <?= form_error('role_id', '<small class="text-danger">', '</small>'); ?>
                                        </div>

                                        <div class="form-group mb-3">
                                            <label for="email">Email <sup class="text-danger" data-plugin="tippy" data-tippy-placement="top-start" title="Wajib dilengkapi"><i class="fas fa-xs fa-asterisk"></i></sup> </label>
                                            <input type="text" class="form-control form-control-lg" name="email" id="email" value="<?= set_value('email') ?>" required>
                                            <?= form_error('email', '<small class="text-danger">', '</small>'); ?>
                                        </div>

                                        <div class="form-group mb-3">
                                            <label for="kata_sandi">Kata Sandi (password) <sup class="text-danger" data-plugin="tippy" data-tippy-placement="top-start" title="Wajib dilengkapi"><i class="fas fa-xs fa-asterisk"></i></sup> </label>
                                            <div class="input-group input-group-merge">
                                                <input type="password" name="kata_sandi" class="form-control form-control-lg" id="kata_sandi" value="" required>
                                                <div class="input-group-append" data-password="false">
                                                    <div class="input-group-text">
                                                        <span class="password-eye font-12"></span>
                                                    </div>
                                                </div>
                                            </div>

                                            <?= form_error('kata_sandi', '<small class="text-danger">', '</small>'); ?>
                                        </div>

                                        <div class="form-group mb-3">
                                            <label for="keterangan">Keterangan</label>
                                            <div class="input-group input-group-merge">
                                                <textarea rows="10" id="keterangan" name="keterangan" class="form-control form-control-lg" data-parsley-trigger="keyup" data-parsley-minlength="20" data-parsley-maxlength="100" data-parsley-minlength-message="Come on! You need to enter at least a 20 character comment.." data-parsley-validation-threshold="10" data-parsley-id="23"></textarea>
                                            </div>
                                        </div>

                                        <hr>

                                        <div class="form-group mb-3">
                                            <label for="is_active">Aktif</label>
                                            <select class="form-control form-control-lg" name="is_active" id="is_active" required>
                                                <option></option>
                                                <option value="1">Aktif</option>
                                                <option selected value="0">Tidak Aktif</option>
                                            </select>
                                            <?= form_error('is_active', '<small class="text-danger">', '</small>'); ?>
                                        </div>

                                    </div>
                                    <!-- end .col -->

                                </div>
                                <!-- end .row -->
                            </div> <!-- end card-body-->

                        </div> <!-- end card-->
                    </form>
                </div> <!-- end col -->

            </div>
            <!-- end row -->



        </div> <!-- container -->

    </div> <!-- content -->