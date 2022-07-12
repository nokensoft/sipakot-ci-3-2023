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
                                            <li class="breadcrumb-item active">Ubah</li>
                                        </ol>
                                    </div>
                                    <h4 class="page-title">Ubah Wajib Pajak</span></h4>
                                </div>
                            </div>
                        </div>
                        <!-- end page title -->

                        <!-- start .row  -->
                        <div class="row">
                            <div class="col-12">

                                <?= $this->session->flashdata('message') ?>
                                
                                <?= form_open_multipart('C_Wajibpajak/proses_ubah'); ?>
                                    <input type="hidden" name="id_wp" value="<?php echo $wp['id_wp']; ?>">
                                    
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
                                                        <input type="text" class="form-control form-control-lg" name="pemilik_nama" id="pemilik_nama"  value="<?php echo $wp['pemilik_nama']; ?>" required>
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
                                                        <input type="text" name="pemilik_email" class="form-control form-control-lg" id="pemilik_email" value="<?php echo $wp['pemilik_email']; ?>" required>
                                                    </div>
                                                
                                                    <div class="form-group mb-3">
                                                        <label for="pemilik_telp">Nomor Telepon</label>
                                                        <input type="text" name="pemilik_telp" class="form-control form-control-lg" id="pemilik_telp" value="<?php echo $wp['pemilik_telp']; ?>">
                                                    </div>

                                                    <div class="form-group">
                                                        <label for="pemilik_alamat">Alamat</label>
                                                        <textarea rows="3" id="message" class="form-control form-control-lg" name="pemilik_alamat" data-parsley-trigger="keyup" data-parsley-minlength="20" data-parsley-maxlength="100" data-parsley-minlength-message="Come on! You need to enter at least a 20 character comment.." data-parsley-validation-threshold="10" data-parsley-id="23"><?php echo $wp['pemilik_alamat']; ?></textarea>
                                                    </div>

                                                    <div class="form-group mb-3">
                                                        <label for="pemilik_kata_sandi">Kata Sandi (password) <sup class="text-danger" data-plugin="tippy" data-tippy-placement="top-start" title="Wajib dilengkapi"><i class="fas fa-xs fa-asterisk"></i></sup> </label>
                                                        <div class="input-group input-group-merge">
                                                            <input type="password" id="pemilik_kata_sandi" class="form-control form-control-lg" name="pemilik_kata_sandi" value="">
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
                                                        <input type="text" class="form-control form-control-lg" name="usaha_nama" id="usaha_nama"  value="<?php echo $wp['usaha_nama']; ?>" required>
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
                                                        <input type="text" name="usaha_email" class="form-control form-control-lg" id="usaha_email" value="<?php echo $wp['usaha_email']; ?>">
                                                    </div>
                                                
                                                    <div class="form-group mb-3">
                                                        <label for="usaha_telp">Nomor Telepon</label>
                                                        <input type="text" name="usaha_telp" class="form-control form-control-lg" id="usaha_telp" value="<?php echo $wp['usaha_telp']; ?>">
                                                    </div>

                                                    <div class="form-group">
                                                        <label for="usaha_alamat">Alamat <sup class="text-danger" data-plugin="tippy" data-tippy-placement="top-start" title="Wajib dilengkapi"><i class="fas fa-xs fa-asterisk"></i></sup> </label>
                                                        <textarea rows="3" id="usaha_alamat" class="form-control form-control-lg" name="usaha_alamat" data-parsley-trigger="keyup" data-parsley-minlength="20" data-parsley-maxlength="100" data-parsley-minlength-message="Come on! You need to enter at least a 20 character comment.." data-parsley-validation-threshold="10" data-parsley-id="23" required><?php echo $wp['usaha_alamat']; ?></textarea>
                                                    </div>

                                                    <div class="form-group mb-3">
                                                        <label for="usaha_distrik">Distrik <sup class="text-danger" data-plugin="tippy" data-tippy-placement="top-start" title="Wajib dilengkapi"><i class="fas fa-xs fa-asterisk"></i></sup> </label>
                                                        <select onchange="distrik()"  class="form-control form-control-lg" name="usaha_distrik" id="usaha_distrik" required>
                                                            <option <?php if($wp['usaha_distrik'] == ''){ echo 'selected';} ?> ></option>
                                                            <option <?php if($wp['usaha_distrik'] == 'abepura'){ echo 'selected';} ?> value="abepura">Abepura</option>
                                                            <option <?php if($wp['usaha_distrik'] == 'heram'){ echo 'selected';} ?> value="heram">Heram</option>
                                                            <option <?php if($wp['usaha_distrik'] == 'jprutara'){ echo 'selected';} ?> value="jprutara">Jayapura Utara</option>
                                                            <option <?php if($wp['usaha_distrik'] == 'jprselatan'){ echo 'selected';} ?> value="jprselatan">Jayapura Selatan</option>
                                                            <option <?php if($wp['usaha_distrik'] == 'muaratami'){ echo 'selected';} ?> value="muaratami">Muara Tami</option>
                                                        </select>
                                                    </div>
                                                    <div class="form-group mb-3">
                                                    <input type="hidden" name="kelurahan" value="<?= $wp['usaha_kelurahan']?>" id="kelurahan">
                                                    <label for="usaha_kelurahan">Kelurahan <sup class="text-danger" data-plugin="tippy" data-tippy-placement="top-start" title="Wajib dilengkapi"><i class="fas fa-xs fa-asterisk"></i></sup> </label>
                                                    <select class="form-control form-control-lg" name="usaha_kelurahan" id="usaha_kelurahan" required>
                                                        <div id="usaha_kelurahan">
                                                          
                                                        </div>
                                                    </select>
                                                    </div>
                                                         
                                                    <div class="form-group mb-3">
                                                        <label for="usaha_kategori">Kategori Usaha</label>
                                                        <select class="form-control form-control-lg" name="usaha_kategori" id="usaha_kategori" required>
                                                            <option></option>
                                                            <?php foreach ($kategori_usaha as $kategori) : ?>
                                                                <option value="<?php echo $kategori['id'] ?>" <?php if($kategori['id'] == $wp['usaha_kategori']){ echo 'selected'; } ?>><?php echo $kategori['kriteria'] ?></option>
                                                            <?php endforeach; ?>
                                                        </select>
                                                    </div>

                                                    <div class="form-group mb-3">
                                                        <label for="usaha_luas_bangunan">Luas Bangunan</label>
                                                        <input type="text" class="form-control form-control-lg" name="usaha_luas_bangunan" id="usaha_luas_bangunan" value="<?php echo $wp['usaha_luas_bangunan']; ?>">
                                                    </div>

                                                    <div class="form-group mb-3">
                                                        <label for="usaha_luas_lahan">Luas Lahan</label>
                                                        <input type="text" name="usaha_luas_lahan" class="form-control form-control-lg" id="usaha_luas_lahan" value="<?php echo $wp['usaha_luas_lahan']; ?>">
                                                    </div>

                                                    <div class="form-group mb-3">
                                                        <label for="usaha_izin">Izin Mendirikan Bangunan (IMB)</label>
                                                        <select class="form-control form-control-lg" name="usaha_izin" id="usaha_izin">
                                                            <option></option>
                                                            <option value="Ada" <?php if($wp['usaha_izin'] == 'Ada'){ echo 'selected'; } ?>>Ada</option>
                                                            <option value="Tidak Ada" <?php if($wp['usaha_izin'] == 'Tidak Ada'){ echo 'selected'; } ?>>Tidak Ada</option>
                                                        </select>
                                                    </div>

                                                    <div class="form-group mb-3">
                                                        <label for="usaha_dokumen">Dokumen Lingungan</label>
                                                        <select class="form-control form-control-lg" name="usaha_dokumen" id="usaha_dokumen">
                                                            <option></option>
                                                            <option value="Ada" <?php if($wp['usaha_dokumen'] == 'Ada'){ echo 'selected'; } ?>>Ada</option>
                                                            <option value="Tidak Ada" <?php if($wp['usaha_dokumen'] == 'Tidak Ada'){ echo 'selected'; } ?>>Tidak Ada</option>
                                                        </select>
                                                    </div>

                                                    <hr class="my-4">

                                                    <h4 class="header-title">Khusus Rumah Kos</h4>

                                                    <div class="form-group mb-3">
                                                        <label for="usaha_kos_jml_kmr">Jumlah Kamar</label>
                                                        <input type="text" name="usaha_kos_jml_kmr" class="form-control form-control-lg" id="usaha_kos_jml_kmr" value="<?php echo $wp['usaha_kos_jml_kmr']; ?>">
                                                    </div>

                                                    <div class="form-group mb-3">
                                                        <label for="usaha_kos_jml_penghuni">Jumlah Penghuni</label>
                                                        <input type="text" name="usaha_kos_jml_penghuni" class="form-control form-control-lg" id="usaha_kos_jml_penghuni" value="<?php echo $wp['usaha_kos_jml_penghuni']; ?>">
                                                    </div>

                                                    <hr class="my-4">

                                                    <h4 class="header-title">Khusus Rumah Makan </h4>
                                                    <p class="sub-header"></p>

                                                    <div class="form-group mb-3">
                                                        <label for="usaha_rm_jml_kursi">Jumlah Kursi Terlayani (Pengunjung)</label>
                                                        <input type="text" name="usaha_rm_jml_kursi" class="form-control form-control-lg" id="usaha_rm_jml_kursi" value="<?php echo $wp['usaha_rm_jml_kursi']; ?>">
                                                    </div>

                                                    <hr class="my-4">

                                                    <div class="form-group">
                                                        <label for="usaha_keterangan">Keterangan</label>
                                                        <textarea rows="10" id="usaha_keterangan" class="form-control form-control-lg" name="usaha_keterangan" data-parsley-trigger="keyup" data-parsley-minlength="20" data-parsley-maxlength="100" data-parsley-minlength-message="Come on! You need to enter at least a 20 character comment.." data-parsley-validation-threshold="10" data-parsley-id="23"><?php echo $wp['usaha_keterangan']; ?></textarea>
                                                    </div>

                                                    <div class="form-group mb-3">
                                                        <label for="is_active">Aktif</label>
                                                        <select class="form-control form-control-lg" name="is_active" id="is_active">
                                                            <option></option>
                                                            <option value="1" <?php if($wp['is_active'] == '1'){ echo 'selected'; } ?>>Aktif</option>
                                                            <option value="0" <?php if($wp['is_active'] == '0'){ echo 'selected'; } ?>>Tidak Aktif</option>
                                                        </select>
                                                    </div>

                                                    

                                                    

                                                </div>

                                                <div class="col-12">
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
                <script>
                    var data = document.getElementById("usaha_distrik").value;
                    var kelurahan = document.getElementById("kelurahan").value;
                    if(data == 'abepura')
                            {
                                document.getElementById("usaha_kelurahan").innerHTML=`
                                                    
                                                            <option <?php if($wp['usaha_kelurahan'] == ''){ echo 'selected';} ?>  value=""></option>
                                                            <option <?php if($wp['usaha_kelurahan'] == 'asano'){ echo 'selected';} ?>  value="asano">Asano</option>
                                                            <option <?php if($wp['usaha_kelurahan'] == 'awiyo'){ echo 'selected';} ?>  value="awiyo">Awiyo</option>
                                                            <option <?php if($wp['usaha_kelurahan'] == 'kotabaru'){ echo 'selected';} ?>  value="kotabaru">Kota Baru</option>
                                                            <option <?php if($wp['usaha_kelurahan'] == 'yobe'){ echo 'selected';} ?>  value="yobe">Yobe</option>
                                                            <option <?php if($wp['usaha_kelurahan'] == 'abepantai'){ echo 'selected';} ?>   value="abepantai">Abe Pantai</option>
                                                            <option <?php if($wp['usaha_kelurahan'] == 'vim'){ echo 'selected';} ?>  value="vim">Vim</option>
                                                            <option <?php if($wp['usaha_kelurahan'] == 'awiyo'){ echo 'selected';} ?>  value="whymhorock">Why Mhorock</option>
                                                            <option <?php if($wp['usaha_kelurahan'] == 'awiyo'){ echo 'selected';} ?>  value="wahno">Wahno</option>
                            `;
                            }
                            if(data == 'heram')
                            {
                                document.getElementById("usaha_kelurahan").innerHTML=`
                                                            <option <?php if($wp['usaha_kelurahan'] == ''){ echo 'selected';} ?>  value=""></option>
                                                            <option  <?php if($wp['usaha_kelurahan'] == 'waena'){ echo 'selected';} ?>value="waena">Waena</option>
                                                            <option  <?php if($wp['usaha_kelurahan'] == 'yabansai'){ echo 'selected';} ?>value="yabansai">Yabansai</option>
                                                            <option  <?php if($wp['usaha_kelurahan'] == 'hedam'){ echo 'selected';} ?> value="hedam">Hedam</option>
                                                            `;
                            }
                            if(data == 'jprutara')
                            {
                                document.getElementById("usaha_kelurahan").innerHTML=`
                                                            <option <?php if($wp['usaha_kelurahan'] == 'gurabesi'){ echo 'selected';} ?> value="gurabesi">Gurabesi</option>
                                                            <option <?php if($wp['usaha_kelurahan'] == 'mandala'){ echo 'selected';} ?>value="mandala">Mandala</option>
                                                            <option <?php if($wp['usaha_kelurahan'] == 'bhayangkara'){ echo 'selected';} ?>value="bhayangkara">Bhayangkara</option>
                                                            <option <?php if($wp['usaha_kelurahan'] == 'trikora'){ echo 'selected';} ?>value="trikora">Trikora</option>
                                                            <option <?php if($wp['usaha_kelurahan'] == 'angkasapura'){ echo 'selected';} ?>value="angkasapura">Angkasapura</option>
                                                            <option <?php if($wp['usaha_kelurahan'] == 'imbi'){ echo 'selected';} ?>value="imbi">Imbi</option>
                                                            <option <?php if($wp['usaha_kelurahan'] == 'tanjungria'){ echo 'selected';} ?> value="tanjungria">Tanjung Ria</option>
                                                            `;
                            }
                            if(data == 'jprselatan')
                            {
                                document.getElementById("usaha_kelurahan").innerHTML=`
                                                            <option <?php if($wp['usaha_kelurahan'] == 'entrop'){ echo 'selected';} ?>  value="entrop">Entrop</option>
                                                            <option <?php if($wp['usaha_kelurahan'] == 'hamadi'){ echo 'selected';} ?> value="hamadi">Hamadi</option>
                                                            <option <?php if($wp['usaha_kelurahan'] == 'ardipura'){ echo 'selected';} ?> value="ardipura">Ardipura</option>
                                                            <option <?php if($wp['usaha_kelurahan'] == 'numbay'){ echo 'selected';} ?> value="numbay">Numbay</option>
                                                            <option <?php if($wp['usaha_kelurahan'] == 'argapura'){ echo 'selected';} ?> value="argapura">Argapura </option>
                                                            `;
                            }
                            if(data == 'muaratami')
                            {
                                document.getElementById("usaha_kelurahan").innerHTML=`
                                                            <option <?php if($wp['usaha_kelurahan'] == 'koyabarat'){ echo 'selected';} ?>  value="koyabarat">Koya barat</option>
                                                            <option <?php if($wp['usaha_kelurahan'] == 'koyatimur'){ echo 'selected';} ?> value="koyatimur">Koya timur</option>
                                                            `;
                            }
                </script>
