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
                                            <li class="breadcrumb-item active">Profil</li>
                                        </ol>
                                    </div>
                                    <h4 class="page-title">Profil</span></h4>
                                </div>
                            </div>
                        </div>
                        <!-- end page title -->

                        <!-- start .row   -->
                        <div class="row">
                            <div class="col-12">

                                <?= $this->session->flashdata('message') ?>
                                
                                <div class="card">
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <a href="<?=base_url('admin/profil/ubah')?>" data-plugin="tippy" data-tippy-placement="top-start" title="Menampilkan Halaman Ubah Profil">
                                                    <button type="button" class="btn btn-lg btn-primary waves-effect waves-light">
                                                    <span class="btn-label"><i class="mdi mdi-pencil"></i></span>Ubah</button>
                                                </a>
                                                <hr>
                                            </div>

                                            <div class="col-xl-6 col-lg-8 col-md-6 col-sm-12 col-xs-12">
                                                
                                                <ul class="list-group">

                                                    <li class="list-group-item list-group-item-lg">
                                                        <div class="row">
                                                            <div class="col-lg-4 col-md-12 col-sm-12 col-xs-12">
                                                                <strong >Nama Lengkap</strong>
                                                            </div>
                                                            <div class="col-lg-8 col-md-12 col-sm-12 col-sx-12">
                                                                <strong style="font-weight:bold"><?= $user['nama_lengkap']?></strong>
                                                            </div>
                                                        </div>
                                                    </li>

                                                    <li class="list-group-item list-group-item-lg">
                                                        <div class="row">
                                                            <div class="col-lg-4 col-md-12 col-sm-12 col-xs-12">
                                                                <strong >Foto</strong>
                                                            </div>
                                                            <div class="col-lg-8 col-md-12 col-sm-12 col-sx-12">
                                                                <img src="<?=base_url('assets/images/pengguna/')?><?= $user['foto']?>" width="150px" alt="user-image" class="img img-thumbnail">
                                                                <br>
                                                                <a href="<?=base_url('admin/profil/ubah/foto')?>" class="btn btn-sm btn-dark mt-2 p-0 px-1" data-plugin="tippy" data-tippy-placement="top-start" title="Menampilkan Halaman Ubah Foto">Ubah Foto</a>
                                                            </div>
                                                        </div>
                                                    </li>

                                                    <li class="list-group-item list-group-item-lg">
                                                        <div class="row">
                                                            <div class="col-lg-4 col-md-12 col-sm-12 col-xs-12">
                                                                <strong>Email</strong>
                                                            </div>
                                                            <div class="col-lg-8 col-md-12 col-sm-12 col-sx-12">
                                                                <strong style="font-weight:bold"><?= $user['email']?></strong>
                                                            </div>
                                                        </div>
                                                    </li>

                                                    <li class="list-group-item list-group-item-lg">
                                                        <div class="row">
                                                            <div class="col-lg-4 col-md-12 col-sm-12 col-xs-12">
                                                                <strong >Nomor Telepon</strong>
                                                            </div>
                                                            <div class="col-lg-8 col-md-12 col-sm-12 col-sx-12">
                                                                <strong style="font-weight:bold"><?= $user['no_tlp']?></strong>
                                                            </div>
                                                        </div>
                                                    </li>

                                                    <li class="list-group-item list-group-item-lg">
                                                        <div class="row">
                                                            <div class="col-lg-4 col-md-12 col-sm-12 col-xs-12">
                                                                <strong >Level </strong>
                                                            </div>
                                                            <div class="col-lg-8 col-md-12 col-sm-12 col-sx-12">
                                                                <strong style="font-weight:bold"><?= $user['role']?></strong>
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