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
                                <li class="breadcrumb-item active">Penentuan NPA</li>
                            </ol>
                        </div>
                        <h4 class="page-title">Penentuan NPA</span></h4>
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

                                    <h4 class="header-title">Bobot Komponen Sumber Daya Alam <span class="badge badge-warning">60%</span></h4>
                                    <p class="sub-header"></p>
                                    <?= $this->session->userdata('message_ksda') ?>

                                </div>
                                <div class="col-md-12">
                                    <div class="table-responsive">
                                        <!-- start table  -->
                                        <table class="table table-bordered mb-0">
                                            <thead class="font-weight-bold bg-dark text-white">
                                                <tr>
                                                    <td width="5%" class="text-center">No</td>
                                                    <td width="75%">Kriteria</td>
                                                    <td width="10%" class="text-center">Peringkat</td>
                                                    <td width="10%" class="text-center">Bobot</td>
                                                    <td width="10%" class="text-center">Aksi</td>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <?php $i = 1; ?>
                                                <?php foreach ($pajak_ksda as $ksda) : ?>
                                                    <tr>
                                                        <td class="text-center"><?= $i++; ?></td>
                                                        <td><?= $ksda['kriteria']; ?></td>
                                                        <td class="text-center"><?= $ksda['peringkat']; ?></td>
                                                        <td class="text-center"><?= $ksda['bobot']; ?></td>
                                                        <td class="text-center">
                                                            <a href="#" class="btn btn-sm btn-secondary bg-light text-dark" data-toggle="modal" data-target="#modalBksda<?= $ksda['id']; ?>"><i class="fas fa-fw fa-edit"></i></a>
                                                        </td>
                                                    </tr>








                                                    <!--  Modal content for the Large example -->
                                                    <div class="modal fade" id="modalBksda<?= $ksda['id']; ?>" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                                                        <div class="modal-dialog modal-lg">
                                                            <div class="modal-content">
                                                                <?= form_open_multipart('C_Tentangpajak/psesubah_ksda'); ?>
                                                                <input type="hidden" name="id" value="<?= $ksda['id']; ?>">
                                                                <div class="modal-header bg-dark">
                                                                    <h4 class="modal-title text-light" id="myLargeModalLabel"><?= $ksda['kriteria']; ?></h4>
                                                                    <button type="button" class="close text-light" data-dismiss="modal" aria-hidden="true">×</button>
                                                                </div>
                                                                <div class="modal-body">

                                                                    <div class="row">
                                                                        <div class="col-lg-12 mb-2">
                                                                            <div class="form-gorup">
                                                                                <label for="kriteria">Kriteria</label>
                                                                                <input type="text" class="form-control form-control-lg" name="kriteria" value="<?= $ksda['kriteria']; ?>">
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-lg-2">
                                                                            <div class="form-gorup">
                                                                                <label for="">Peruntuk</label>
                                                                                <input type="text" class="form-control form-control-lg" name="peringkat" value="<?= $ksda['peringkat']; ?>">
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-lg-2">
                                                                            <div class="form-gorup">
                                                                                <label for="">Bobot</label>
                                                                                <input type="text" class="form-control form-control-lg" name="bobot" value="<?= $ksda['bobot']; ?>">
                                                                            </div>
                                                                        </div>
                                                                    </div>

                                                                </div>

                                                                <div class="modal-footer bg-soft-dark d-flex justify-content-between">
                                                                    <button type="submit" class="btn btn-lg btn-success"> <i class="fas fa-save mr-1"></i> Simpan </button>
                                                                    <a href="#" class="btn btn-lg btn-dark" data-dismiss="modal"> <i class="fas fa-times-circle mr-1"></i> Batal </a>
                                                                </div>

                                                                <?= form_close() ?>
                                                            </div><!-- /.modal-content -->
                                                        </div><!-- /.modal-dialog -->
                                                    </div><!-- /.modal -->

                                                <?php endforeach; ?>

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
                                    <h4 class="header-title">Bobot Komponen Kompensasi <span class="badge badge-warning">40%</span></h4>
                                    <p class="sub-header"></p>
                                    <?= $this->session->userdata('message_kk') ?>
                                </div>
                                <div class="col-md-12">
                                    <div class="table-responsive">
                                        <table class="table table-bordered mb-0">
                                            <thead class="font-weight-bold bg-dark text-white">
                                                <tr>
                                                    <td width="5%" class="text-center">No</td>
                                                    <td width="25%">Kriteria</td>
                                                    <td width="15%" class="text-center">0-50 m³</td>
                                                    <td width="15%" class="text-center">51-500 m³</td>
                                                    <td width="15%" class="text-center">501-1000 m³</td>
                                                    <td width="15%" class="text-center">1001-2500 m³</td>
                                                    <td width="15%" class="text-center">>2500 m³</td>
                                                    <td width="15%" class="text-center"></td>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <?php $i = 1; ?>
                                                <?php foreach ($pajak_kk as $kk) : ?>
                                                    <tr>
                                                        <td class="text-center"><?= $i++; ?></td>
                                                        <td><?= $kk['kriteria']; ?></td>
                                                        <td class="text-center"><?= $kk['n1']; ?></td>
                                                        <td class="text-center"><?= $kk['n2']; ?></td>
                                                        <td class="text-center"><?= $kk['n3']; ?></td>
                                                        <td class="text-center"><?= $kk['n4']; ?></td>
                                                        <td class="text-center"><?= $kk['n5']; ?></td>
                                                        <td class="text-center">
                                                            <a href="#" class="btn btn-sm btn-secondary bg-light text-dark" data-toggle="modal" data-target="#modalKk<?= $kk['id']; ?>"><i class="fas fa-fw fa-edit"></i></a>
                                                        </td>
                                                    </tr>




                                                    <!--  Modal content for the Large example -->
                                                    <div class="modal fade" id="modalKk<?= $kk['id']; ?>" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                                                        <div class="modal-dialog modal-lg">
                                                            <div class="modal-content">
                                                                <?= form_open_multipart('C_Tentangpajak/prosesubah_kk'); ?>
                                                                <input type="hidden" name="id" value="<?= $kk['id']; ?>">
                                                                <div class="modal-header bg-dark">
                                                                    <h4 class="modal-title text-light" id="myLargeModalLabel"><?= $kk['kriteria']; ?></h4>
                                                                    <button type="button" class="close text-light" data-dismiss="modal" aria-hidden="true">×</button>
                                                                </div>
                                                                <div class="modal-body">

                                                                    <div class="row">
                                                                        <div class="col-lg-12 mb-3">
                                                                            <div class="form-gorup">
                                                                                <label for="">Kriteria</label>
                                                                                <input type="text" class="form-control form-control-lg" name="kriteria" value="<?= $kk['kriteria']; ?>">
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-lg-2">
                                                                            <div class="form-gorup">
                                                                                <label for="">0-50 m³</label>
                                                                                <input type="text" class="form-control form-control-lg" name="n1" value="<?= $kk['n1']; ?>">
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-lg-2">
                                                                            <div class="form-gorup">
                                                                                <label for="">51-500 m³</label>
                                                                                <input type="text" class="form-control form-control-lg" name="n2" value="<?= $kk['n2']; ?>">
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-lg-2">
                                                                            <div class="form-gorup">
                                                                                <label for="">501-1000 m³</label>
                                                                                <input type="text" class="form-control form-control-lg" name="n3" value="<?= $kk['n3']; ?>">
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-lg-2">
                                                                            <div class="form-gorup">
                                                                                <label for="">1001-2500 m³</label>
                                                                                <input type="text" class="form-control form-control-lg" name="n4" value="<?= $kk['n4']; ?>">
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-lg-2">
                                                                            <div class="form-gorup">
                                                                                <label for="">>2500 m³</label>
                                                                                <input type="text" class="form-control form-control-lg" name="n5" value="<?= $kk['n5']; ?>">
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>

                                                                <div class="modal-footer bg-soft-dark d-flex justify-content-between">
                                                                    <button type="submit" class="btn btn-lg btn-success"> <i class="fas fa-save mr-1"></i> Simpan </button>
                                                                    <a href="#" class="btn btn-lg btn-dark" data-dismiss="modal"> <i class="fas fa-times-circle mr-1"></i> Batal </a>
                                                                </div>

                                                                <?= form_close() ?>
                                                            </div><!-- /.modal-content -->
                                                        </div><!-- /.modal-dialog -->
                                                    </div><!-- /.modal -->


                                                <?php endforeach; ?>
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

                                    <h4 class="header-title">Prosentase komponen HDA (Harga Dasar Air)</h4>
                                    <p class="sub-header"></p>

                                    <?= $this->session->userdata('message_hda') ?>

                                </div>
                                <div class="col-md-12">
                                    <div class="table-responsive">
                                        <table class="table table-bordered mb-0">
                                            <thead class="font-weight-bold bg-dark text-white">
                                                <tr>
                                                    <td width="10%" class="text-center">Kriteria</td>
                                                    <td width="70%">Komponen</td>
                                                    <td width="20%" class="text-center">%</td>
                                                    <td width="20%"></td>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <?php $i = 1; ?>
                                                <?php foreach ($pajak_hda as $hda) : ?>
                                                    <tr>
                                                        <td class="text-center"><?= $hda['kriteria']; ?></td>
                                                        <td><?= $hda['komponen']; ?></td>
                                                        <td class="text-center"><?= $hda['persentasi']; ?></td>
                                                        <td class="text-center">
                                                            <a href="#" class="btn btn-sm btn-secondary bg-light text-dark" data-toggle="modal" data-target="#modalHda<?= $hda['id']; ?>"><i class="fas fa-fw fa-edit"></i></a>
                                                        </td>
                                                    </tr>




                                                    <!--  Modal content for the modalHda example -->
                                                    <div class="modal fade" id="modalHda<?= $hda['id']; ?>" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                                                        <div class="modal-dialog modal-lg">
                                                            <div class="modal-content">
                                                                <?= form_open_multipart('C_Tentangpajak/prosesubah_hda'); ?>
                                                                <input type="hidden" name="id" value="<?= $hda['id']; ?>">
                                                                <div class="modal-header bg-dark">
                                                                    <h4 class="modal-title text-light" id="myLargeModalLabel"><?= $hda['kriteria']; ?>. <?= $hda['komponen']; ?></h4>
                                                                    <button type="button" class="close text-light" data-dismiss="modal" aria-hidden="true">×</button>
                                                                </div>
                                                                <div class="modal-body">

                                                                    <div class="row">
                                                                        <div class="col-lg-2 mb-3">
                                                                            <div class="form-gorup">
                                                                                <label for="">Kriteria</label>
                                                                                <input type="text" class="form-control form-control-lg" name="kriteria" value="<?= $hda['kriteria']; ?>">
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-lg-10 mb-3">
                                                                            <div class="form-gorup">
                                                                                <label for="">Komponen</label>
                                                                                <input type="text" class="form-control form-control-lg" name="komponen" value="<?= $hda['komponen']; ?>">
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-lg-2 mb-3">
                                                                            <div class="form-gorup">
                                                                                <label for="">Presentasi</label>
                                                                                <input type="text" class="form-control form-control-lg " name="persentasi" value="<?= $hda['persentasi']; ?>">
                                                                            </div>
                                                                        </div>
                                                                    </div>

                                                                </div>

                                                                <div class="modal-footer bg-soft-dark d-flex justify-content-between">
                                                                    <button type="submit" class="btn btn-lg btn-success"> <i class="fas fa-save mr-1"></i> Simpan </button>
                                                                    <a href="#" class="btn btn-lg btn-dark" data-dismiss="modal"> <i class="fas fa-times-circle mr-1"></i> Batal </a>
                                                                </div>

                                                                <?= form_close() ?>
                                                            </div><!-- /.modal-content -->
                                                        </div><!-- /.modal-dialog -->
                                                    </div><!-- /.modal -->




                                                <?php endforeach; ?>
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

                                    <h4 class="header-title">Pengaturan Lainnya</h4>
                                    <p class="sub-header"></p>

                                    <?= $this->session->userdata('message_pabt') ?>

                                </div>
                                <div class="col-md-12">
                                    <div class="table-responsive">
                                        <table class="table table-bordered mb-0">
                                            <thead class="font-weight-bold bg-dark text-white">
                                                <tr>
                                                    <td width="10%" class="text-center">Kriteria</td>
                                                    <td width="85%" class="text-center">Nilai</td>
                                                    <td width="5%"></td>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td class="text-center">Pajak PABT</td>
                                                    <td class="text-center"><?= $pajak_pabt['isi'] * 100 ?> %</td>
                                                    <td class="text-center">
                                                        <a href="#" class="btn btn-sm btn-secondary bg-light text-dark" data-toggle="modal" data-target="#modalPABT"><i class="fas fa-fw fa-edit"></i></a>
                                                    </td>
                                                </tr>




                                                <!--  Modal content for the modalHda example -->
                                                <div class="modal fade" id="modalPABT" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                                                    <div class="modal-dialog modal-lg">
                                                        <div class="modal-content">
                                                            <?= form_open_multipart('C_Tentangpajak/proses_ubah_pabt'); ?>
                                                            <input type="hidden" name="id" value="<?= $pajak_pabt['id']; ?>">
                                                            <div class="modal-header bg-dark">
                                                                <h4 class="modal-title text-light" id="myLargeModalLabel">Pajak PABT</h4>
                                                                <button type="button" class="close text-light" data-dismiss="modal" aria-hidden="true">×</button>
                                                            </div>
                                                            <div class="modal-body">

                                                                <div class="row">
                                                                    <div class="col-lg-5 mb-3">
                                                                        <div class="form-gorup">
                                                                            <label for="kriteria">Kriteria</label>
                                                                            <input type="text" class="form-control form-control-lg" name="kriteria" value="Pajak PABT" readonly>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-lg-2 mb-3">
                                                                        <div class="form-gorup">
                                                                            <label for="isi">Nilai (%)</label>
                                                                            <input type="text" class="form-control form-control-lg" name="isi" value="<?= $pajak_pabt['isi']; ?>">
                                                                        </div>
                                                                    </div>
                                                                </div>

                                                            </div>

                                                            <div class="modal-footer bg-soft-dark d-flex justify-content-between">
                                                                <button type="submit" class="btn btn-lg btn-success"> <i class="fas fa-save mr-1"></i> Simpan </button>
                                                                <a href="#" class="btn btn-lg btn-dark" data-dismiss="modal"> <i class="fas fa-times-circle mr-1"></i> Batal </a>
                                                            </div>
                                                            <?= form_close() ?>

                                                        </div><!-- /.modal-content -->
                                                    </div><!-- /.modal-dialog -->
                                                </div><!-- /.modal -->



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