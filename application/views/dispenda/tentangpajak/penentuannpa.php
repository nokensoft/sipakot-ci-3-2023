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
                                <li class="breadcrumb-item"><a href="#">Dasbor</a></li>
                                <li class="breadcrumb-item active">Penentuan NPA</li>
                            </ol>
                        </div>
                        <h4 class="page-title">Penentuan NPA</span></h4>

                        <!-- start alert  -->
                        <!-- <div class="alert alert-success alert-dismissible fade show" role="alert">
                                        <strong>Sukses!</strong> Data berhasil diubah
                                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div> -->
                        <!-- end alert  -->

                        <!-- start alert  -->
                        <!-- <div class="alert alert-warning alert-dismissible fade show" role="alert">
                                        <strong>Peringatan!</strong> Ukuran file tidak boleh lebih dari yang telah ditentukan.
                                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div> -->
                        <!-- end alert  -->

                        <!-- start alert  -->
                        <!-- <div class="alert alert-danger alert-dismissible fade show" role="alert">
                                        <strong>Gagal!</strong> Silahkan coba lagi kembali
                                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div> -->
                    </div>
                </div>
            </div>
            <!-- end page title -->

            <!-- start .row  -->
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-md-12">

                                    <div class="dropdown float-right show">

                                        <a href="#" class="btn btn-xs btn-light" data-toggle="modal" data-target="#modal-1" class="btn btn-sm btn-light"><i class="mdi mdi-pencil"></i></a>

                                        <!--  Modal content for the Large example -->
                                        <div class="modal fade" id="modal-1" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                                            <div class="modal-dialog modal-xl">
                                                <div class="modal-content">
                                                    <form action="">
                                                        <div class="modal-header bg-dark">
                                                            <h4 class="modal-title text-light" id="myLargeModalLabel">Bobot Komponen Sumber Daya Alam</h4>
                                                            <button type="button" class="close text-light" data-dismiss="modal" aria-hidden="true">×</button>
                                                        </div>
                                                        <div class="modal-body">

                                                            <!-- start table  -->
                                                            <table class="table table-bordered mb-0">
                                                                <thead class="font-weight-bold bg-primary text-white">
                                                                    <tr>
                                                                        <td width="5%" class="text-center">No</td>
                                                                        <td width="65%">Kriteria</td>
                                                                        <td width="15%" class="text-center">Peringkat</td>
                                                                        <td width="15%" class="text-center">Bobot</td>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                                    <?php $i = 1;
                                                                    foreach ($bobot_ksda as $l) { ?>
                                                                        <tr>
                                                                            <td class="text-center"><?= $i++; ?></td>
                                                                            <td><?= $l['kriteria']; ?></td>
                                                                            <td class="text-center">
                                                                                <input type="text" name="sda_1_1" class="form-control form-control-lg col-12 text-center" id="peringkat1" placeholder="" value="<?= $l['peringkat']; ?>">
                                                                            </td>
                                                                            <td class="text-center">
                                                                                <input type="text" name="sda_1_2" class="form-control form-control-lg col-12 text-center" id="peringkat1" placeholder="" value="<?= $l['bobot']; ?>">
                                                                            </td>
                                                                        </tr>
                                                                    <?php } ?>
                                                                </tbody>
                                                            </table>
                                                            <!-- end table  -->

                                                        </div>

                                                        <div class="modal-footer bg-soft-dark">
                                                            <div class="form-group text-right">
                                                                <button type="submit" class="btn btn-lg btn-success"> <i class="fas fa-save mr-1"></i> Simpan </button>
                                                                <a href="#" class="btn btn-lg btn-dark" data-dismiss="modal"> <i class="fas fa-times-circle mr-1"></i> Batal </a>
                                                            </div>
                                                        </div>

                                                    </form>
                                                </div><!-- /.modal-content -->
                                            </div><!-- /.modal-dialog -->
                                        </div><!-- /.modal -->

                                    </div>

                                    <h4 class="header-title">Bobot Komponen Sumber Daya Alam <span class="badge badge-warning">60%</span></h4>
                                    <p class="sub-header"></p>

                                </div>
                                <div class="col-md-12">
                                    <div class="table-responsive">
                                        <!-- start table  -->
                                        <table class="table table-bordered mb-0">
                                            <thead class="font-weight-bold bg-primary text-white">
                                                <tr>
                                                    <td width="5%" class="text-center">No</td>
                                                    <td width="75%">Kriteria</td>
                                                    <td width="10%" class="text-center">Peringkat</td>
                                                    <td width="10%" class="text-center">Bobot</td>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <?php $i = 1;
                                                foreach ($bobot_ksda as $l) { ?>
                                                    <tr>
                                                        <td class="text-center"><?= $i++; ?></td>
                                                        <td><?= $l['kriteria']; ?></td>
                                                        <td class="text-center"><?= $l['peringkat']; ?></td>
                                                        <td class="text-center"><?= $l['bobot']; ?></td>
                                                    </tr>
                                                <?php } ?>
                                            </tbody>
                                        </table>
                                        <!-- end table  -->
                                    </div> <!-- end .table-responsive-->

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

            <!-- start .row  -->
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-md-12">

                                    <div class="dropdown float-right show">
                                        <a href="#" class="btn btn-xs btn-light" data-toggle="modal" data-target="#modal-2" class="btn btn-sm btn-light"><i class="mdi mdi-pencil"></i></a>

                                        <!--  Modal content for the Large example -->
                                        <div class="modal fade" id="modal-2" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                                            <div class="modal-dialog modal-xl">
                                                <div class="modal-content">
                                                    <form action="">
                                                        <div class="modal-header bg-dark">
                                                            <h4 class="modal-title text-light" id="myLargeModalLabel">Bobot Komponen Kompensasi</h4>
                                                            <button type="button" class="close text-light" data-dismiss="modal" aria-hidden="true">×</button>
                                                        </div>
                                                        <div class="modal-body">

                                                            <div class="row">

                                                                <!-- start .col  -->
                                                                <div class="col-md-12">
                                                                    <div class="table-responsive">
                                                                        <!-- start table  -->
                                                                        <table class="table table-bordered mb-0">
                                                                            <thead class="font-weight-bold bg-primary text-white">
                                                                                <tr>
                                                                                    <td width="5%" class="text-center">No</td>
                                                                                    <td width="20%">Peruntukan</td>
                                                                                    <td width="15%" class="text-center">0-50 m³</td>
                                                                                    <td width="15%" class="text-center">51-500 m³</td>
                                                                                    <td width="15%" class="text-center">501-1000 m³</td>
                                                                                    <td width="15%" class="text-center">1001-2500 m³</td>
                                                                                    <td width="15%" class="text-center">>2500 m³</td>
                                                                                </tr>
                                                                            </thead>
                                                                            <tbody>
                                                                                <?php $i = 1;
                                                                                foreach ($bobot_kk as $l) { ?>
                                                                                    <tr>
                                                                                        <td class="text-center"><?= $i++; ?></td>
                                                                                        <td><?= $l['peruntuk']; ?></td>
                                                                                        <td class="text-center">
                                                                                            <input type="text" name="non_niaga_1" class="form-control form-control-lg col-12 text-center" id="peringkat1" placeholder="" value="<?= $l['nil1']; ?>">
                                                                                        </td>
                                                                                        <td class="text-center">
                                                                                            <input type="text" name="non_niaga_2" class="form-control form-control-lg col-12 text-center" id="peringkat1" placeholder="" value="<?= $l['nil2']; ?>">
                                                                                        </td>
                                                                                        <td class="text-center">
                                                                                            <input type="text" name="non_niaga_3" class="form-control form-control-lg col-12 text-center" id="peringkat1" placeholder="" value="<?= $l['nil3']; ?>">
                                                                                        </td>
                                                                                        <td class="text-center">
                                                                                            <input type="text" name="non_niaga_4" class="form-control form-control-lg col-12 text-center" id="peringkat1" placeholder="" value="<?= $l['nil4']; ?>">
                                                                                        </td>
                                                                                        <td class="text-center">
                                                                                            <input type="text" name="non_niaga_5" class="form-control form-control-lg col-12 text-center" id="peringkat1" placeholder="" value="<?= $l['nil5']; ?>">
                                                                                        </td>
                                                                                    </tr>
                                                                                <?php } ?>
                                                                            </tbody>
                                                                        </table>
                                                                        <!-- start table  -->
                                                                    </div> <!-- end .table-responsive-->

                                                                </div>
                                                                <!-- end .col -->

                                                            </div>
                                                            <!-- end .row -->

                                                        </div>

                                                        <div class="modal-footer bg-soft-dark">
                                                            <div class="form-group text-right">
                                                                <button type="submit" class="btn btn-lg btn-success"> <i class="fas fa-save mr-1"></i> Simpan </button>
                                                                <a href="#" class="btn btn-lg btn-dark" data-dismiss="modal"> <i class="fas fa-times-circle mr-1"></i> Batal </a>
                                                            </div>
                                                        </div>

                                                    </form>
                                                </div><!-- /.modal-content -->
                                            </div><!-- /.modal-dialog -->
                                        </div><!-- /.modal -->

                                    </div>

                                    <h4 class="header-title">Bobot Komponen Kompensasi <span class="badge badge-warning">40%</span></h4>
                                    <p class="sub-header"></p>

                                </div>
                                <div class="col-md-12">
                                    <div class="table-responsive">
                                        <table class="table table-bordered mb-0">
                                            <thead class="font-weight-bold bg-primary text-white">
                                                <tr>
                                                    <td width="5%" class="text-center">No</td>
                                                    <td width="25%">Peruntukan</td>
                                                    <td width="15%" class="text-center">0-50 m³</td>
                                                    <td width="15%" class="text-center">51-500 m³</td>
                                                    <td width="15%" class="text-center">501-1000 m³</td>
                                                    <td width="15%" class="text-center">1001-2500 m³</td>
                                                    <td width="15%" class="text-center">>2500 m³</td>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <?php $i = 1;
                                                foreach ($bobot_kk as $l) { ?>
                                                    <tr>
                                                        <td class="text-center"><?= $i++; ?></td>
                                                        <td><?= $l['peruntuk']; ?></td>
                                                        <td class="text-center"><?= $l['nil1']; ?></td>
                                                        <td class="text-center"><?= $l['nil2']; ?></td>
                                                        <td class="text-center"><?= $l['nil3']; ?></td>
                                                        <td class="text-center"><?= $l['nil4']; ?></td>
                                                        <td class="text-center"><?= $l['nil5']; ?></td>
                                                    </tr>
                                                <?php } ?>
                                            </tbody>
                                        </table>
                                    </div> <!-- end .table-responsive-->

                                </div>
                                <!-- end .col -->

                            </div>
                            <!-- end .row -->

                        </div>
                        <!-- end .card-body  -->

                    </div> <!-- end card -->


                </div>
            </div>
            <!-- end row -->

            <!-- start .row  -->
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-md-12">

                                    <div class="dropdown float-right show">

                                        <a href="#" class="btn btn-xs btn-light" data-toggle="modal" data-target="#modal-3" class="btn btn-sm btn-light"><i class="mdi mdi-pencil"></i></a>

                                        <!--  Modal content for the Large example -->
                                        <div class="modal fade" id="modal-3" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                                            <div class="modal-dialog modal-xl">
                                                <div class="modal-content">
                                                    <form action="">
                                                        <div class="modal-header bg-dark">
                                                            <h4 class="modal-title text-light" id="myLargeModalLabel">Prosentasi Komponen HDA (Harga Dasar Air)</h4>
                                                            <button type="button" class="close text-light" data-dismiss="modal" aria-hidden="true">×</button>
                                                        </div>
                                                        <div class="modal-body">

                                                            <!-- start table  -->
                                                            <table class="table table-bordered mb-0">
                                                                <thead class="font-weight-bold bg-primary text-white">
                                                                    <tr>
                                                                        <td width="5%" class="text-center">Kriteria</td>
                                                                        <td width="65%">Komponen</td>
                                                                        <td width="15%" class="text-center">%</td>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                                    <?php $i = 1;
                                                                    foreach ($presentase_khda as $l) { ?>
                                                                        <tr>
                                                                            <td class="text-center"><?= $l['kriteria']; ?></td>
                                                                            <td><?= $l['komponen']; ?></td>
                                                                            <td class="text-center">
                                                                                <input type="text" name="sda_1_2" class="form-control form-control-lg col-12 text-center" id="peringkat1" placeholder="" value="<?= $l['persen']; ?>">
                                                                            </td>
                                                                        </tr>
                                                                    <?php } ?>
                                                                </tbody>
                                                            </table>
                                                            <!-- end table  -->
                                                        </div>

                                                        <div class="modal-footer bg-soft-dark">
                                                            <div class="form-group text-right">
                                                                <button type="submit" class="btn btn-lg btn-success"> <i class="fas fa-save mr-1"></i> Simpan </button>
                                                                <a href="#" class="btn btn-lg btn-dark" data-dismiss="modal"> <i class="fas fa-times-circle mr-1"></i> Batal </a>
                                                            </div>
                                                        </div>

                                                    </form>
                                                </div><!-- /.modal-content -->
                                            </div><!-- /.modal-dialog -->
                                        </div><!-- /.modal -->






                                    </div>

                                    <h4 class="header-title">Prosentase komponen HDA (Harga Dasar Air)</h4>
                                    <p class="sub-header"></p>

                                </div>
                                <div class="col-md-12">
                                    <div class="table-responsive">
                                        <table class="table table-bordered mb-0">
                                            <thead class="font-weight-bold bg-primary text-white">
                                                <tr>
                                                    <td width="10%" class="text-center">Kriteria</td>
                                                    <td width="70%">Komponen</td>
                                                    <td width="20%" class="text-center">%</td>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <?php $i = 1;
                                                foreach ($presentase_khda as $l) { ?>
                                                    <tr>
                                                        <td class="text-center"><?= $l['kriteria']; ?></td>
                                                        <td><?= $l['komponen']; ?></td>
                                                        <td class="text-center"><?= $l['persen']; ?>%</td>
                                                    </tr>
                                                <?php } ?>
                                            </tbody>
                                        </table>
                                    </div> <!-- end .table-responsive-->

                                </div>
                                <!-- end .col -->

                            </div>
                            <!-- end .row -->

                        </div>
                        <!-- end .card-body  -->

                    </div> <!-- end card -->


                </div>
            </div>
            <!-- end row -->




























        </div> <!-- container -->

    </div> <!-- content -->