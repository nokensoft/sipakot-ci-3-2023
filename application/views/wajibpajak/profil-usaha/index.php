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
                                            <li class="breadcrumb-item"><a href="<?= base_url('wajibpajak/dasbor') ?>">Dasbor</a></li>
                                            <li class="breadcrumb-item active">Profil Usaha</li>
                                        </ol>
                                    </div>
                                    <h4 class="page-title">Profil Usaha</span></h4>
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
                                                <a href="<?=base_url('wajibpajak/profil-usaha/ubah')?>" data-plugin="tippy" data-tippy-placement="top-start" title="Menampilkan Halaman Ubah Profil">
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
                                                                <strong >Nama Usaha</strong>
                                                            </div>
                                                            <div class="col-lg-8 col-md-12 col-sm-12 col-sx-12">
                                                                <strong style="font-weight:bold"><?= $user['usaha_nama']?></strong>
                                                            </div>
                                                        </div>
                                                    </li>

                                                    <li class="list-group-item list-group-item-lg">
                                                        <div class="row">
                                                            <div class="col-lg-4 col-md-12 col-sm-12 col-xs-12">
                                                                <strong >Logo</strong>
                                                            </div>
                                                            <div class="col-lg-8 col-md-12 col-sm-12 col-sx-12">

                                                                <?php if(!empty($user['usaha_logo'])) { ?> 
                                                                    <img src="<?=base_url('assets/images/usaha_logo/')?><?= $user['usaha_logo']?>" width="150px" alt="user-image" class="img img-thumbnail">                                                                
                                                                <?php } else { ?> 
                                                                    <img src="<?=base_url('assets/images/usaha_logo/default_image.png')?>" width="150px" alt="user-image" class="img img-thumbnail">                                                                
                                                                <?php } ?>
                                                                    
                                                                <br>
                                                                <a href="<?=base_url('wajibpajak/profil-usaha/ubah/logo')?>" class="btn btn-sm btn-dark mt-2 p-0 px-1" data-plugin="tippy" data-tippy-placement="top-start" title="Menampilkan Halaman Ubah Logo">Ubah Logo</a>
                                                            </div>
                                                        </div>
                                                    </li>

                                                    <li class="list-group-item list-group-item-lg">
                                                        <div class="row">
                                                            <div class="col-lg-4 col-md-12 col-sm-12 col-xs-12">
                                                                <strong>Email</strong>
                                                            </div>
                                                            <div class="col-lg-8 col-md-12 col-sm-12 col-sx-12">
                                                                <strong style="font-weight:bold"><?= $user['usaha_email']?></strong>
                                                            </div>
                                                        </div>
                                                    </li>

                                                    <li class="list-group-item list-group-item-lg">
                                                        <div class="row">
                                                            <div class="col-lg-4 col-md-12 col-sm-12 col-xs-12">
                                                                <strong >Nomor Telepon</strong>
                                                            </div>
                                                            <div class="col-lg-8 col-md-12 col-sm-12 col-sx-12">
                                                                <strong style="font-weight:bold"><?= $user['usaha_telp']?></strong>
                                                            </div>
                                                        </div>
                                                    </li>

                                                    <li class="list-group-item list-group-item-lg">
                                                        <div class="row">
                                                            <div class="col-lg-4 col-md-12 col-sm-12 col-xs-12">
                                                                <strong >Alamat</strong>
                                                            </div>
                                                            <div class="col-lg-8 col-md-12 col-sm-12 col-sx-12">
                                                                <strong style="font-weight:bold"><?= $user['usaha_alamat']?></strong>
                                                            </div>
                                                        </div>
                                                    </li>

                                                    <li class="list-group-item list-group-item-lg">
                                                        <div class="row">
                                                            <div class="col-lg-4 col-md-12 col-sm-12 col-xs-12">
                                                                <strong >Kategori Usaha</strong>
                                                            </div>
                                                            <div class="col-lg-8 col-md-12 col-sm-12 col-sx-12">
                                                                <?php 
                                                                    $queryKategory = "SELECT `kriteria` FROM `pajak_kk` WHERE  `id` = ". $user['usaha_kategori'];
                                                                    $rowKategory = $this->db->query($queryKategory)->row_array();
                                                                ?>
                                                                <strong style="font-weight:bold"><?= $rowKategory['kriteria']?></strong>
                                                            </div>
                                                        </div>
                                                    </li>

                                                    <li class="list-group-item list-group-item-lg">
                                                        <div class="row">
                                                            <div class="col-lg-4 col-md-12 col-sm-12 col-xs-12">
                                                                <strong >Luas Bangunan</strong>
                                                            </div>
                                                            <div class="col-lg-8 col-md-12 col-sm-12 col-sx-12">
                                                                <strong style="font-weight:bold"><?= $user['usaha_luas_bangunan']?></strong>
                                                            </div>
                                                        </div>
                                                    </li>

                                                    <li class="list-group-item list-group-item-lg">
                                                        <div class="row">
                                                            <div class="col-lg-4 col-md-12 col-sm-12 col-xs-12">
                                                                <strong >Luas Lahan</strong>
                                                            </div>
                                                            <div class="col-lg-8 col-md-12 col-sm-12 col-sx-12">
                                                                <strong style="font-weight:bold"><?= $user['usaha_luas_lahan']?></strong>
                                                            </div>
                                                        </div>
                                                    </li>

                                                    <li class="list-group-item list-group-item-lg">
                                                        <div class="row">
                                                            <div class="col-lg-4 col-md-12 col-sm-12 col-xs-12">
                                                                <strong >Izin Mendirikan Bangunan (IMB)</strong>
                                                            </div>
                                                            <div class="col-lg-8 col-md-12 col-sm-12 col-sx-12">
                                                                <strong style="font-weight:bold"><?= $user['usaha_izin']?></strong>
                                                            </div>
                                                        </div>
                                                    </li>

                                                    <li class="list-group-item list-group-item-lg">
                                                        <div class="row">
                                                            <div class="col-lg-4 col-md-12 col-sm-12 col-xs-12">
                                                                <strong >Dokumen Lingkungan</strong>
                                                            </div>
                                                            <div class="col-lg-8 col-md-12 col-sm-12 col-sx-12">
                                                                <strong style="font-weight:bold"><?= $user['usaha_dokumen']?></strong>
                                                            </div>
                                                        </div>
                                                    </li>
                                                </ul>

                                                <ul class="list-group mt-3">
                                                    <li class="list-group-item bg-dark">
                                                        <b class="text-light">Khusus Rumah Kos</b>
                                                    </li>
                                                    <li class="list-group-item list-group-item-lg">
                                                        <div class="row">
                                                            <div class="col-lg-4 col-md-12 col-sm-12 col-xs-12">
                                                                <strong >Khusus Rumah Kos</strong>
                                                            </div>
                                                            <div class="col-lg-8 col-md-12 col-sm-12 col-sx-12">
                                                                <strong style="font-weight:bold"><?= $user['usaha_kos_jml_kmr']?></strong>
                                                            </div>
                                                        </div>
                                                    </li>

                                                    <li class="list-group-item list-group-item-lg">
                                                        <div class="row">
                                                            <div class="col-lg-4 col-md-12 col-sm-12 col-xs-12">
                                                                <strong >Jumlah Penghuni</strong>
                                                            </div>
                                                            <div class="col-lg-8 col-md-12 col-sm-12 col-sx-12">
                                                                <strong style="font-weight:bold"><?= $user['usaha_kos_jml_penghuni']?></strong>
                                                            </div>
                                                        </div>
                                                    </li>
                                                </ul>

                                                

                                                <ul class="list-group mt-3">
                                                    <li class="list-group-item bg-dark">
                                                        <b class="text-light">Khusus Rumah Makan</b>
                                                    </li>
                                                    <li class="list-group-item list-group-item-lg">
                                                        <div class="row">
                                                            <div class="col-lg-4 col-md-12 col-sm-12 col-xs-12">
                                                                <strong >Jumlah Kursi Terlayani (Pengunjung)</strong>
                                                            </div>
                                                            <div class="col-lg-8 col-md-12 col-sm-12 col-sx-12">
                                                                <strong style="font-weight:bold"><?= $user['usaha_rm_jml_kursi']?></strong>
                                                            </div>
                                                        </div>
                                                    </li>

                                                </ul>


                                                <ul class="list-group mt-3">
                                                    <li class="list-group-item bg-dark">
                                                        <b class="text-light">Keterangan</b>
                                                    </li>

                                                    <li class="list-group-item list-group-item-lg">
                                                        <div class="row">
                                                            <div class="col-lg-12 col-md-12 col-sm-12 col-sx-12">
                                                                <?= $user['usaha_keterangan']?>
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