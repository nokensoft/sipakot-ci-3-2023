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
                                            <li class="breadcrumb-item"><a href="<?= base_url('pelaksana/dasbor') ?>">Dasbor</a></li>
                                            <li class="breadcrumb-item"><a href="<?= base_url('pelaksana/profil') ?>">Profil</a></li>
                                            <li class="breadcrumb-item"><a href="<?= base_url('pelaksana/profil/ubah') ?>">Ubah</a></li>
                                            <li class="breadcrumb-item active">Foto</li>
                                        </ol>
                                    </div>
                                    <h4 class="page-title">Ubah Foto</span></h4>
                                </div>
                            </div>
                        </div>
                        <!-- end page title -->

                        <!-- start .row   -->
                        <div class="row">
                            <div class="col-md-12">

                                <?= $this->session->flashdata('message') ?>

                                <?= form_open_multipart('C_User/proses_ubah_foto_profil'); ?>
                                <input type="hidden" name="id" value="<?= $user['id']?>">
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
                                                    
                                                    <a href="<?= base_url('pelaksana/profil') ?>" data-plugin="tippy" data-tippy-placement="top-start" title="Kembali ke Halaman Profil">
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
                                                                <label for="foto" class="font-weight-bold">Foto</label>
                                                            </div>
                                                            <div class="col-lg-8 col-md-12 col-sm-12 col-sx-12">
                                                                <img src="<?=base_url()?>assets/images/pengguna/<?= $user['foto']?>" width="150px" alt="user-image" class="img img-thumbnail">
                                                            </div>
                                                        </div>
                                                    </li>

                                                    <li class="list-group-item list-group-item-lg">
                                                        <div class="row">
                                                            <div class="col-lg-4 col-md-12 col-sm-12 col-xs-12">
                                                                <label for="foto" class="font-weight-bold">Pilih Foto Baru</label>
                                                            </div>
                                                            <div class="col-lg-8 col-md-12 col-sm-12 col-sx-12">
                                                                <input type="file" name="foto" class="form-control-file form-control-file-lg" id="foto" data-plugin="tippy" data-tippy-placement="top-start" title="Pilih Foto Baru">
                                                                <div class="valid-feedback">
                                                                    Looks good!
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