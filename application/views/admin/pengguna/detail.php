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
                                <li class="breadcrumb-item"><a href="<?= base_url('admin/pengguna') ?>">Pengguna</a></li>
                                <li class="breadcrumb-item active">Detail</li>
                            </ol>
                        </div>
                        <h4 class="page-title">Detail Pengguna</span></h4>
                    </div>
                </div>
            </div>
            <!-- end page title -->

            <!-- start .row  -->
            <div class="row">
                <div class="col-lg-12">
                    
                    <div class="card">
                        <div class="card-body">
                            <div class="row">
                                    
                                <div class="col-12">
                                    <div class="d-flex justify-content-between">
                                        <a href="<?= base_url('admin/pengguna/ubah/') ?><?= $pengguna['id'] ?>">
                                            <button type="button" class="btn btn-lg btn-primary waves-effect waves-light" data-plugin="tippy" data-tippy-placement="top-start" title="Simpan">
                                            <span class="btn-label"><i class="fas fa-edit"></i></span>Ubah</button>
                                        </a>
                                        
                                        <a href="<?= base_url('admin/pengguna') ?>" data-plugin="tippy" data-tippy-placement="top-start" title="Kembali ke Halaman Wajib Pajak">
                                            <button type="button" class="btn btn-lg btn-primary text-primary bg-light waves-effect waves-light">
                                            <span class="btn-label"><i class="mdi mdi-replay"></i></span>Kembali</button>
                                        </a>

                                    </div>
                                    <hr>
                                </div>  
                                                          
                            </div> <!-- end .row  -->

                            <div class="row">

                                <div class="col-md-6">
                                    
                                    <div class="form-group mb-3">
                                        <label for="nama_lengkap">Nama Lengkap <sup class="text-danger" data-plugin="tippy" data-tippy-placement="top-start" title="Wajib dilengkapi"><i class="fas fa-xs fa-asterisk"></i></sup> </label> 
                                        <input type="text" class="form-control form-control-lg bg-light" name="nama_lengkap" id="nama_lengkap" value="<?= $pengguna['nama_lengkap'] ?>" readonly>
                                    </div>

                                    <div class="form-group mb-3">
                                        <label for="no_tlp">Nomor Telepon</label>
                                        <input type="text" class="form-control form-control-lg bg-light" name="no_tlp" id="no_tlp" value="<?= $pengguna['no_tlp'] ?>" readonly>
                                    </div>

                                    <div class="form-group mb-3">
                                        <label for="role_id">Level <sup class="text-danger" data-plugin="tippy" data-tippy-placement="top-start" title="Wajib dilengkapi"><i class="fas fa-xs fa-asterisk"></i></sup> </label>
                                        <input type="text" class="form-control form-control-lg bg-light" name="role_id" id="role_id" value="<?= $pengguna['role'] ?>" readonly>
                                    </div>

                                    <div class="form-group mb-3">
                                        <label for="email">Email <sup class="text-danger" data-plugin="tippy" data-tippy-placement="top-start" title="Wajib dilengkapi"><i class="fas fa-xs fa-asterisk"></i></sup> </label>
                                        <input type="text" class="form-control form-control-lg bg-light" name="email" id="email" value="<?= $pengguna['email'] ?>" readonly>
                                    </div>

                                        <div class="form-group mb-3">
                                            <label for="kata_sandi">Kata Sandi (password) <sup class="text-danger" data-plugin="tippy" data-tippy-placement="top-start" title="Wajib dilengkapi"><i class="fas fa-xs fa-asterisk"></i></sup> </label>
                                            <div class="input-group input-group-merge">
                                                <input type="password" name="kata_sandi" class="form-control form-control-lg bg-light" id="kata_sandi" value="" readonly>
                                                <div class="input-group-append" data-password="false">
                                                    <div class="input-group-text">
                                                        <span class="password-eye font-12"></span>
                                                    </div>
                                                </div>
                                            </div>
                                            <small class="text-warning mt-1 d-block"><i>Silahkan isi jika ingin buat kata sandi baru</i></small>
                                        </div>

                                    <hr>

                                    <div class="form-group mb-3">
                                        <label for="is_active">Aktif</label>
                                        <input type="text" class="form-control form-control-lg bg-light" name="role_id" id="role_id" value="<?php if($pengguna['is_active'] == '1') {echo "Aktif";} else {echo "Tidak Aktif";} ?>" readonly>
                                    </div>        

                                </div>
                                <!-- end .col -->

                                <div class="col-md-6">
                                

                                    <div class="form-group">
                                        <label for="foto">Foto</label>
                                        <div class="form-grouptext-center">
                                            <?php if(!empty($pengguna['foto'])){ ?> 
                                                <img src="<?= base_url() ?>assets/images/pengguna/<?=$pengguna['foto']?>" alt="" class="img img-thumbnail" width="300px">
                                            <?php } else { ?> 
                                                <img src="<?= base_url() ?>assets/images/pengguna/default-user.png" alt="" class="img img-thumbnail" width="300px">
                                            <?php } ?>
                                            <br>
                                        </div>
                                    </div>

                                    <div class="form-group mb-3">
                                        <a href="<?=base_url('/admin/pengguna/ubah/foto/'.$pengguna['id']) ?>" class="btn btn-dark">Ubah Foto</a>
                                    </div>

                                </div>

                            </div>
                            <!-- end .row -->
                        </div> <!-- end card-body-->

                    </div> <!-- end card-->

                </div> <!-- end col -->

            </div>
            <!-- end row -->











        </div> <!-- container -->

    </div> <!-- content -->