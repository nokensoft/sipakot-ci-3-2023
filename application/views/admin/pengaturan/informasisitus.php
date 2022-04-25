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
                                            <li class="breadcrumb-item active">Informasi Situs</li>
                                        </ol>
                                    </div>
                                    <h4 class="page-title">Informasi Situs</span></h4>

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
                                                                        <h4 class="modal-title" id="myLargeModalLabel">Sunting Informasi Situs</h4>
                                                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                                                    </div>
                                                                    <div class="modal-body">

                                                                            <div class="form-group mb-3">
                                                                                <label for="judul_situs">Judul Situs</label>
                                                                                <input type="text" class="form-control form-control-lg" id="judul_situs" placeholder="First name" value=" Aplikasi Perhitungan Pajak Air Tanah" required="">
                                                                                <div class="valid-feedback">
                                                                                    Looks good!
                                                                                </div>
                                                                            </div>

                                                                            <div class="form-group mb-3">
                                                                                <label for="tagline">Tag Line</label>
                                                                                <input type="text" class="form-control form-control-lg" id="tagline" placeholder="First name" value="Dinas Lingkungan Hidup dan Kebersihan Kota Jayapura" required="">
                                                                                <div class="valid-feedback">
                                                                                    Looks good!
                                                                                </div>
                                                                            </div>

                                                                            <div class="form-group mb-3">
                                                                                <label for="tagline">Title</label>
                                                                                <input type="text" class="form-control form-control-lg" id="tagline" placeholder="First name" value="value" required="">
                                                                                <div class="valid-feedback">
                                                                                    Looks good!
                                                                                </div>
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

                                                <h4 class="header-title">Dasar Pengenaan Pajak</h4>
                                                <p class="sub-header"></p>

                                            </div>

                                            <div class="col-md-12">
                                                
                                                <ul class="list-group">

                                                    <li class="list-group-item list-group-item-lg">
                                                        <div class="row">
                                                            <div class="col-lg-2">
                                                                <strong >Judul Situs </strong>
                                                            </div>
                                                            <div class="col-lg-10">
                                                                 Aplikasi Perhitungan Pajak Air Tanah Dinas Lingkungan Hidup dan Kebersihan Kota Jayapura
                                                            </div>
                                                        </div>
                                                    </li>

                                                    <li class="list-group-item list-group-item-lg">
                                                        <div class="row">
                                                            <div class="col-lg-2">
                                                                <strong >Tag Line </strong>
                                                            </div>
                                                            <div class="col-lg-10">
                                                                Dinas Lingkungan Hidup dan Kebersihan Kota Jayapura
                                                            </div>
                                                        </div>
                                                    </li>

                                                    <li class="list-group-item list-group-item-lg">
                                                        <div class="row">
                                                            <div class="col-lg-2">
                                                                <strong >title </strong>
                                                            </div>
                                                            <div class="col-lg-10">
                                                                value
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