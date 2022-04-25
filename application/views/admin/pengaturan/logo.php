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
                                            <li class="breadcrumb-item"><a href="<?= base_url('admin/pengaturan') ?>">Pengaturan</a></li>
                                            <li class="breadcrumb-item active">Logo</li>
                                        </ol>
                                    </div>
                                    <h4 class="page-title">Logo</span></h4>
                                </div>
                            </div>
                        </div>
                        <!-- end page title -->
                        

                        <!-- start .row   -->
                        <div class="row">
                            <div class="col-md-12">
                         
                                <?= $this->session->userdata('message') ?>

                                <div class="card">
                                    <div class="card-body">
                                        <div class="row">

                                            <div class="col-md-12">
                                                
                                                <ul class="list-group">

                                                    <li class="list-group-item list-group-item-lg">
                                                        <div class="row">
                                                            <div class="col-lg-2 d-flex justify-content-between">
                                                                <strong >Logo Large Light</strong>
                                                            </div>
                                                            <div class="col-lg-10">

                                                                <a href="#" class="btn btn-xs btn-light float-right" data-toggle="modal" data-target="#logo-lg-light"><i class="mdi mdi-pencil"></i></a>

                                                                <!-- Large modal -->
                                                                <!--  Modal content for the Large example -->
                                                                <div class="modal fade" id="logo-lg-light" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                                                                    <div class="modal-dialog modal-lg">
                                                                        <div class="modal-content">
                                                                            <form action="">
                                                                                <div class="modal-header">
                                                                                    <h4 class="modal-title" id="myLargeModalLabel">Sunting Logo Large Light</h4>
                                                                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                                                                </div>
                                                                                <div class="modal-body">
                                                                
                                                                                        <div class="form-group mb-3">
                                                                                            <label for="example-select">Upload File</label>
                                                                                            <input type="file" class="form-control-file">
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

                                                                <img class="img img-thumbnail bg-dark" src="<?=base_url()?>assets/images/<?=$pengaturan['logo_large_light'] ?>" alt="" width="300px"> 

                                                            </div>
                                                            <!-- end .col  -->
                                                        </div>
                                                    </li>

                                                    <li class="list-group-item list-group-item-lg">
                                                        <div class="row">
                                                            <div class="col-lg-2 d-flex justify-content-between">
                                                                <strong >Logo Large Dark</strong>
                                                            </div>
                                                            <div class="col-lg-10">

                                                                <a href="#" class="btn btn-xs btn-light float-right" data-toggle="modal" data-target="#logo-lg-dark"><i class="mdi mdi-pencil"></i></a>

                                                                <!-- Large modal -->
                                                                <!--  Modal content for the Large example -->
                                                                <div class="modal fade" id="logo-lg-dark" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                                                                    <div class="modal-dialog modal-lg">
                                                                        <div class="modal-content">
                                                                            <form action="">
                                                                                <div class="modal-header">
                                                                                    <h4 class="modal-title" id="myLargeModalLabel">Sunting Logo Large Dark</h4>
                                                                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                                                                </div>
                                                                                <div class="modal-body">
                                                                
                                                                                        <div class="form-group mb-3">
                                                                                            <label for="example-select">Upload File</label>
                                                                                            <input type="file" class="form-control-file">
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

                                                                <img class="img img-thumbnail bg-light" src="<?=base_url()?>assets/images/<?=$pengaturan['logo_large_dark'] ?>" alt="" width="300px">

                                                            </div>
                                                            <!-- end .col  -->
                                                        </div>
                                                    </li>

                                                    <li class="list-group-item list-group-item-lg">
                                                        <div class="row">
                                                            <div class="col-lg-2 d-flex justify-content-between">
                                                                <strong >Logo Small Light</strong>
                                                            </div>
                                                            <div class="col-lg-10">

                                                                <a href="#" class="btn btn-xs btn-light float-right" data-toggle="modal" data-target="#logo-sm-light"><i class="mdi mdi-pencil"></i></a>

                                                                <!-- Large modal -->
                                                                <!--  Modal content for the Large example -->
                                                                <div class="modal fade" id="logo-sm-light" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                                                                    <div class="modal-dialog modal-lg">
                                                                        <div class="modal-content">
                                                                            <form action="">
                                                                                <div class="modal-header">
                                                                                    <h4 class="modal-title" id="myLargeModalLabel">Sunting Logo Small Light</h4>
                                                                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                                                                </div>
                                                                                <div class="modal-body">
                                                                
                                                                                        <div class="form-group mb-3">
                                                                                            <label for="example-select">Upload File</label>
                                                                                            <input type="file" class="form-control-file">
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

                                                                <img class="img img-thumbnail bg-light" src="<?=base_url()?>assets/images/<?=$pengaturan['logo_small_light'] ?>" alt="" width="100px">

                                                            </div>
                                                            <!-- end .col  -->
                                                        </div>
                                                    </li>

                                                    <li class="list-group-item list-group-item-lg">
                                                        <div class="row">
                                                            <div class="col-lg-2 d-flex justify-content-between">
                                                                <strong >Logo Small Dark</strong>
                                                            </div>
                                                            <div class="col-lg-10">

                                                                <a href="#" class="btn btn-xs btn-light float-right" data-toggle="modal" data-target="#logo-sm-dark"><i class="mdi mdi-pencil"></i></a>

                                                                <!-- Large modal -->
                                                                <!--  Modal content for the Large example -->
                                                                <div class="modal fade" id="logo-sm-dark" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                                                                    <div class="modal-dialog modal-lg">
                                                                        <div class="modal-content">
                                                                            <form action="">
                                                                                <div class="modal-header">
                                                                                    <h4 class="modal-title" id="myLargeModalLabel">Sunting Logo Small Dark</h4>
                                                                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                                                                </div>
                                                                                <div class="modal-body">
                                                                
                                                                                        <div class="form-group mb-3">
                                                                                            <label for="example-select">Upload File</label>
                                                                                            <input type="file" class="form-control-file">
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

                                                                <img class="img img-thumbnail bg-light" src="<?=base_url()?>assets/images/<?=$pengaturan['logo_small_dark'] ?>" alt="" width="100px">

                                                            </div>
                                                            <!-- end .col  -->
                                                        </div>
                                                    </li>

                                                    <li class="list-group-item list-group-item-lg">
                                                        <div class="row">
                                                            <div class="col-lg-2 d-flex justify-content-between">
                                                                <strong >Favicon</strong>
                                                            </div>
                                                            <div class="col-lg-10">

                                                                <a href="#" class="btn btn-xs btn-light float-right" data-toggle="modal" data-target="#favicon"><i class="mdi mdi-pencil"></i></a>

                                                                <!-- Large modal -->
                                                                <!--  Modal content for the Large example -->
                                                                <div class="modal fade" id="favicon" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                                                                    <div class="modal-dialog modal-lg">
                                                                        <div class="modal-content">
                                                                            <form action="">
                                                                                <div class="modal-header">
                                                                                    <h4 class="modal-title" id="myLargeModalLabel">Sunting Favicon</h4>
                                                                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                                                                </div>
                                                                                <div class="modal-body">
                                                                
                                                                                        <div class="form-group mb-3">
                                                                                            <label for="example-select">Upload File</label>
                                                                                            <input type="file" class="form-control-file">
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

                                                                <img class="img img-thumbnail bg-light" src="<?=base_url()?>assets/images/<?=$pengaturan['favicon'] ?>" alt="" width="50px">

                                                            </div>
                                                            <!-- end .col  -->
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