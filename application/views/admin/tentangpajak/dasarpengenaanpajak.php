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
                                <li class="breadcrumb-item"><a href="<?= base_url('admin/tentangpajak') ?>">Tentang Pajak</a></li>
                                <li class="breadcrumb-item active">Dasar Pengenaan Pajak</li>
                            </ol>
                        </div>
                        <h4 class="page-title">Dasar Pengenaan Pajak</span></h4>
                    </div>
                </div>
            </div>
            <!-- end page title -->



            <!-- start .row  -->
            <div class="row">
                <div class="col-md-12">

                <?= $this->session->userdata('message') ?>
                
                    <div class="card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-md-12">



                                    <div class="dropdown float-right show">
                                        <!-- <a href="?p=wajib-pajak-baru" class="btn btn-xs btn-light"><i class="mdi mdi-pencil"></i></a> -->
                                        <a href="?p=wajib-pajak-baru" class="btn btn-xs btn-light" data-toggle="modal" data-target="#bs-example-modal-lg"><i class="mdi mdi-pencil"></i></a>

                                        <!-- Large modal -->

                                        <!--  Modal content for the Large example -->
                                        <div class="modal fade" id="bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                                            <div class="modal-dialog modal-lg">
                                                <div class="modal-content">

                                                    <?= form_open_multipart('C_Tentangpajak/prosesubah_info_dpp'); ?>
                                                    <div class="modal-header">
                                                        <h4 class="modal-title" id="myLargeModalLabel">Sunting</h4>
                                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                                    </div>
                                                    <div class="modal-body">
                                                        <div class="form-group">
                                                            <textarea name="isi" class="form-control" rows="20" id="editor"> <?php echo $pajak_dpp['isi'] ?> </textarea>
                                                        </div>
                                                        <div class="form-group text-right">
                                                            <button type="submit" class="btn btn-lg btn-success"> <i class="fas fa-save mr-1"></i> Simpan </button>
                                                            <a href="#" class="btn btn-lg btn-dark" class="close" data-dismiss="modal" aria-hidden="true"> <i class="fas fa-times-circle mr-1"></i> Batal </a>
                                                        </div>
                                                    </div>
                                                    <?= form_close() ?>
                                                </div><!-- /.modal-content -->
                                            </div><!-- /.modal-dialog -->
                                        </div><!-- /.modal -->

                                    </div>
                                </div>
                                <div class="col-md-12">

                                    <?php echo $pajak_dpp['isi']; ?>

                                </div>
                                <!-- end .col -->
                            </div>
                            <!-- end .row -->

                        </div>
                        <!-- end .card-body  -->

                    </div> <!-- end card -->


                </div>
            </div>
            <!-- end .row -->

        </div> <!-- container -->

    </div> <!-- content -->