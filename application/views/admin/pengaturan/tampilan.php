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
                                            <li class="breadcrumb-item active">Tampilan</li>
                                        </ol>
                                    </div>
                                    <h4 class="page-title">Tampilan</span></h4>

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
                                                                        <h4 class="modal-title" id="myLargeModalLabel">Sunting Tampilan</h4>
                                                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                                                    </div>
                                                                    <div class="modal-body">
                                                    
                                                                            <div class="form-group mb-3">
                                                                                <label for="example-select">Skema Warna</label>
                                                                                <select class="form-control form-control-lg" id="example-select">
                                                                                    <option>Light</option>
                                                                                    <option>Dark</option>
                                                                                    <option>Primary</option>
                                                                                    <option>Secondary</option>
                                                                                    <option>Successs</option>
                                                                                    <option>Warning</option>
                                                                                    <option>Danger</option>
                                                                                </select>
                                                                            </div>
                                                    
                                                                            <div class="form-group mb-3">
                                                                                <label for="example-select">Lebar</label>
                                                                                <select class="form-control form-control-lg" id="example-select">
                                                                                    <option>Fluid</option>
                                                                                    <option>Boxed</option>
                                                                                </select>
                                                                            </div>
                                                    
                                                                            <div class="form-group mb-3">
                                                                                <label for="example-select">Posisi Tata Letak</label>
                                                                                <select class="form-control form-control-lg" id="example-select">
                                                                                    <option>Fixed</option>
                                                                                    <option>Scrollable</option>
                                                                                </select>
                                                                            </div>
                                                    
                                                                            <div class="form-group mb-3">
                                                                                <label for="example-select">Warna Sidebar Kiri</label>
                                                                                <select class="form-control form-control-lg" id="example-select">
                                                                                    <option>Light</option>
                                                                                    <option>Dark</option>
                                                                                    <option>Brand</option>
                                                                                    <option>Gradient</option>
                                                                                </select>
                                                                            </div>
                                                    
                                                                            <div class="form-group mb-3">
                                                                                <label for="example-select">Topbar</label>
                                                                                <select class="form-control form-control-lg" id="example-select">
                                                                                    <option>Light</option>
                                                                                    <option>Dark</option>
                                                                                </select>
                                                                            </div>

                                                                            <div class="form-group text-right">
                                                                                <button type="submit" class="btn btn-sm btn-success"> <i class="fas fa-save mr-1"></i> Simpan </button>
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
                                                                <strong >Skema Warna</strong>
                                                            </div>
                                                            <div class="col-lg-10">
                                                                Light
                                                            </div>
                                                        </div>
                                                    </li>

                                                    <li class="list-group-item list-group-item-lg">
                                                        <div class="row">
                                                            <div class="col-lg-2">
                                                                <strong >Lebar</strong>
                                                            </div>
                                                            <div class="col-lg-10">
                                                                Fluid
                                                            </div>
                                                        </div>
                                                    </li>

                                                    <li class="list-group-item list-group-item-lg">
                                                        <div class="row">
                                                            <div class="col-lg-2">
                                                                <strong >Posisi Tata Letak</strong>
                                                            </div>
                                                            <div class="col-lg-10">
                                                                Fixed
                                                            </div>
                                                        </div>
                                                    </li>

                                                    <li class="list-group-item list-group-item-lg">
                                                        <div class="row">
                                                            <div class="col-lg-2">
                                                                <strong >Warna Sidebar Kiri </strong>
                                                            </div>
                                                            <div class="col-lg-10">
                                                                Light
                                                            </div>
                                                        </div>
                                                    </li>

                                                    <li class="list-group-item list-group-item-lg">
                                                        <div class="row">
                                                            <div class="col-lg-2">
                                                                <strong >Topbar </strong>
                                                            </div>
                                                            <div class="col-lg-10">
                                                                Light
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