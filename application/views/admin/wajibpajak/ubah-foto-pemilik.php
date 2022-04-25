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
                                            <li class="breadcrumb-item"><a href="<?= base_url('admin/wajibpajak') ?>">Wajib Pajak</a></li>
                                            <li class="breadcrumb-item active">Ubah Foto Pemilik</li>
                                        </ol>
                                    </div>
                                    <h4 class="page-title">Ubah Foto Pemilik</span></h4>
                                </div>
                            </div>
                        </div>
                        <!-- end page title -->

                        <!-- start .row  -->
                        <div class="row">
                            <div class="col-12">

                                <?= $this->session->flashdata('message') ?>
                                
                                <?= form_open_multipart('C_Wajibpajak/proses_ubah_foto_pemilik'); ?>
                                    <input type="hidden" name="id_wp" value="<?php echo $wp['id_wp']; ?>">
                                    
                                    <div class="card">
                                        <div class="card-body">
                                            <div class="row">
                                                <div class="col-12">
                                                    <div class="d-flex justify-content-between">
                                                        <a href="#">
                                                            <button type="submit" class="btn btn-lg btn-primary waves-effect waves-light" data-plugin="tippy" data-tippy-placement="top-start" title="Simpan">
                                                            <span class="btn-label"><i class="fas fa-save"></i></span>Simpan</button>
                                                        </a>
                                                        
                                                        <a href="<?= base_url('admin/wajibpajak/detail/') . $wp['id_wp'] ?>" data-plugin="tippy" data-tippy-placement="top-start" title="Kembali ke Halaman Wajib Pajak">
                                                            <button type="button" class="btn btn-lg btn-primary text-primary bg-light waves-effect waves-light">
                                                            <span class="btn-label"><i class="mdi mdi-replay"></i></span>Kembali</button>
                                                        </a>

                                                    </div>
                                                    <hr>
                                                </div>
                                                
                                                <div class="col-xl-6 col-lg-8 col-md-6 col-sm-12 col-xs-12">
                                                

                                                    <div class="form-group">
                                                        <label for="gambar">Foto</label>
                                                        <div class="form-grouptext-center">
                                                            <?php if(!empty($wp['pemilik_foto'])) { ?> 
                                                                <img src="<?= base_url() ?>assets/images/pemilik_foto/<?=$wp['pemilik_foto'] ?>" alt="" class="img img-thumbnail" width="300px">
                                                            <?php } else { ?> 
                                                                <img src="<?= base_url() ?>assets/images/pemilik_foto/default-user.png" alt="" class="img img-thumbnail" width="300px">
                                                            <?php }?>
                                                            <br>
                                                        </div>
                                                    </div>

                                                    <div class="form-group mb-3">
                                                        <label for="validationCustom01">Pilih Foto</label>
                                                        <input type="file" name="foto" class="form-control-file form-control-file-lg" id="validationCustom01" />
                                                    </div>

                                                </div>
                                                <!-- end .col -->


                                            </div>
                                            <!-- end .row -->
                                        </div> <!-- end card-body-->

                                    </div> <!-- end card-->
                                <?= form_close()?>
                            </div> <!-- end col -->

                        </div>
                        <!-- end row -->





                    </div> <!-- container -->

                </div> <!-- content -->