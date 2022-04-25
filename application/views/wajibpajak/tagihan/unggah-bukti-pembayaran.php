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
                                            <li class="breadcrumb-item"><a href="<?= base_url('wajibpajak/dasbor') ?>">Dasbor</a></li>
                                            <li class="breadcrumb-item"><a href="<?= base_url('wajibpajak/tagihan') ?>">Tagihan</a></li>
                                            <li class="breadcrumb-item active">Unggah Foto Bukti Pembayaran</li>
                                        </ol>
                                    </div>
                                    <h4 class="page-title">Unggah Foto Bukti Pembayaran</span></h4>
                                </div>
                            </div>
                        </div>
                        <!-- end page title -->

                        <!-- start .row  -->
                        <div class="row">
                            <div class="col-12">

                                <?= $this->session->flashdata('message') ?>
                                
                                <?= form_open_multipart('Wajibpajak/proses_unggah_bukti_pembayaran'); ?>
                                    <input type="hidden" name="id_tagihan" value="<?=$_GET['id']?>">
                                    
                                    <div class="card">
                                        <div class="card-body">
                                            <div class="row">
                                                <div class="col-12">
                                                    <div class="d-flex justify-content-between">
                                                        <a href="#">
                                                            <button type="submit" class="btn btn-lg btn-primary waves-effect waves-light" data-plugin="tippy" data-tippy-placement="top-start" title="Simpan">
                                                            <span class="btn-label"><i class="fas fa-save"></i></span>Simpan</button>
                                                        </a>
                                                        
                                                        <a href="<?= base_url('wajibpajak/tagihan') ?>?t=<?=date('Y')?>" data-plugin="tippy" data-tippy-placement="top-start" title="Kembali ke Halaman Tagihan">
                                                            <button type="button" class="btn btn-lg btn-primary text-primary bg-light waves-effect waves-light">
                                                            <span class="btn-label"><i class="mdi mdi-replay"></i></span>Kembali</button>
                                                        </a>

                                                    </div>
                                                    <hr>
                                                </div>
                                                
                                                <div class="col-xl-4 col-lg-8 col-md-6 col-sm-12 col-xs-12">
                                                

                                                    <div class="form-group">
                                                        <label for="gambar">Foto Bukti Pembayaran</label>
                                                        <div class="form-grouptext-center">
                                                            <?php if(!empty($bukti_pembayaran['bukti_pembayaran'])) { ?> 
                                                                <img src="<?= base_url() ?>assets/images/bukti_pembayaran/<?=$bukti_pembayaran['bukti_pembayaran'] ?>" alt="" class="img img-thumbnail" width="300px">
                                                            <?php } else { ?> 
                                                                <img src="<?= base_url() ?>assets/images/bukti_pembayaran/default_image.png" alt="" class="img img-thumbnail" width="300px">
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