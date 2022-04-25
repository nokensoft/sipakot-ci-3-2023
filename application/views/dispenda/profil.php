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
                                            <li class="breadcrumb-item"><a href="<?=base_url()?>admin/dasbor">Dasbor</a></li>
                                            <li class="breadcrumb-item"><a href="#">Pengaturan</a></li>
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
                                                    <a href="?p=wajib-pajak-baru" class="btn btn-xs btn-light" data-toggle="modal" data-target="#pengaturan-informasi-situs"><i class="mdi mdi-pencil"></i></a>

                                                    <!-- Large modal -->
                                                    <!--  Modal content for the Large example -->
                                                    <div class="modal fade" id="pengaturan-informasi-situs" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                                                        <div class="modal-dialog modal-lg">
                                                            <div class="modal-content">
                                                                <form action="">
                                                                    <div class="modal-header">
                                                                        <h4 class="modal-title" id="myLargeModalLabel">Sunting Profil</h4>
                                                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                                                    </div>
                                                                    <div class="modal-body">

                                                                            <div class="form-group mb-3">
                                                                                <label for="namalengkap">Nama Lengkap</label>
                                                                                <input type="text" class="form-control form-control-lg" id="namalengkap" placeholder="First name" value="Heavenly Joice">
                                                                                <div class="valid-feedback">
                                                                                    Looks good!
                                                                                </div>
                                                                            </div>

                                                                            <div class="form-group mb-3">
                                                                                <img src="<?=base_url()?>assets/images/users/user4.png" class="img img-thumbnail" alt="Foto" width="150px">
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
                                                                                <input type="text" class="form-control form-control-lg" id="email" placeholder="Email" value="pelaksana@jayapurakota.go.id">
                                                                                <div class="valid-feedback">
                                                                                    Looks good!
                                                                                </div>
                                                                            </div>

                                                                            <div class="form-group mb-3">
                                                                                <label for="nomorkantor">Nomor Kantor</label>
                                                                                <input type="text" class="form-control form-control-lg" id="nomorkantor" placeholder="Email" value="(10967) 12345678">
                                                                                <div class="valid-feedback">
                                                                                    Looks good!
                                                                                </div>
                                                                            </div>

                                                                            <div class="form-group mb-3">
                                                                                <label for="username">Username</label>
                                                                                <input type="text" class="form-control form-control-lg" id="username" placeholder="Email" value="pelaksana">
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
                                                    
                                                                            <div class="form-group mb-3">
                                                                                <label for="level">Level</label>
                                                                                <select class="form-control form-control-lg" id="level">
                                                                                    <option value="pelaksana">Pelaksana</option>
                                                                                    <option value="administrator">Administrator</option>
                                                                                    <option value="wajibpajak">Wajib Pajak</option>
                                                                                    <option value="dispenda">Dispenda</option>
                                                                                </select>
                                                                            </div>

                                                                            <div class="form-group text-right">
                                                                                <button type="submit" class="btn btn-sm btn-success text-uppercase"> <i class="fas fa-save mr-1"></i> Simpan </button>
                                                                                <a href="#" class="btn btn-sm btn-dark" class="close" data-dismiss="modal" aria-hidden="true"> <i class="fas fa-times-circle mr-1"></i> Batal </a>
                                                                            </div>
                                                                    </div>
                                                                </form>
                                                            </div><!-- /.modal-content -->
                                                        </div><!-- /.modal-dialog -->
                                                    </div><!-- /.modal -->

                                                </div>

                                                <h4 class="header-title">Pengaturan Tampilan</h4>
                                                <p class="sub-header"></p>

                                            </div>

                                            <div class="col-md-12">
                                                
                                                <ul class="list-group">

                                                    <li class="list-group-item list-group-item-lg">
                                                        <div class="row">
                                                            <div class="col-lg-2">
                                                                <strong >Heavenly Joice</strong>
                                                            </div>
                                                            <div class="col-lg-10">
                                                                Pelaksana
                                                            </div>
                                                        </div>
                                                    </li>

                                                    <li class="list-group-item list-group-item-lg">
                                                        <div class="row">
                                                            <div class="col-lg-2">
                                                                <strong >Foto</strong>
                                                            </div>
                                                            <div class="col-lg-10">
                                                                <img src="<?=base_url()?>assets/images/users/user4.PNG" width="150px" alt="user-image" class="rounded-circle">
                                                            </div>
                                                        </div>
                                                    </li>

                                                    <li class="list-group-item list-group-item-lg">
                                                        <div class="row">
                                                            <div class="col-lg-2">
                                                                <strong >Email</strong>
                                                            </div>
                                                            <div class="col-lg-10">
                                                                pelaksana@jayapurakota.go.id
                                                            </div>
                                                        </div>
                                                    </li>

                                                    <li class="list-group-item list-group-item-lg">
                                                        <div class="row">
                                                            <div class="col-lg-2">
                                                                <strong >Nomor Kantor</strong>
                                                            </div>
                                                            <div class="col-lg-10">
                                                                (10967) 12345678
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
                                                                pelaksana
                                                            </div>
                                                        </div>
                                                    </li>

                                                    <li class="list-group-item list-group-item-lg">
                                                        <div class="row">
                                                            <div class="col-lg-2">
                                                                <strong >Password </strong>
                                                            </div>
                                                            <div class="col-lg-10">
                                                                **********
                                                            </div>
                                                        </div>
                                                    </li>

                                                    <li class="list-group-item list-group-item-lg">
                                                        <div class="row">
                                                            <div class="col-lg-2">
                                                                <strong >Level </strong>
                                                            </div>
                                                            <div class="col-lg-10">
                                                                Pelaksana
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