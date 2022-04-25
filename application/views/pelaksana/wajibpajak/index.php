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
                                            <li class="breadcrumb-item"><a href="<?=base_url('admin/dasbor')?>">Dasbor</a></li>
                                            <li class="breadcrumb-item active">Wajib Pajak</li>
                                        </ol>
                                    </div>
                                    <h4 class="page-title">Wajib Pajak</span></h4>
                                </div>
                            </div>
                        </div>
                        <!-- end page title -->

                        

                        <!-- start .row  -->
                        <div class="row">
                            <div class="col-12">

                                <?= $this->session->userdata('message') ?>

                                <div class="card">
                                    <div class="card-body">

                                        <div class="row">
                                            <div class="col-12 py-2">

                                                <div class="table table-responsive">

                                                    <!-- start table  -->
                                                    <table id="basic-datatable" class="table table-striped dt-responsive nowrap w-100">
                                                        <thead class="bg-light">
                                                            <tr>
                                                                <th class="font-weight-bold">No</th>
                                                                <th class="font-weight-bold">Logo</th>
                                                                <th class="font-weight-bold">Nama Usaha</th>
                                                                <th class="font-weight-bold">Alamat Usaha</th>
                                                                <th class="font-weight-bold">Pemilik Usaha</th>
                                                                <th class="font-weight-bold">Nomor Telepon Pemilik</th>
                                                                <th class="font-weight-bold">Email Pemilik</th>
                                                                <th class="font-weight-bold">Aktif</th>
                                                                <th class="font-weight-bold">Opsi</th>
                                                            </tr>
                                                        </thead>


                                                        <tbody>

                                                            <?php $no = 1;
                                                            foreach ($wp as $l) { ?>

                                                                <tr>
                                                                    <td>
                                                                        <?=$no; ?>
                                                                    </td>
                                                                    <td style="width: 50px;">
                                                                        <?php if(!empty($l['usaha_logo'])) { ?> 
                                                                            <img src="<?= base_url() ?>assets/images/usaha_logo/<?=$l['usaha_logo'] ?>" alt="" class="img img-thumbnail" width="300px">
                                                                        <?php } else { ?> 
                                                                            <img src="<?= base_url() ?>assets/images/usaha_logo/default_image.png" alt="" class="img img-thumbnail" width="300px">
                                                                        <?php }?>
                                                                    </td>

                                                                    <td>
                                                                        <h5 class="m-0 font-weight-normal"><?= $l['usaha_nama']; ?></h5>
                                                                        <?php
                                                                        // query komponen usaha
                                                                        $queryKomponenUsaha = $this->db->query("SELECT * FROM pajak_kk WHERE id = " . $l['usaha_kategori']);
                                                                        $rowKomponenUsaha = $queryKomponenUsaha->row_array();
                                                                        ?>
                                                                        <p class="mb-0 text-muted"><small class="badge badge-soft-secondary"><?= $rowKomponenUsaha['kriteria'] ?></small></p>
                                                                    </td>

                                                                    <td>
                                                                        <?= $l['usaha_alamat']; ?>
                                                                    </td>

                                                                    <td>
                                                                        <i class="fa fa-user mr-1 text-dark"></i> <?= $l['pemilik_nama']; ?>
                                                                    </td>

                                                                    <td>
                                                                        <?= $l['pemilik_telp']; ?>
                                                                    </td>

                                                                    <td>
                                                                        <?= $l['pemilik_email']; ?>
                                                                    </td>

                                                                    <td>
                                                                        <?php
                                                                            if($l['is_active'] == 1) { echo '<i class="fa fa-check-circle text-success" data-plugin="tippy" data-tippy-placement="top-start" title="Aktif"></i>'; } 
                                                                            elseif($l['is_active'] == 0) { echo '<i class="fa fa-times-circle text-dark" data-plugin="tippy" data-tippy-placement="top-start" title="Tidak Aktif"></i>'; }
                                                                        ?>
                                                                    </td>

                                                                    <td>
                                                                        <a href="<?= base_url('pelaksana/wajibpajak/tagihan/new/') ?><?= $l['id_wp']; ?>?t=<?=date('Y')?>" class="btn btn-xs btn-success" data-plugin="tippy" data-tippy-placement="top-start" title="Tagihan"><i class="mdi mdi-animation-outline"></i></a>
                                                                        <a href="<?= base_url('pelaksana/wajibpajak/detail/') ?><?= $l['id_wp']; ?>" class="btn btn-xs btn-light" data-plugin="tippy" data-tippy-placement="top-start" title="Detail"><i class="mdi mdi-eye"></i></a>
                                                                    </td>

                                                                </tr>



                                                            <?php $no++;} ?>


                                                        </tbody>
                                                    </table>
                                                    <!-- end table  -->

                                                </div>

                                            </div> <!-- end .col  -->

                                        </div> <!-- end .row  -->

                                    </div> <!-- end card body-->
                                </div> <!-- end card -->
                            </div><!-- end col-->
                        </div>
                        <!-- end .row-->

                    </div> <!-- container -->

                </div> <!-- content -->