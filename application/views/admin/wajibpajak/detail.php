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
                                            <li class="breadcrumb-item active">Detail</li>
                                        </ol>
                                    </div>
                                    <h4 class="page-title">Detail Wajib Pajak</span></h4>
                                </div>
                            </div>
                        </div>
                        <!-- end page title -->

                        <!-- start .row  -->
                        <div class="row">
                            <div class="col-12">

                                    
                                    <div class="card">
                                        <div class="card-body">
                                            <div class="row">
                                            
                                                <div class="col-12">
                                                    <div class="d-flex justify-content-between">
                                                        <div class="col-4 m-2">
                                                            <a href="<?= base_url('admin/wajibpajak/ubah/') . $wp['id_wp'] ?>">
                                                                <button type="button" class="btn btn-lg btn-primary waves-effect waves-light" data-plugin="tippy" data-tippy-placement="top-start" title="Ubah">
                                                                <span class="btn-label"><i class="fas fa-edit"></i></span>Ubah</button>
                                                            </a>
                                                            <a target="_blank" href="<?= base_url('admin/wajibpajak/tagihan/new/') ?><?= $wp['id_wp']; ?>?t=<?=date('Y')?>" >
                                                                <button type="button" class="btn btn-lg btn-success waves-effect waves-light" data-plugin="tippy" data-tippy-placement="top-start" title="Tagihan">
                                                                <span class="btn-label"><i class="mdi mdi-animation-outline"></i></span> Lihat Tagihan</button>
                                                            </a>
                                                        </div>
                                                        <div class="col-6 m-2">
                                                        
                                                        </div>

                                                        <div class="col-2 m-2">
                                                            <a href="<?= base_url('admin/wajibpajak') ?>" data-plugin="tippy" data-tippy-placement="top-start" title="Kembali ke Halaman Wajib Pajak">
                                                                <button type="button" class="btn btn-lg btn-primary text-primary bg-light waves-effect waves-light">
                                                                <span class="btn-label"><i class="mdi mdi-replay"></i></span>Kembali</button>
                                                            </a>
                                                        </div>
                                                       

                                                        






                                                        

                                                    </div>
                                                    <hr>
                                                </div>

                                                <div class="col-xl-4 col-lg-8 col-md-6 col-sm-12 col-xs-12">
                                                    
                                                    <h4 class="header-title">Profil Pemilik</h4>
                                                    <hr>

                                                    <div class="form-group mb-3">
                                                        <label for="pemilik_nama">Nama Lengkap <sup class="text-danger" data-plugin="tippy" data-tippy-placement="top-start" title="Wajib dilengkapi"><i class="fas fa-xs fa-asterisk"></i></sup> </label>
                                                        <input type="text" class="form-control form-control-lg bg-light" name="pemilik_nama" id="pemilik_nama"  value="<?php echo $wp['pemilik_nama']; ?>" readonly>
                                                    </div>
                                                    
                                                    <div class="form-group mb-3">
                                                        <label for="pemilik_nama">Foto</label> <br>
                                                        <?php if(!empty($wp['pemilik_foto'])) { ?> 
                                                            <img src="<?=base_url('assets/images/pemilik_foto/')?><?= $wp['pemilik_foto']?>" width="150px" alt="user-image" class="img img-thumbnail">                                                                
                                                        <?php } else { ?> 
                                                            <img src="<?=base_url('assets/images/pemilik_foto/default-user.png')?>" width="150px" alt="user-image" class="img img-thumbnail">                                                                
                                                        <?php } ?>
                                                        <br>
                                                        <a href="<?=base_url('admin/wajibpajak/ubah/foto/pemilik/') . $wp['id_wp']?>" class="btn btn-sm btn-dark mt-2 p-0 px-1" data-plugin="tippy" data-tippy-placement="top-start" title="Menampilkan Halaman Ubah Foto">Ubah Foto</a>
                                                    </div>
                                                
                                                    <div class="form-group mb-3">
                                                        <label for="pemilik_email">Email <sup class="text-danger" data-plugin="tippy" data-tippy-placement="top-start" title="Wajib dilengkapi"><i class="fas fa-xs fa-asterisk"></i></sup> </label>
                                                        <input type="text" name="pemilik_email" class="form-control form-control-lg bg-light" id="pemilik_email" value="<?php echo $wp['pemilik_email']; ?>" readonly>
                                                    </div>
                                                
                                                    <div class="form-group mb-3">
                                                        <label for="pemilik_telp">Nomor Telepon</label>
                                                        <input type="text" name="pemilik_telp" class="form-control form-control-lg bg-light" id="pemilik_telp" value="<?php echo $wp['pemilik_telp']; ?>" readonly>
                                                    </div>

                                                    <div class="form-group">
                                                        <label for="pemilik_alamat">Alamat</label>
                                                        <textarea rows="3" id="message" class="form-control form-control-lg bg-light" name="pemilik_alamat" data-parsley-trigger="keyup" data-parsley-minlength="20" data-parsley-maxlength="100" data-parsley-minlength-message="Come on! You need to enter at least a 20 character comment.." data-parsley-validation-threshold="10" data-parsley-id="23" readonly><?php echo $wp['pemilik_alamat']; ?></textarea>
                                                    </div>  
                                                
                                                    <div class="form-group mb-3">
                                                        <label for="pemilik_kata_sandi">Kata Sandi (password) <sup class="text-danger" data-plugin="tippy" data-tippy-placement="top-start" title="Wajib dilengkapi"><i class="fas fa-xs fa-asterisk"></i></sup> </label>
                                                        <div class="input-group input-group-merge">
                                                            <input type="password" id="pemilik_kata_sandi" class="form-control form-control-lg bg-light" name="pemilik_kata_sandi" value="" readonly>
                                                            <div class="input-group-append" data-password="false">
                                                                <div class="input-group-text">
                                                                    <span class="password-eye font-12"></span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <small>
                                                            <em class="text-warning mt-1 d-block">Biarkan kosong jika tidak ingin mengubah kata sandi</em>
                                                        </small>
                                                    </div>

                                                    

                                                    <hr class="my-4">

                                                </div>
                                                <!-- end .col -->

                                                <div class="col-xl-4 col-lg-8 col-md-6 col-sm-12 col-xs-12">

                                                
                                                    
                                                    <h4 class="header-title">Profil Usaha</h4>
                                                    <hr>

                                                    <div class="form-group mb-3">
                                                        <label for="usaha_nama">Nama Usaha <sup class="text-danger" data-plugin="tippy" data-tippy-placement="top-start" title="Wajib dilengkapi"><i class="fas fa-xs fa-asterisk"></i></sup> </label>
                                                        <input type="text" class="form-control form-control-lg bg-light" name="usaha_nama" id="usaha_nama"  value="<?php echo $wp['usaha_nama']; ?>" readonly>
                                                    </div>
                                                    
                                                    <div class="form-group mb-3">
                                                        <label for="pemilik_nama">Logo</label> <br>
                                                        <?php if(!empty($wp['usaha_logo'])) { ?> 
                                                            <img src="<?=base_url('assets/images/usaha_logo/')?><?= $wp['usaha_logo']?>" width="150px" alt="user-image" class="img img-thumbnail">                                                                
                                                        <?php } else { ?> 
                                                            <img src="<?=base_url('assets/images/usaha_logo/default-user.png')?>" width="150px" alt="user-image" class="img img-thumbnail">                                                                
                                                        <?php } ?>
                                                        <br>
                                                        <a href="<?=base_url('admin/wajibpajak/ubah/foto/usaha/') . $wp['id_wp']?>" class="btn btn-sm btn-dark mt-2 p-0 px-1" data-plugin="tippy" data-tippy-placement="top-start" title="Menampilkan Halaman Ubah Foto">Ubah Logo</a>
                                                    </div>
                                                
                                                    <div class="form-group mb-3">
                                                        <label for="usaha_email">Email</label>
                                                        <input type="text" name="usaha_email" class="form-control form-control-lg bg-light" id="usaha_email" value="<?php echo $wp['usaha_email']; ?>" readonly>
                                                    </div>
                                                
                                                    <div class="form-group mb-3">
                                                        <label for="usaha_telp">Nomor Telepon</label>
                                                        <input type="text" name="usaha_telp" class="form-control form-control-lg bg-light" id="usaha_telp" value="<?php echo $wp['usaha_telp']; ?>" readonly>
                                                    </div>

                                                    <div class="form-group">
                                                        <label for="usaha_alamat">Alamat <sup class="text-danger" data-plugin="tippy" data-tippy-placement="top-start" title="Wajib dilengkapi"><i class="fas fa-xs fa-asterisk"></i></sup> </label>
                                                        <textarea rows="3" id="usaha_alamat" class="form-control form-control-lg bg-light" name="usaha_alamat" data-parsley-trigger="keyup" data-parsley-minlength="20" data-parsley-maxlength="100" data-parsley-minlength-message="Come on! You need to enter at least a 20 character comment.." data-parsley-validation-threshold="10" data-parsley-id="23" readonly><?php echo $wp['usaha_alamat']; ?></textarea>
                                                    </div>
                                                    
                                                    <div class="form-group mb-3">
                                                        <label for="usaha_distrik">Distrik</label>
                                                        <input type="text" name="usaha_distrik" class="form-control form-control-lg bg-light" id="usaha_distrik" value="<?php foreach($wajib_pajak_distrik as $distrik)
                                                                        if($distrik['id_distrik'] == $wp['usaha_distrik'])
                                                                        {
                                                                            echo $distrik['nama_distrik'];
                                                                        }else{
                                                                            echo '';
                                                                        }
                                                                    ?>" readonly>
                                                    </div>

                                                    <div class="form-group mb-3">
                                                        <label for="usaha_kelurahan">Kelurahan</label>
                                                        <input type="text" name="usaha_kelurahan" class="form-control form-control-lg bg-light" id="usaha_kelurahan" value="<?php foreach($wajib_pajak_kelurahan as $kelurahan)
                                                                        if($kelurahan['id_kelurahan'] == $wp['usaha_kelurahan'])
                                                                        {
                                                                            echo $kelurahan['nama_kelurahan'];
                                                                        }else{
                                                                            echo '';
                                                                        }
                                                                    ?>" readonly>
                                                    </div>

                                                    <div class="form-group mb-3">
                                                        <label for="usaha_kategori">Kategori Usaha <sup class="text-danger" data-plugin="tippy" data-tippy-placement="top-start" title="Wajib dilengkapi"><i class="fas fa-xs fa-asterisk"></i></sup> </label>                                                        
                                                        <?php
                                                            $queryKomponenUsaha = $this->db->query("SELECT * FROM pajak_kk WHERE id = " . $wp['usaha_kategori']);
                                                            $rowKomponenUsaha = $queryKomponenUsaha->row_array();
                                                        ?>
                                                        <input type="text" class="form-control form-control-lg bg-light" name="usaha_kategori" id="usaha_kategori" value="<?= $rowKomponenUsaha['kriteria'] ?>" readonly>
                                                    </div>

                                                    <div class="form-group mb-3">
                                                        <label for="usaha_luas_bangunan">Luas Bangunan</label>
                                                        <input type="text" class="form-control form-control-lg bg-light" name="usaha_luas_bangunan" id="usaha_luas_bangunan" value="<?php echo $wp['usaha_luas_bangunan']; ?>" readonly>
                                                    </div>

                                                    <div class="form-group mb-3">
                                                        <label for="usaha_luas_lahan">Luas Lahan</label>
                                                        <input type="text" name="usaha_luas_lahan" class="form-control form-control-lg bg-light" id="usaha_luas_lahan" value="<?php echo $wp['usaha_luas_lahan']; ?>" readonly>
                                                    </div>

                                                    <div class="form-group mb-3">
                                                        <label for="usaha_izin">Izin Mendirikan Bangunan (IMB)</label>
                                                        <input type="text" name="usaha_izin" class="form-control form-control-lg bg-light" id="usaha_rm_jml_kursi" value="<?php if($wp['usaha_izin'] == 'Ada'){ echo 'Ada'; } else { echo 'Tidak Ada'; } ?>" readonly>
                                                    </div>

                                                    <div class="form-group mb-3">
                                                        <label for="usaha_dokumen">Dokumen Lingungan</label>
                                                        <input type="text" name="usaha_dokumen" class="form-control form-control-lg bg-light" id="usaha_rm_jml_kursi" value="<?php if($wp['usaha_dokumen'] == 'Ada'){ echo 'Ada'; } else { echo 'Tidak Ada'; } ?>" readonly>
                                                    </div>

                                                    <hr class="my-4">

                                                    <h4 class="header-title">Khusus Rumah Kos</h4>

                                                    <div class="form-group mb-3">
                                                        <label for="usaha_kos_jml_kmr">Jumlah Kamar</label>
                                                        <input type="text" name="usaha_kos_jml_kmr" class="form-control form-control-lg bg-light" id="usaha_kos_jml_kmr" value="<?php echo $wp['usaha_kos_jml_kmr']; ?>" readonly>
                                                    </div>

                                                    <div class="form-group mb-3">
                                                        <label for="usaha_kos_jml_penghuni">Jumlah Penghuni</label>
                                                        <input type="text" name="usaha_kos_jml_penghuni" class="form-control form-control-lg bg-light" id="usaha_kos_jml_penghuni" value="<?php echo $wp['usaha_kos_jml_penghuni']; ?>" readonly>
                                                    </div>

                                                    <hr class="my-4">

                                                    <h4 class="header-title">Khusus Rumah Makan </h4>
                                                    <p class="sub-header"></p>

                                                    <div class="form-group mb-3">
                                                        <label for="usaha_rm_jml_kursi">Jumlah Kursi Terlayani (Pengunjung)</label>
                                                        <input type="text" name="usaha_rm_jml_kursi" class="form-control form-control-lg bg-light" id="usaha_rm_jml_kursi" value="<?php echo $wp['usaha_rm_jml_kursi']; ?>" readonly>
                                                    </div>

                                                    <hr class="my-4">

                                                    <div class="form-group">
                                                        <label for="usaha_keterangan">Keterangan</label>
                                                        <textarea rows="10" id="usaha_keterangan" class="form-control form-control-lg bg-light" name="usaha_keterangan" data-parsley-trigger="keyup" data-parsley-minlength="20" data-parsley-maxlength="100" data-parsley-minlength-message="Come on! You need to enter at least a 20 character comment.." data-parsley-validation-threshold="10" data-parsley-id="23" readonly><?php echo $wp['usaha_keterangan']; ?></textarea>
                                                    </div>

                                                    <div class="form-group mb-3">
                                                        <label for="is_active">Aktif</label>
                                                        <input type="text" name="is_active" class="form-control form-control-lg bg-light" id="usaha_rm_jml_kursi" value="<?php if($wp['is_active'] == '1'){ echo 'Aktif'; } else { echo 'Tidak Aktif'; } ?>" readonly>
                                                    </div>

                                                    

                                                    

                                                </div>

                                                <div class="col-12">
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