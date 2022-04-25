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
                                            <li class="breadcrumb-item active">Profil</li>
                                        </ol>
                                    </div>
                                    <h4 class="page-title">Profil</span></h4>

                                    <!-- start alert  -->
                                    <div class="alert alert-success alert-dismissible fade show" role="alert">
                                        <strong>Sukses!</strong> Data berhasil diubah
                                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <!-- end alert  -->

                                    <!-- start alert  -->
                                    <div class="alert alert-warning alert-dismissible fade show" role="alert">
                                        <strong>Peringatan!</strong> Ukuran file tidak boleh lebih dari yang telah ditentukan.
                                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <!-- end alert  -->

                                    <!-- start alert  -->
                                    <div class="alert alert-danger alert-dismissible fade show" role="alert">
                                        <strong>Gagal!</strong> Silahkan coba lagi kembali
                                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>     
                        <!-- end page title --> 







                        <!-- start .row   -->
                        <div class="row">
                            <div class="col-md-12">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col-md-12">

                                                <div class="dropdown float-right show">
                                                    <!-- <a href="?p=wajib-pajak-baru" class="btn btn-xs btn-light"><i class="mdi mdi-pencil"></i></a> -->
                                                    <a href="?p=wajib-pajak-baru" class="btn btn-lg btn-light mb-2" data-toggle="modal" data-target="#pengaturan-informasi-situs"><i class="mdi mdi-pencil"></i></a>

                                                    <!-- Large modal -->
                                                    <!--  Modal content for the Large example -->
                                                    <div class="modal fade" id="pengaturan-informasi-situs" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                                                        <div class="modal-dialog modal-lg">
                                                            <div class="modal-content">
                                                                <?= form_open_multipart('C_Pengguna/prosesubah'); ?>
                                                                <input type="hidden" name="id" value="<?= $user['id']?>">
                                                                    <div class="modal-header">
                                                                        <h4 class="modal-title" id="myLargeModalLabel">Sunting Profil</h4>
                                                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                                                    </div>
                                                                    <div class="modal-body">

                                                                            <div class="form-group mb-3">
                                                                                <label for="namalengkap">Nama Lengkap</label>
                                                                                <input type="text" class="form-control form-control-lg" id="name" name="name" placeholder="Nama Lengkap" value="<?= $user['name']?>">
                                                                                <div class="valid-feedback">
                                                                                    Looks good!
                                                                                </div>
                                                                            </div>

                                                                            <div class="form-group mb-3">
                                                                                <img src="<?=base_url()?>assets/images/users/<?= $user['image']?>" width="150px" alt="user-image" class="">
                                                                            </div>

                                                                            <div class="form-group mb-3">
                                                                                <label for="foto">Upload foto baru </label>
                                                                                <input type="file" class="form-control-file form-control-lg" id="foto">
                                                                                <div class="valid-feedback">
                                                                                    Looks good!
                                                                                </div>
                                                                            </div>

                                                                            <div class="form-group mb-3">
                                                                                <label for="email">Email</label>
                                                                                <input type="text" class="form-control form-control-lg" id="email" name="email" placeholder="Email" value="<?= $user['email']?>">
                                                                                <div class="valid-feedback">
                                                                                    Looks good!
                                                                                </div>
                                                                            </div>

                                                                            <div class="form-group mb-3">
                                                                                <label for="nomorkantor">Nomor Kantor</label>
                                                                                <input type="text" class="form-control form-control-lg" id="nomorkantor" name="nomorkantor" placeholder="Email" value="(10967) 12345678">
                                                                                <div class="valid-feedback">
                                                                                    Looks good!
                                                                                </div>
                                                                            </div>

                                                                            <div class="form-group mb-3">
                                                                                <label for="username">Username</label>
                                                                                <input type="text" class="form-control form-control-lg" id="username" name="username" placeholder="Username" value="<?= $user['username']?>">
                                                                                <div class="valid-feedback">
                                                                                    Looks good!
                                                                                </div>
                                                                            </div>

                                                                            <div class="form-group mb-3">
                                                                                <label for="password">Password Baru</label>
                                                                                <input type="text" class="form-control form-control-lg" id="password" placeholder="Ketik password baru" value="">
                                                                                <small class="text-warning mt-2">* Biarkan kosong jika tidak ingin mengganti password</small>
                                                                                <div class="valid-feedback">
                                                                                    Looks good!
                                                                                </div>
                                                                            </div>

                                                                            <div class="form-group text-right">
                                                                                <button type="submit" class="btn btn-lg btn-success text-uppercase"> <i class="fas fa-save mr-1"></i> Simpan </button>
                                                                                <a href="#" class="btn btn-lg btn-dark" class="close" data-dismiss="modal" aria-hidden="true"> <i class="fas fa-times-circle mr-1"></i> Batal </a>
                                                                            </div>
                                                                    </div>
                                                                <?= form_close() ?>
                                                            </div><!-- /.modal-content -->
                                                        </div><!-- /.modal-dialog -->
                                                    </div><!-- /.modal -->

                                                </div>

                                                <h4 class="header-title">Detail Pengguna</h4>
                                                <p class="sub-header"></p>

                                            </div>

                                            <div class="col-md-12">
                                                
                                                <ul class="list-group">

                                                    <li class="list-group-item list-group-item-lg">
                                                        <div class="row">
                                                            <div class="col-lg-2">
                                                                <strong >Nama Lengkap</strong>
                                                            </div>
                                                            <div class="col-lg-10">
                                                                <?= $user['name']?>
                                                            </div>
                                                        </div>
                                                    </li>

                                                    <li class="list-group-item list-group-item-lg">
                                                        <div class="row">
                                                            <div class="col-lg-2">
                                                                <strong >Foto</strong>
                                                            </div>
                                                            <div class="col-lg-10">
                                                                <img src="<?=base_url()?>assets/images/users/<?= $user['image']?>" width="150px" alt="user-image" class="rounded-circle">
                                                            </div>
                                                        </div>
                                                    </li>

                                                    <li class="list-group-item list-group-item-lg">
                                                        <div class="row">
                                                            <div class="col-lg-2">
                                                                <strong >Email</strong>
                                                            </div>
                                                            <div class="col-lg-10">
                                                                <?= $user['email']?>
                                                            </div>
                                                        </div>
                                                    </li>

                                                    <li class="list-group-item list-group-item-lg">
                                                        <div class="row">
                                                            <div class="col-lg-2">
                                                                <strong >Nomor Kantor</strong>
                                                            </div>
                                                            <div class="col-lg-10">
                                                                <?= $user['mobile']?>
                                                            </div>
                                                        </div>
                                                    </li>

                                                    <li class="list-group-item list-group-item-lg">
                                                        <div class="row">
                                                            <div class="col-lg-2">
                                                                <strong >Nomor SMS / WA</strong>
                                                            </div>
                                                            <div class="col-lg-10">
                                                                0821 12343456
                                                            </div>
                                                        </div>
                                                    </li>

                                                    <li class="list-group-item list-group-item-lg">
                                                        <div class="row">
                                                            <div class="col-lg-2">
                                                                <strong >Username</strong>
                                                            </div>
                                                            <div class="col-lg-10">
                                                                <?= $user['username']?>
                                                            </div>
                                                        </div>
                                                    </li>

                                                    <li class="list-group-item list-group-item-lg">
                                                        <div class="row">
                                                            <div class="col-lg-2">
                                                                <strong >Password </strong>
                                                            </div>
                                                            <div class="col-lg-10">
                                                                <a href="#" class="">Ganti Password</a>
                                                            </div>
                                                        </div>
                                                    </li>

                                                    <li class="list-group-item list-group-item-lg">
                                                        <div class="row">
                                                            <div class="col-lg-2">
                                                                <strong >Level </strong>
                                                            </div>
                                                            <div class="col-lg-10">
                                                                <?= $user['role']?>
                                                            </div>
                                                        </div>
                                                    </li>

                                                </ul>

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