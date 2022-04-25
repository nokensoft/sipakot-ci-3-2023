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
                                            <li class="breadcrumb-item"><a href="<?= base_url('admin/profil') ?>">Profil</a></li>
                                            <li class="breadcrumb-item active">Ubah</li>
                                        </ol>
                                    </div>
                                    <h4 class="page-title">Ubah Profil</span></h4>
                                </div>
                            </div>
                        </div>
                        <!-- end page title -->

                        <!-- start .row   -->
                        <div class="row">
                            <div class="col-md-12">

                                <?= $this->session->flashdata('message') ?>

                                <?= form_open_multipart('C_User/proses_ubah_profil'); ?>
                                <input type="hidden" name="id" value="<?=$user['id']?>">
                                <input type="hidden" name="role" value="<?=$this->uri->segment(1)?>">

                                <div class="card">
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="d-flex justify-content-between">
                                                    <a href="#">
                                                        <button type="submit" class="btn btn-lg btn-primary waves-effect waves-light" data-plugin="tippy" data-tippy-placement="top-start" title="Simpan">
                                                        <span class="btn-label"><i class="fas fa-save"></i></span>Simpan</button>
                                                    </a>
                                                    
                                                    <a href="<?= base_url('admin/profil') ?>" data-plugin="tippy" data-tippy-placement="top-start" title="Kembali ke Halaman Profil">
                                                        <button type="button" class="btn btn-lg btn-primary text-primary bg-light waves-effect waves-light">
                                                        <span class="btn-label"><i class="mdi mdi-replay"></i></span>Kembali</button>
                                                    </a>

                                                </div>
                                                <hr>
                                                
                                            </div>

                                            <div class="col-xl-6 col-lg-8 col-md-6 col-sm-12 col-xs-12">
                                                
                                                <ul class="list-group">

                                                    <li class="list-group-item list-group-item-lg">
                                                        <div class="row">
                                                            <div class="col-lg-4 col-md-12 col-sm-12 col-xs-12">
                                                                <label for="nama_lengkap" class="font-weight-bold">Nama Lengkap</label>
                                                            </div>
                                                            <div class="col-lg-8 col-md-12 col-sm-12 col-sx-12">
                                                                <input type="text" name="nama_lengkap" class="form-control form-control-lg" id="nama_lengkap" value="<?=$user['nama_lengkap']?>">
                                                            </div>
                                                        </div>
                                                    </li>

                                                    <li class="list-group-item list-group-item-lg">
                                                        <div class="row">
                                                            <div class="col-lg-4 col-md-12 col-sm-12 col-xs-12">
                                                                <label for="email" class="font-weight-bold">Email</label>
                                                            </div>
                                                            <div class="col-lg-8 col-md-12 col-sm-12 col-sx-12">
                                                                <input type="text" name="email" class="form-control form-control-lg" id="email" value="<?= $user['email']?>">
                                                            </div>
                                                        </div>
                                                    </li>

                                                    <li class="list-group-item list-group-item-lg">
                                                        <div class="row">
                                                            <div class="col-lg-4 col-md-12 col-sm-12 col-xs-12">
                                                                <label for="mobile" class="font-weight-bold">Nomor Telepon</label>
                                                            </div>
                                                            <div class="col-lg-8 col-md-12 col-sm-12 col-sx-12">
                                                                <input type="text" name="no_tlp" class="form-control form-control-lg" id="no_tlp" value="<?= $user['no_tlp']?>">
                                                            </div>
                                                        </div>
                                                    </li>

                                                    <li class="list-group-item list-group-item-lg">
                                                        <div class="row">
                                                            <div class="col-lg-4 col-md-12 col-sm-12 col-xs-12">
                                                                <label for="kata_sandi" class="font-weight-bold">Kata Sandi (password)</label>
                                                            </div>
                                                            <div class="col-lg-8 col-md-12 col-sm-12 col-sx-12">
                                                                
                                                                <div class="form-group mb-3">
                                                                    <div class="input-group input-group-merge">
                                                                        <input type="password" name="kata_sandi" class="form-control form-control-lg" id="kata_sandi" value="******">
                                                                        <?= form_error('kata_sandi', '<small class="text-danger">', '</small>'); ?>
                                                                        <div class="input-group-append" data-password="false">
                                                                            <div class="input-group-text">
                                                                                <span class="password-eye font-12"></span>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <small class="text-warning mt-1 d-block"><i>Silahkan isi jika ingin buat kata sandi baru</i></small>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </li>

                                                </ul>

                                            </div>
                                            <!-- end .col -->

                                        </div>
                                        <!-- end .row -->
                                        
                                    </div>
                                    <!-- end .card-body  -->

                                </div> <!-- end card -->
                                <?= form_close() ?>                                        
                            </div>
                        </div>
                        <!-- end .row -->





                        
                    </div> <!-- container -->

                </div> <!-- content -->