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
                                            <li class="breadcrumb-item"><a href="<?= base_url('admin/wajibpajak') ?>">Wajib Pajak</a></li>
                                            <li class="breadcrumb-item active">Tambah</li>
                                        </ol>
                                    </div>
                                    <h4 class="page-title">Tambah Wajib Pajak</span></h4>
                                </div>
                            </div>
                        </div>
                        <!-- end page title -->

                        <!-- start .row  -->
                        <div class="row">
                            <div class="col-12">

                                <?= $this->session->flashdata('message') ?>

                                <?= form_open_multipart('C_Wajibpajak/proses_tambah'); ?>
                                <input type="hidden" name="id_wp" value="<?= time() ?>">

                                <div class="card">
                                    <div class="card-body">
                                        <div class="row">

                                            <div class="col-12">
                                                <div class="d-flex justify-content-between">
                                                    <a href="#">
                                                        <button type="submit" class="btn btn-lg btn-primary waves-effect waves-light" data-plugin="tippy" data-tippy-placement="top-start" title="Simpan">
                                                            <span class="btn-label"><i class="fas fa-save"></i></span>Simpan</button>
                                                    </a>

                                                    <a href="<?= base_url('admin/wajibpajak') ?>" data-plugin="tippy" data-tippy-placement="top-start" title="Kembali ke Halaman Wajib Pajak">
                                                        <button type="button" class="btn btn-lg btn-primary text-primary bg-light waves-effect waves-light">
                                                            <span class="btn-label"><i class="mdi mdi-replay"></i></span>Kembali</button>
                                                    </a>

                                                </div>
                                                <hr>
                                            </div>

                                            <div class="col-xl-4 col-lg-8 col-md-6 col-sm-12 col-xs-12">

                                                <h4 class="header-title">Profil Pemilik</h4>
                                                <hr>
                                                <div class="form-group mb-3">
                                                    <label for="pemilik_nama">Nama Lengkap <sup class="text-danger" data-plugin="tippy" data-tippy-placement="top-start" title="Wajib dilengkapi"><i class="fas fa-xs fa-asterisk"></i></sup> </label>
                                                    <input type="text" class="form-control form-control-lg" name="pemilik_nama" id="pemilik_nama" value="" required>
                                                </div>

                                                <div class="form-group mb-3">
                                                    <label for="pemilik_email">Email <sup class="text-danger" data-plugin="tippy" data-tippy-placement="top-start" title="Wajib dilengkapi"><i class="fas fa-xs fa-asterisk"></i></sup> </label>
                                                    <input type="text" name="pemilik_email" class="form-control form-control-lg" id="pemilik_email" value="" required>
                                                </div>

                                                <div class="form-group mb-3">
                                                    <label for="pemilik_telp">Nomor Telepon</label>
                                                    <input type="text" name="pemilik_telp" class="form-control form-control-lg" id="pemilik_telp" value="">
                                                </div>

                                                <div class="form-group">
                                                    <label for="pemilik_alamat">Alamat</label>
                                                    <textarea rows="3" id="message" class="form-control form-control-lg" name="pemilik_alamat" data-parsley-trigger="keyup" data-parsley-minlength="20" data-parsley-maxlength="100" data-parsley-minlength-message="Come on! You need to enter at least a 20 character comment.." data-parsley-validation-threshold="10" data-parsley-id="23"></textarea>
                                                </div>

                                                <div class="form-group mb-3">
                                                    <label for="pemilik_kata_sandi">Kata Sandi (password) <sup class="text-danger" data-plugin="tippy" data-tippy-placement="top-start" title="Wajib dilengkapi"><i class="fas fa-xs fa-asterisk"></i></sup> </label>
                                                    <div class="input-group input-group-merge">
                                                        <input type="password" id="pemilik_kata_sandi" class="form-control form-control-lg" name="pemilik_kata_sandi">
                                                        <div class="input-group-append" data-password="false">
                                                            <div class="input-group-text">
                                                                <span class="password-eye font-12"></span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>



                                                <hr class="my-4">

                                            </div>
                                            <!-- end .col -->

                                            <div class="col-xl-4 col-lg-8 col-md-6 col-sm-12 col-xs-12">



                                                <h4 class="header-title">Profil Usaha </h4>
                                                <hr>
                                                <div class="form-group mb-3">
                                                    <label for="usaha_nama">Nama Usaha <sup class="text-danger" data-plugin="tippy" data-tippy-placement="top-start" title="Wajib dilengkapi"><i class="fas fa-xs fa-asterisk"></i></sup> </label>
                                                    <input type="text" class="form-control form-control-lg" name="usaha_nama" id="usaha_nama" value="" required>
                                                </div>

                                                <div class="form-group mb-3">
                                                    <label for="usaha_email">Email</label>
                                                    <input type="text" name="usaha_email" class="form-control form-control-lg" id="usaha_email" value="">
                                                </div>

                                                <div class="form-group mb-3">
                                                    <label for="usaha_telp">Nomor Telepon</label>
                                                    <input type="text" name="usaha_telp" class="form-control form-control-lg" id="usaha_telp" value="">
                                                </div>

                                                <div class="form-group">
                                                    <label for="usaha_alamat">Alamat</label>
                                                    <textarea rows="3" id="usaha_alamat" class="form-control form-control-lg" name="usaha_alamat" data-parsley-trigger="keyup" data-parsley-minlength="20" data-parsley-maxlength="100" data-parsley-minlength-message="Come on! You need to enter at least a 20 character comment.." data-parsley-validation-threshold="10" data-parsley-id="23" required></textarea>
                                                </div>

                                                <div class="form-group mb-3">
                                                    <label for="usaha_distrik">Distrik <sup class="text-danger" data-plugin="tippy" data-tippy-placement="top-start" title="Wajib dilengkapi"><i class="fas fa-xs fa-asterisk"></i></sup> </label>
                                                    <select class="form-control form-control-lg" onchange="distrik()" name="usaha_distrik" id="usaha_distrik" required>
                                                        <option></option>
                                                        <option value="abepura">Abepura</option>
                                                        <option value="heram">Heram</option>
                                                        <option value="jprutara">Jayapura Utara</option>
                                                        <option value="jprselatan">Jayapura Selatan</option>
                                                        <option value="muaratami">Muara Tami</option>
                                                    </select>
                                                </div>
                                                <div class="form-group mb-3">
                                                    <label for="usaha_kelurahan">Kelurahan <sup class="text-danger" data-plugin="tippy" data-tippy-placement="top-start" title="Wajib dilengkapi"><i class="fas fa-xs fa-asterisk"></i></sup> </label>
                                                    <select class="form-control form-control-lg" name="usaha_kelurahan" id="usaha_kelurahan" required>
                                                        <div id="usaha_kelurahan">

                                                        </div>
                                                    </select>
                                                </div>
                                              
                                               

                                                <div class="form-group mb-3">
                                                    <label for="usaha_kategori">Kategori Usaha <sup class="text-danger" data-plugin="tippy" data-tippy-placement="top-start" title="Wajib dilengkapi"><i class="fas fa-xs fa-asterisk"></i></sup> </label>
                                                    <select class="form-control form-control-lg" name="usaha_kategori" id="usaha_kategori" required>
                                                        <option></option>
                                                        <?php foreach ($kategori_usaha as $kategori) : ?>
                                                            <option value="<?php echo $kategori['id'] ?>"><?php echo $kategori['kriteria'] ?></option>
                                                        <?php endforeach; ?>
                                                    </select>
                                                </div>

                                                <div class="form-group mb-3">
                                                    <label for="usaha_luas_bangunan">Luas Bangunan</label>
                                                    <input type="text" class="form-control form-control-lg" name="usaha_luas_bangunan" id="usaha_luas_bangunan" value="">
                                                </div>

                                                <div class="form-group mb-3">
                                                    <label for="usaha_luas_lahan">Luas Lahan</label>
                                                    <input type="text" name="usaha_luas_lahan" class="form-control form-control-lg" id="usaha_luas_lahan" value="">
                                                </div>

                                                <div class="form-group mb-3">
                                                    <label for="usaha_izin">Izin Mendirikan Bangunan (IMB)</label>
                                                    <select class="form-control form-control-lg" name="usaha_izin" id="usaha_izin">
                                                        <option></option>
                                                        <option value="Ada">Ada</option>
                                                        <option value="Tidak Ada">Tidak Ada</option>
                                                    </select>
                                                </div>

                                                <div class="form-group mb-3">
                                                    <label for="usaha_dokumen">Dokumen Lingungan</label>
                                                    <select class="form-control form-control-lg" name="usaha_dokumen" id="usaha_dokumen">
                                                        <option></option>
                                                        <option value="Ada">Ada</option>
                                                        <option value="Tidak Ada">Tidak Ada</option>
                                                    </select>
                                                </div>

                                                <hr class="my-4">

                                                <h4 class="header-title">Khusus Rumah Kos</h4>

                                                <div class="form-group mb-3">
                                                    <label for="usaha_kos_jml_kmr">Jumlah Kamar</label>
                                                    <input type="text" name="usaha_kos_jml_kmr" class="form-control form-control-lg" id="usaha_kos_jml_kmr" value="">
                                                </div>

                                                <div class="form-group mb-3">
                                                    <label for="usaha_kos_jml_penghuni">Jumlah Penghuni</label>
                                                    <input type="text" name="usaha_kos_jml_penghuni" class="form-control form-control-lg" id="usaha_kos_jml_penghuni" value="">
                                                </div>

                                                <hr class="my-4">

                                                <h4 class="header-title">Khusus Rumah Makan </h4>
                                                <p class="sub-header"></p>

                                                <div class="form-group mb-3">
                                                    <label for="usaha_rm_jml_kursi">Jumlah Kursi Terlayani (Pengunjung)</label>
                                                    <input type="text" name="usaha_rm_jml_kursi" class="form-control form-control-lg" id="usaha_rm_jml_kursi" value="">
                                                </div>

                                                <hr class="my-4">

                                                <div class="form-group">
                                                    <label for="usaha_keterangan">Keterangan</label>
                                                    <textarea rows="10" id="usaha_keterangan" class="form-control form-control-lg" name="usaha_keterangan" data-parsley-trigger="keyup" data-parsley-minlength="20" data-parsley-maxlength="100" data-parsley-minlength-message="Come on! You need to enter at least a 20 character comment.." data-parsley-validation-threshold="10" data-parsley-id="23"></textarea>
                                                </div>

                                                <div class="form-group mb-3">
                                                    <label for="is_active">Aktif</label>
                                                    <select class="form-control form-control-lg" name="is_active" id="example-select">
                                                        <option></option>
                                                        <option value="1">Aktif</option>
                                                        <option selected value="0">Tidak Aktif</option>
                                                    </select>
                                                </div>

                                            </div>


                                        </div>
                                        <!-- end .row -->
                                    </div> <!-- end card-body-->

                                </div> <!-- end card-->

                                <?= form_close() ?>
                            </div> <!-- end col -->

                        </div>
                        <!-- end row -->

                    </div> <!-- container -->

                </div> <!-- content -->

                <script src="<?=base_url('/assets/js/kelurahan.js')?>"></script>
