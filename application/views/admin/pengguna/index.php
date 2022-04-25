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
                                <li class="breadcrumb-item active">Pengguna</li>
                            </ol>
                        </div>
                        <h4 class="page-title">Pengguna</span></h4>
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

                            <div class="row mb-3">
                                
                                <div class="col-md-12">
                                    <div class="d-flex justify-content-between">
                                        <a href="<?= base_url('admin/pengguna/tambah') ?>">
                                            <button type="submit" class="btn btn-lg btn-primary waves-effect waves-light" data-plugin="tippy" data-tippy-placement="top-start" title="Tambah">
                                            <span class="btn-label"><i class="fas fa-plus"></i></span>Tambah</button>
                                        </a>
                                        
                                        <a href="<?= base_url('admin/pengguna/terhapus') ?>" data-plugin="tippy" data-tippy-placement="top-start" title="Menampilkan Pengguna Terhapus">
                                            <button type="button" class="btn btn-lg btn-primary text-primary bg-light waves-effect waves-light">
                                            <span class="btn-label"><i class="fas fa-trash"></i></span>Terhapus</button>
                                        </a>

                                    </div>
                                </div> <!-- end .col  -->
                            </div> <!-- end .row  -->

                            <div class="row">
                                <div class="col-12 py-2">

                                    <!-- start table  -->
                                    <div class="table table-responsive">
                                        <table id="basic-datatable" class="table table-striped dt-responsive nowrap w-100">
                                            <thead class="bg-light">
                                                <tr>
                                                    <th width="10%" class="font-weight-bold">Foto</th>
                                                    <th width="20%" class="font-weight-bold">Nama Lengkap</th>
                                                    <th width="20%" class="font-weight-bold">Email</th>
                                                    <th width="20%" class="font-weight-bold">Level</th>
                                                    <th width="15%" class="font-weight-bold">Aktif</th>
                                                    <th width="15%" class="font-weight-bold">Opsi</th>
                                                </tr>
                                            </thead>


                                            <tbody>

                                                <?php $i = 1;
                                                foreach ($pengguna as $l) { ?>

                                                    <tr>
                                                        <td style="width: 36px;">
                                                            <?php if(!empty($l['foto'])) { ?> 
                                                                <img src="<?= base_url() ?>assets/images/pengguna/<?= $l['foto']; ?>" alt="Foto Pengguna" title="contact-img" class="img img-thumbnail" />
                                                            <?php } else { ?>
                                                                <img src="<?= base_url() ?>assets/images/pengguna/default-user.png" alt="Foto Pengguna" title="contact-img" class="img img-thumbnail" />
                                                            <?php } ?>
                                                            
                                                        </td>

                                                        <td>
                                                            <h5 class="m-0 font-weight-normal"><?= $l['nama_lengkap']; ?></h5>
                                                            <!-- <p class="mb-0 text-muted"><small class="badge badge-soft-secondary"><?= $l['role'] ?></small></p> -->
                                                        </td>

                                                        <td>
                                                            <?= $l['email']; ?>
                                                        </td>

                                                        <td>
                                                            <?php 
                                                                if($l['role_id'] == 1) {echo 'Administrator';}
                                                                elseif($l['role_id'] == 2) {echo 'Dispenda';}
                                                                elseif($l['role_id'] == 3) {echo 'Pelaksana';}
                                                                elseif($l['role_id'] == 4) {echo 'Wajib Pajak';}
                                                            ?>
                                                        </td>

                                                        <td>
                                                            <?php
                                                                if($l['is_active'] == 1) { echo '<i class="fa fa-check-circle text-success"></i>'; } 
                                                                elseif($l['is_active'] == 0) { echo '<i class="fa fa-times-circle text-dark"></i>'; }
                                                            ?>
                                                        </td>

                                                        <td>
                                                            <?php if($l['role_id'] != 0) : ?>
                                                                <a href="<?= base_url() ?>admin/pengguna/detail/<?= $l['id']; ?>" class="btn btn-xs btn-dark" data-plugin="tippy" data-tippy-placement="top-start" title="Detail" ><i class="mdi mdi-eye"></i></a>
                                                                <a href="<?= base_url() ?>admin/pengguna/ubah/<?= $l['id']; ?>" class="btn btn-xs btn-light" data-plugin="tippy" data-tippy-placement="top-start" title="Ubah" ><i class="mdi mdi-pencil"></i></a>
                                                                    <a href="#" class="btn btn-xs btn-light" data-plugin="tippy" data-tippy-placement="top-start" title="Hapus" data-toggle="modal" data-target="#hapusPengguna<?= $l['id']; ?>"><i class="fas fa-trash"></i></a>
                                                            <?php else: endif; ?>
                                                        </td>
                                                    </tr>

                                                    <!--  Modal content for the modalHda example -->
                                                    <div class="modal fade" id="hapusPengguna<?= $l['id']; ?>" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                                                        <div class="modal-dialog modal-sm">
                                                            <div class="modal-content">
                                                                <?= form_open_multipart('C_user/proses_hapus_pengguna'); ?>
                                                                <input type="hidden" name="id" value="<?= $l['id']; ?>">
                                                                
                                                                <div class="modal-body">

                                                                    <h1>Hapus?</h1>
                                                                    <p>Data akan dipindahkan ke kelompok terhapus</p>

                                                                </div>

                                                                <div class="modal-footer bg-soft-dark d-flex justify-content-between">
                                                                    <button type="submit" class="btn btn-lg btn-light"><i class="fas fa-trash mr-1"></i> Hapus</button>     
                                                                    <button type="button" class="btn btn-lg btn-dark" data-dismiss="modal"><i class="fas fa-times-circle mr-1"></i> Tidak</button>      
                                                                </div>


                                                                <?= form_close() ?>
                                                            </div><!-- /.modal-content -->
                                                        </div><!-- /.modal-dialog -->
                                                    </div><!-- /.modal -->

                                                <?php } ?>

                                            </tbody>
                                        </table>
                                    
                                    </div>
                                    <!-- end table  -->

                                </div>
                            </div>

                                    

                        </div> <!-- end card body-->
                    </div> <!-- end card -->
                </div><!-- end col-->
            </div>
            <!-- end .row-->






        </div> <!-- container -->

    </div> <!-- content -->