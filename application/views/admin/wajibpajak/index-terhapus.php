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
                                            <li class="breadcrumb-item"><a href="<?=base_url('admin/wajibpajak')?>">Wajib Pajak</a></li>
                                            <li class="breadcrumb-item active">Terhapus</li>
                                        </ol>
                                    </div>
                                    <h4 class="page-title">Wajib Pajak Terhapus</span></h4>
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

                                        <div class="row mb-3">
                                            
                                            <div class="col-md-12">
                                                <div class="d-flex justify-content-between">
                                                    <a href="<?= base_url('admin/wajibpajak') ?>">
                                                        <button type="submit" class="btn btn-lg btn-primary text-primary bg-light waves-effect waves-light" data-plugin="tippy" data-tippy-placement="top-start" title="Menampilkan Wajib Pajak">
                                                        <span class="btn-label"><i class="mdi mdi-replay"></i></span>Kembali</button>
                                                    </a>
                                                    

                                                </div>
                                            </div> <!-- end .col  -->
                                        </div> <!-- end .row  -->

                                        <div class="row">
                                            <div class="col-12 py-2">

                                                <div class="table table-responsive">

                                                    <!-- start table  -->
                                                    <table id="basic-datatable" class="table dt-responsive nowrap w-100">
                                                        <thead>
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
                                                                    <td style="width: 36px;">
                                                                    <?php if(!empty($l['usaha_logo'])) { ?> 
                                                                            <img src="<?= base_url() ?>assets/images/usaha_logo/<?=$l['usaha_logo'] ?>" alt="" class="img img-thumbnail" width="300px">
                                                                        <?php } else { ?> 
                                                                            <img src="<?= base_url() ?>assets/images/usaha_logo/default-user.png" alt="" class="img img-thumbnail" width="300px">
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
                                                                        <a href="#" class="btn btn-xs btn-success" data-plugin="tippy" data-tippy-placement="top-start" title="Kembalikan" data-toggle="modal" data-target="#kembalikanWp<?= $l['id_wp']; ?>"><i class=" mdi mdi-replay"></i></a>
                                                                        <a href="#" class="btn btn-xs btn-light" data-plugin="tippy" data-tippy-placement="top-start" title="Hapus Permanen" data-toggle="modal" data-target="#hapusWp<?= $l['id_wp']; ?>"><i class="fas fa-trash"></i></a>
                                                                    </td>

                                                                </tr>

                                                                <!--  Modal content for the modalHda example -->
                                                                <div class="modal fade" id="kembalikanWp<?= $l['id_wp']; ?>" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                                                                    <div class="modal-dialog modal-sm">
                                                                        <div class="modal-content">
                                                                            <?= form_open_multipart('C_Wajibpajak/proses_kembalikan_wajib_pajak'); ?>
                                                                            <input type="hidden" name="id_wp" value="<?= $l['id_wp']; ?>">
                                                                            
                                                                            <div class="modal-body">

                                                                                <h1>Kembalikan?</h1>
                                                                                <p>Data akan dikembalikan ke halaman Daftar Wajib Pajak</p>

                                                                            </div>

                                                                            <div class="modal-footer bg-soft-dark d-flex justify-content-between">
                                                                                <button type="submit" class="btn btn-lg btn-success"><i class="mdi mdi-replay mr-1"></i> Kembalikan</button>     
                                                                                <button type="button" class="btn btn-lg btn-dark" data-dismiss="modal"><i class="fas fa-times-circle mr-1"></i> Tidak</button>      
                                                                            </div>


                                                                            <?= form_close() ?>
                                                                        </div><!-- /.modal-content -->
                                                                    </div><!-- /.modal-dialog -->
                                                                </div><!-- /.modal -->

                                                                <!--  Modal content for the modalHda example -->
                                                                <div class="modal fade" id="hapusWp<?= $l['id_wp']; ?>" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                                                                    <div class="modal-dialog modal-sm">
                                                                        <div class="modal-content">
                                                                            <?= form_open_multipart('C_Wajibpajak/proses_hapus_wajib_pajak_permanen'); ?>
                                                                            <input type="hidden" name="id_wp" value="<?= $l['id_wp']; ?>">
                                                                            
                                                                            <div class="modal-body">

                                                                                <h1>Hapus?</h1>
                                                                                <p>Data akan dihapus secara permanen</p>

                                                                            </div>

                                                                            <div class="modal-footer bg-soft-dark d-flex justify-content-between">
                                                                                <button type="submit" class="btn btn-lg btn-light"><i class="fas fa-trash mr-1"></i> Hapus</button>     
                                                                                <button type="button" class="btn btn-lg btn-dark" data-dismiss="modal"><i class="fas fa-times-circle mr-1"></i> Tidak</button>      
                                                                            </div>


                                                                            <?= form_close() ?>
                                                                        </div><!-- /.modal-content -->
                                                                    </div><!-- /.modal-dialog -->
                                                                </div><!-- /.modal -->


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