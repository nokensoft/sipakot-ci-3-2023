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
                                            <!-- <li class="breadcrumb-item"><a href="<?= base_url() ?>admin/wajibpajak/mega-waena-departement-store">Mega Waena Departement Store</a></li> -->
                                            <li class="breadcrumb-item active">Ubah</li>
                                        </ol>
                                    </div>
                                    <h4 class="page-title">Ubah Wajib Pajak</span></h4>

                                    <?= $this->session->userdata('message') ?>

                                </div>
                            </div>
                        </div>
                        <!-- end page title -->

                        <!-- start .row  -->
                        <div class="row">
                            <div class="col-lg-12">
                                    <form class="needs-validation " action="<?php echo base_url('C_Wajibpajak/prosesubah'); ?>" method="POST" novalidate="" enctype="multipart/form-data">
                                        <input type="hidden" name="id_wp" value="<?php echo $wp['id_wp']; ?>">
                                        
                                        <div class="card">
                                            <div class="card-body">
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        
                                                        <div class="form-group mb-3">
                                                            <label for="validationCustom01">Pemilik Usaha </label>
                                                            <input type="text" class="form-control form-control-lg" name="nama_pemilik" value="<?php echo $wp['nama_pemilik']; ?>" id="validationCustom01" placeholder="" required="">
                                                            <div class="valid-feedback">
                                                                Looks good!
                                                            </div>
                                                        </div>

                                                        <div class="form-group mb-3">
                                                            <label for="validationCustom01">Nama Usaha</label>
                                                            <input type="text" class="form-control form-control-lg" name="nama_usaha" value="<?php echo $wp['nama_usaha']; ?>" id="validationCustom01" placeholder="" required="">
                                                            <div class="valid-feedback">
                                                                Looks good!
                                                            </div>
                                                        </div>
                
                                                        <div class="form-group mb-3">
                                                            <label for="kategori_usaha">Kategori Usaha</label>
                                                            <select class="form-control form-control-lg" name="kategori_usaha" id="example-select" required>
                                                                <option></option>
                                                                <?php foreach ($kategori_usaha as $kategori) : ?>
                                                                    <option value="<?php echo $kategori['id'] ?>" <?php if($kategori['id'] == $wp['kategori_usaha']) echo "selected"; ?>><?php echo $kategori['kriteria'] ?></option>
                                                                <?php endforeach; ?>
                                                            </select>
                                                        </div>

                                                        <div class="form-group">
                                                            <label for="message">Alamat Usaha</label>
                                                            <textarea rows="3" id="message" class="form-control form-control-lg" name="alamat" data-parsley-trigger="keyup" data-parsley-minlength="20" data-parsley-maxlength="100" data-parsley-minlength-message="Come on! You need to enter at least a 20 character comment.." data-parsley-validation-threshold="10" data-parsley-id="23" placeholder=""><?php echo $wp['alamat']; ?></textarea>
                                                        </div>

                                                        <div class="form-group mb-3">
                                                            <label for="validationCustom01">No Telepon</label>
                                                            <input type="text" name="no_tlp" class="form-control form-control-lg" id="validationCustom01" value="<?php echo $wp['no_tlp']; ?>" placeholder="">
                                                            <div class="valid-feedback">
                                                                Looks good!
                                                            </div>
                                                        </div>

                                                        <div class="form-group mb-3">
                                                            <label for="validationCustom01">Alamat Email</label>
                                                            <input type="text" name="email" class="form-control form-control-lg" id="validationCustom01" value="<?php echo $wp['email']; ?>" placeholder="">
                                                            <div class="valid-feedback">
                                                                Looks good!
                                                            </div>
                                                        </div>

                                                        <div class="form-group mb-3">
                                                            <label for="validationCustom01">Luas Bangunan</label>
                                                            <input type="text" class="form-control form-control-lg" name="luas_bangunan" id="validationCustom01" value="<?php echo $wp['luas_bangunan']; ?>" placeholder="">
                                                            <div class="valid-feedback">
                                                                Looks good!
                                                            </div>
                                                        </div>

                                                        <div class="form-group mb-3">
                                                            <label for="validationCustom01">Luas Lahan</label>
                                                            <input type="text" name="luas_lahan" class="form-control form-control-lg" id="validationCustom01" value="<?php echo $wp['luas_lahan']; ?>" placeholder="">
                                                            <div class="valid-feedback">
                                                                Looks good!
                                                            </div>
                                                        </div>

                                                        <div class="form-group mb-3">
                                                            <label for="example-select">Izin Mendirikan Bangunan (IMB)</label>
                                                            <select class="form-control form-control-lg" name="izin" id="example-select" value="<?php echo $wp['izin']; ?>">
                                                                <option></option>
                                                                <option value="Ada" <?php if($wp['izin'] == 'Ada') echo "selected"; ?>>Ada</option>
                                                                <option value="Tidak Ada" <?php if($wp['izin'] == 'Tidak Ada') echo "selected"; ?>>Tidak Ada</option>
                                                            </select>
                                                        </div>

                                                        <div class="form-group mb-3">
                                                            <label for="example-select">Dokumen Lingungan</label>
                                                            <select class="form-control form-control-lg" name="dokumen" id="example-select" value="<?php echo $wp['dokumen']; ?>">
                                                                <option></option>
                                                                <option value="Ada" <?php if($wp['dokumen'] == 'Ada') echo "selected"; ?>>Ada</option>
                                                                <option value="Tidak Ada" <?php if($wp['dokumen'] == 'Tidak Ada') echo "selected"; ?>>Tidak Ada</option>
                                                            </select>
                                                        </div>

                                                        <hr class="my-4">

                                                        <h4 class="header-title">KHUSUS RUMAH KOS</h4>
                                                        <p class="sub-header"></p>

                                                        <div class="form-group mb-3">
                                                            <label for="validationCustom01">Jumlah Kamar</label>
                                                            <input type="text" name="jumlah_kamar" class="form-control form-control-lg" id="validationCustom01" value="<?php echo $wp['jumlah_kamar']; ?>" placeholder="">
                                                            <div class="valid-feedback">
                                                                Looks good!
                                                            </div>
                                                        </div>

                                                        <div class="form-group mb-3">
                                                            <label for="validationCustom01">Jumlah Penghuni</label>
                                                            <input type="text" name="jumlah_penghuni" class="form-control form-control-lg" id="validationCustom01" value="<?php echo $wp['jumlah_penghuni']; ?>" placeholder="">
                                                            <div class="valid-feedback">
                                                                Looks good!
                                                            </div>
                                                        </div>

                                                        <hr class="my-4">

                                                        <h4 class="header-title">KHUSUS RUMAH MAKAN </h4>
                                                        <p class="sub-header"></p>

                                                        <div class="form-group mb-3">
                                                            <label for="validationCustom01">Jumlah Kursi Terlayani (Pengunjung)</label>
                                                            <input type="text" name="jumlah_kursi" class="form-control form-control-lg" id="validationCustom01" value="<?php echo $wp['jumlah_kursi']; ?>" placeholder="">
                                                            <div class="valid-feedback">
                                                                Looks good!
                                                            </div>
                                                        </div>

                                                    </div>
                                                    <!-- end .col -->

                                                    <div class="col-md-6">
                                                    

                                                        <div class="form-group">
                                                            <label for="gambar">Gambar</label>
                                                            <div class="form-grouptext-center">
                                                                <img src="<?= base_url() ?>assets/images/wajib_pajak/wajib_pajak_00.png" alt="" class="img img-thumbnail" width="300px">
                                                                <br>
                                                            </div>
                                                        </div>

                                                        <div class="form-group mb-3">
                                                            <label for="validationCustom01">Pilih Gambar</label>
                                                            <input type="file" name="foto" class="form-control-file form-control-file-lg" id="validationCustom01" placeholder="First name" />
                                                            <div class="valid-feedback">
                                                                Looks good!
                                                            </div>
                                                        </div>

                                                        <hr class="my-4">

                                                        <h4 class="header-title mb-3">HAK AKSES</h4>                                                 

                                                        <div class="form-group mb-3">
                                                            <label for="nama_pengguna">Nama Pengguna</label>
                                                            <input type="text" name="nama_pengguna" class="form-control form-control-lg" id="nama_pengguna" value="<?php echo $wp['nama_pengguna']; ?>" placeholder="">
                                                            <div class="valid-feedback">
                                                                Looks good!
                                                            </div>
                                                        </div>

                                                        <div class="form-group mb-3">
                                                            <label for="kata_sandi">Kata Sandi</label>
                                                            <input type="password" name="kata_sandi" class="form-control form-control-lg" id="kata_sandi" placeholder="">
                                                            <div class="valid-feedback">
                                                                Looks good!
                                                            </div>
                                                        </div>

                                                    </div>

                                                    <div class="col-12">
                                                        <hr>
                                                        <button type="submit" class="btn btn-lg btn-light bg-success text-light"><i class="fas fa-save"></i> Simpan</button>
                                                        <a href="<?= base_url() ?>admin/wajibpajak/" class="btn btn-lg btn-dark"><i class="fas fa-times-circle"></i> Batal</a>
                                                    </div>

                                                </div>
                                                <!-- end .row -->
                                            </div> <!-- end card-body-->

                                        </div> <!-- end card-->
                                    </form>
                            </div> <!-- end col -->

                        </div>
                        <!-- end row -->





                    </div> <!-- container -->

                </div> <!-- content -->