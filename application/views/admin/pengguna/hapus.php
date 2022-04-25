<!-- ============================================================== -->
<!-- Start Page Content here -->
<!-- ============================================================== -->

<div class="content-page">
    <div class="content">

        <!-- Start Content-->
        <div class="container-fluid">

            <!-- start .row   -->
            <div class="row mt-3">
                <div class="col-md-12">
                    <?= form_open_multipart('admin/pengguna/tambah/proses'); ?>
                    <div class="card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-md-12">

                                    <div class="dropdown float-right show">
                                        <a href="<?= base_url() ?>admin/pengguna/hapus/proses/<?= $user['id']; ?>" class="btn btn-lg btn-danger bg-danger mb-2"><i class="fas fa-check-circle mr-1"></i> Hapus</a>
                                        <a href="<?= base_url()?>admin/pengguna" class="btn btn-lg btn-light mb-2"><i class="fas fa-times-circle mr-1"></i> Batal</a>
                                    </div>

                                    <h3 class="font-weight-bold">Anda yakin ingin menghapus data ini?</h3>

                                </div>
                                <!-- end .col -->

                                <div class="col-md-12">
                                    <ul class="list-group">

                                        <li class="list-group-item list-group-item-lg">
                                            <div class="row">
                                                <div class="col-lg-2 col-sm-2">
                                                    <strong >Nama Lengkap</strong>
                                                </div>
                                                <div class="col-lg-10 col-sm-10">
                                                    <?= $user['nama_lengkap']?>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </div> 
                                <!-- end .col  -->

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