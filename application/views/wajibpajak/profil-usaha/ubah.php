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
                                            <li class="breadcrumb-item"><a href="<?= base_url('wajibpajak/profil-usaha') ?>">Profil Usaha</a></li>
                                            <li class="breadcrumb-item active">Ubah</li>
                                        </ol>
                                    </div>
                                    <h4 class="page-title">Ubah Profil Usaha</span></h4>
                                </div>
                            </div>
                        </div>
                        <!-- end page title -->

                        <!-- start .row   -->
                        <div class="row">
                            <div class="col-md-12">

                                <?= $this->session->flashdata('message') ?>

                                <?= form_open_multipart('wajibpajak/profil_usaha_proses_ubah'); ?>
                                <input type="hidden" name="id_wp" value="<?=$user['id_wp']?>">

                                <div class="card">
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="d-flex justify-content-between">
                                                    <a href="#">
                                                        <button type="submit" class="btn btn-lg btn-primary waves-effect waves-light" data-plugin="tippy" data-tippy-placement="top-start" title="Simpan">
                                                        <span class="btn-label"><i class="fas fa-save"></i></span>Simpan</button>
                                                    </a>
                                                    
                                                    <a href="<?= base_url('wajibpajak/profil-usaha') ?>" data-plugin="tippy" data-tippy-placement="top-start" title="Kembali ke Halaman Profil">
                                                        <button type="button" class="btn btn-lg btn-primary text-primary bg-light waves-effect waves-light">
                                                        <span class="btn-label"><i class="mdi mdi-replay"></i></span>Kembali</button>
                                                    </a>

                                                </div>
                                                <hr>
                                                
                                            </div>

                                            <div class="col-xl-6 col-lg-8 col-md-6 col-sm-12 col-xs-12">
                                                
                                                <ul class="list-group">

                                                    <li class="list-group-item list-group-item-lg">
                                                        <div class="row">
                                                            <div class="col-lg-4 col-md-12 col-sm-12 col-xs-12">
                                                                <label for="usaha_nama" class="font-weight-bold">Nama Usaha <sup class="text-danger" data-plugin="tippy" data-tippy-placement="top-start" title="Wajib dilengkapi"><i class="fas fa-xs fa-asterisk"></i></sup> </label>
                                                            </div>
                                                            <div class="col-lg-8 col-md-12 col-sm-12 col-sx-12">
                                                                <input type="text" name="usaha_nama" class="form-control form-control-lg" id="usaha_nama" value="<?=$user['usaha_nama']?>">
                                                            </div>
                                                        </div>
                                                    </li>

                                                    <li class="list-group-item list-group-item-lg">
                                                        <div class="row">
                                                            <div class="col-lg-4 col-md-12 col-sm-12 col-xs-12">
                                                                <label for="usaha_email" class="font-weight-bold">Email</label>
                                                            </div>
                                                            <div class="col-lg-8 col-md-12 col-sm-12 col-sx-12">
                                                                <input type="text" name="usaha_email" class="form-control form-control-lg" id="usaha_email" value="<?= $user['usaha_email']?>">
                                                            </div>
                                                        </div>
                                                    </li>

                                                    <li class="list-group-item list-group-item-lg">
                                                        <div class="row">
                                                            <div class="col-lg-4 col-md-12 col-sm-12 col-xs-12">
                                                                <label for="usaha_telp" class="font-weight-bold">Nomor Telepon</label>
                                                            </div>
                                                            <div class="col-lg-8 col-md-12 col-sm-12 col-sx-12">
                                                                <input type="text" name="usaha_telp" class="form-control form-control-lg" id="usaha_telp"  value="<?= $user['usaha_telp']?>">
                                                            </div>
                                                        </div>
                                                    </li>

                                                    <li class="list-group-item list-group-item-lg">
                                                        <div class="row">
                                                            <div class="col-lg-4 col-md-12 col-sm-12 col-xs-12">
                                                                <label for="usaha_alamat" class="font-weight-bold">Alamat <sup class="text-danger" data-plugin="tippy" data-tippy-placement="top-start" title="Wajib dilengkapi"><i class="fas fa-xs fa-asterisk"></i></sup> </label>
                                                            </div>
                                                            <div class="col-lg-8 col-md-12 col-sm-12 col-sx-12">
                                                                <textarea name="usaha_alamat" id="usaha_alamat"  rows="5" class="form-control"><?= $user['usaha_alamat']?></textarea>
                                                            </div>
                                                        </div>
                                                    </li>
                                                    
                                                    <li class="list-group-item list-group-item-lg">
                                                        <div class="row">
                                                            <div class="col-lg-4 col-md-12 col-sm-12 col-xs-12">
                                                                <label for="usaha_kategori" class="font-weight-bold">Kategori Usaha <sup class="text-danger" data-plugin="tippy" data-tippy-placement="top-start" title="Wajib dilengkapi"><i class="fas fa-xs fa-asterisk"></i></sup> </label>
                                                            </div>
                                                            <div class="col-lg-8 col-md-12 col-sm-12 col-sx-12">
                                                                <select class="form-control form-control-lg" name="usaha_kategori" id="usaha_kategori" required>
                                                                    <option></option>
                                                                    <?php foreach ($kategori_usaha as $kategori) : ?>
                                                                        <option value="<?php echo $kategori['id'] ?>" <?php if($kategori['id'] == $user['usaha_kategori']){ echo 'selected'; } ?>><?php echo $kategori['kriteria'] ?></option>
                                                                    <?php endforeach; ?>
                                                                </select>
                                                            </div>
                                                        </div>
                                                    </li>

                                                    <li class="list-group-item list-group-item-lg">
                                                        <div class="row">
                                                            <div class="col-lg-4 col-md-12 col-sm-12 col-xs-12">
                                                                <label for="usaha_luas_bangunan" class="font-weight-bold">Luas Bangunan</label>
                                                            </div>
                                                            <div class="col-lg-8 col-md-12 col-sm-12 col-sx-12">
                                                                <input type="text" name="usaha_luas_bangunan" class="form-control form-control-lg" id="usaha_luas_bangunan"  value="<?= $user['usaha_luas_bangunan']?>">
                                                            </div>
                                                        </div>
                                                    </li>

                                                    <li class="list-group-item list-group-item-lg">
                                                        <div class="row">
                                                            <div class="col-lg-4 col-md-12 col-sm-12 col-xs-12">
                                                                <label for="usaha_luas_lahan" class="font-weight-bold">Luas Lahan</label>
                                                            </div>
                                                            <div class="col-lg-8 col-md-12 col-sm-12 col-sx-12">
                                                                <input type="text" name="usaha_luas_lahan" class="form-control form-control-lg" id="usaha_luas_lahan"  value="<?= $user['usaha_luas_lahan']?>">
                                                            </div>
                                                        </div>
                                                    </li>

                                                    <li class="list-group-item list-group-item-lg">
                                                        <div class="row">
                                                            <div class="col-lg-4 col-md-12 col-sm-12 col-xs-12">
                                                                <label for="usaha_izin" class="font-weight-bold">Izin Mendirikan Bangunan (IMB) </label>
                                                            </div>
                                                            <div class="col-lg-8 col-md-12 col-sm-12 col-sx-12">
                                                                <input type="text" name="usaha_izin" class="form-control form-control-lg" id="usaha_izin"  value="<?= $user['usaha_izin']?>">
                                                            </div>
                                                        </div>
                                                    </li>

                                                    <li class="list-group-item list-group-item-lg">
                                                        <div class="row">
                                                            <div class="col-lg-4 col-md-12 col-sm-12 col-xs-12">
                                                                <label for="usaha_dokumen" class="font-weight-bold">Dokumen Lingkungan</label>
                                                            </div>
                                                            <div class="col-lg-8 col-md-12 col-sm-12 col-sx-12">
                                                                <input type="text" name="usaha_dokumen" class="form-control form-control-lg" id="usaha_dokumen"  value="<?= $user['usaha_dokumen']?>">
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
                                                                <label for="usaha_kos_jml_kmr" class="font-weight-bold">Jumlah Kamar</label>
                                                            </div>
                                                            <div class="col-lg-8 col-md-12 col-sm-12 col-sx-12">
                                                                <input type="text" name="usaha_kos_jml_kmr" class="form-control form-control-lg" id="usaha_kos_jml_kmr"  value="<?= $user['usaha_kos_jml_kmr']?>">
                                                            </div>
                                                        </div>
                                                    </li>

                                                    <li class="list-group-item list-group-item-lg">
                                                        <div class="row">
                                                            <div class="col-lg-4 col-md-12 col-sm-12 col-xs-12">
                                                                <label for="usaha_kos_jml_penghuni" class="font-weight-bold">Jumlah Penghuni</label>
                                                            </div>
                                                            <div class="col-lg-8 col-md-12 col-sm-12 col-sx-12">
                                                                <input type="text" name="usaha_kos_jml_penghuni" class="form-control form-control-lg" id="usaha_kos_jml_penghuni"  value="<?= $user['usaha_kos_jml_penghuni']?>">
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
                                                                <input type="text" name="usaha_rm_jml_kursi" class="form-control form-control-lg" id="usaha_rm_jml_kursi"  value="<?= $user['usaha_rm_jml_kursi']?>">
                                                            </div>
                                                        </div>
                                                    </li>

                                                </ul>


                                                <ul class="list-group mt-3">
                                                    <li class="list-group-item bg-dark">
                                                        <b class="text-light">Keterangan</b>
                                                    </li>
                                                    <li class="list-group-item">
                                                        <div class="row">
                                                            <div class="col-lg-12 col-md-12 col-sm-12 col-sx-12">
                                                                <textarea name="usaha_keterangan" id="usaha_keterangan"  rows="5" class="form-control"><?= $user['usaha_keterangan']?></textarea>
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
                                <?= form_close() ?>                                        
                            </div>
                        </div>
                        <!-- end .row -->





                        
                    </div> <!-- container -->

                </div> <!-- content -->