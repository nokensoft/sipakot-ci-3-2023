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
                                <li class="breadcrumb-item"><a href="<?= base_url('admin/berita') ?>">Berita</a></li>
                                <li class="breadcrumb-item active">Tambah</li>
                            </ol>
                        </div>
                        <h4 class="page-title">Tambah Berita</span></h4>
                    </div>
                </div>
            </div>
            <!-- end page title -->
           

            <!-- start .row  -->
            <div class="row">
                <div class="col-lg-12">

                    <?= $this->session->flashdata('message') ?>

                    <form class="needs-validation" action="<?php echo base_url('C_Berita/prosestambah'); ?>" method="POST" enctype="multipart/form-data">
                        
                        <div class="card">
                            <div class="card-body">
                                <div class="row">
                                    
                                    <div class="col-12">
                                        <div class="d-flex justify-content-between">
                                            <a href="#">
                                                <button type="submit" class="btn btn-lg btn-primary waves-effect waves-light" data-plugin="tippy" data-tippy-placement="top-start" title="Simpan">
                                                <span class="btn-label"><i class="fas fa-save"></i></span>Simpan</button>
                                            </a>
                                            
                                            <a href="<?= base_url('admin/berita') ?>" data-plugin="tippy" data-tippy-placement="top-start" title="Kembali ke Halaman Wajib Pajak">
                                                <button type="button" class="btn btn-lg btn-primary text-primary bg-light waves-effect waves-light">
                                                <span class="btn-label"><i class="mdi mdi-replay"></i></span>Kembali</button>
                                            </a>

                                        </div>
                                        <hr>
                                    </div>

                                    <div class="col-sm-12 col-md-12 col-lg-6 col-xl-6">
                                        
                                        <div class="form-group mb-3">
                                            <label for="title">Judul <sup class="text-danger" data-plugin="tippy" data-tippy-placement="top-start" title="Wajib dilengkapi"><i class="fas fa-xs fa-asterisk"></i></sup> </label>
                                            <input type="text" class="form-control form-control-lg" name="title" id="title" value="<?= set_value('title') ?>" required>
                                            <?= form_error('title', '<small class="text-danger">', '</small>'); ?>
                                        </div>

                                        <div class="form-group mb-3">
                                            <label for="image">Gambar</label> <br>
                                            <img src="<?= base_url() ?>assets/images/berita/no-image.png" alt="" class="img img-thumbnail" width="300px">
                                            <div class="custom-file mt-3 mb-3">
                                                <input type="file" class="custom-file-input" id="image" name="image">
                                                <label class="custom-file-label" for="image">Pilih gambar</label>
                                            </div>
                                        </div>

                                        <div class="form-group mb-3">
                                            <label for="body">Isi Berita</label>
                                            <textarea name="body" class="form-control form-control-lg" rows="30" id="editor" width="100%"></textarea>
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
                                            <form>
                                            
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