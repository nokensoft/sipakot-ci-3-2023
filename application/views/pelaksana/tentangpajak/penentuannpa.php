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
                                                    </tr>

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
                                                    </tr>


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

                                </div>
                                <div class="col-md-12">
                                    <div class="table-responsive">
                                        <table class="table table-bordered mb-0">
                                            <thead class="font-weight-bold bg-dark text-white">
                                                <tr>
                                                    <td width="10%" class="text-center">Kriteria</td>
                                                    <td width="70%">Komponen</td>
                                                    <td width="20%" class="text-center">%</td>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <?php $i = 1; ?>
                                                <?php foreach ($pajak_hda as $hda) : ?>
                                                    <tr>
                                                        <td class="text-center"><?= $hda['kriteria']; ?></td>
                                                        <td><?= $hda['komponen']; ?></td>
                                                        <td class="text-center"><?= $hda['persentasi']*100; ?>%</td>
                                                    </tr>
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

                                </div>
                                <div class="col-md-12">
                                    <div class="table-responsive">
                                        <table class="table table-bordered mb-0">
                                            <thead class="font-weight-bold bg-dark text-white">
                                                <tr>
                                                    <td width="10%" class="text-center">Kriteria</td>
                                                    <td width="85%" class="text-center">Nilai</td>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td class="text-center">Pajak PABT</td>
                                                    <td class="text-center"><?= $pajak_pabt['isi'] * 100 ?>%</td>
                                                </tr>

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