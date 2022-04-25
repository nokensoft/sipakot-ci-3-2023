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
                                            <li class="breadcrumb-item"><a href="<?= base_url() ?>dispenda/dasbor">Dasbor</a></li>
                                            <li class="breadcrumb-item"><a href="<?= base_url() ?>dispenda/wajibpajak">Wajib Pajak</a></li>
                                            <li class="breadcrumb-item active">Baru</li>
                                        </ol>
                                    </div>
                                    <h4 class="page-title">Wajib Pajak Baru</span></h4>

                                    <!-- start alert  -->
                                    <!-- <div class="alert alert-success alert-dismissible fade show" role="alert">
                                        <strong>Sukses!</strong> Data berhasil diubah
                                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div> -->
                                    <!-- end alert  -->

                                    <!-- start alert  -->
                                    <!-- <div class="alert alert-warning alert-dismissible fade show" role="alert">
                                        <strong>Peringatan!</strong> Ukuran file tidak boleh lebih dari yang telah ditentukan.
                                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div> -->
                                    <!-- end alert  -->

                                    <!-- start alert  -->
                                    <!-- <div class="alert alert-danger alert-dismissible fade show" role="alert">
                                        <strong>Gagal!</strong> Silahkan coba lagi kembali
                                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div> -->
                                </div>
                            </div>
                        </div>
                        <!-- end page title -->

                        <!-- start .row  -->
                        <div class="row">
                            <div class="col-lg-12">
                                <form class="needs-validation" action="<?php echo base_url('C_dispenda/prosestambah'); ?>" method="POST" enctype="multipart/form-data">
                                    <div class="card">
                                        <div class="card-body">

                                            <div class="row">

                                                <div class="col-md-12">

                                                    <div class="float-right">
                                                        <button type="submit" class="btn btn-lg btn-light bg-success text-light"><i class="fas fa-save"></i> Simpan</button>
                                                        <a href="<?= base_url() ?>dispenda/wajibpajak" class="btn btn-lg btn-light bg-light text-dark"><i class="fas fa-times-circle"></i> kembali</a>
                                                    </div>

                                                    <h4 class="header-title">Form Wajib Pajak Baru</h4>
                                                    <p class="sub-header">Data lengkap usaha beserta jenis usaha dan data pemiliknya.</p>
                                                </div>
                                                <!-- end .col -->

                                                <div class="col-md-6">
                                                    <div class="form-group mb-3">
                                                        <label for="validationCustom01">ID Usaha</label>
                                                        <input type="text" class="form-control form-control-lg bg-soft-secondary" name="id_wp" id="validationCustom01" value="<?php echo $kode; ?>" readonly>
                                                        <div class="valid-feedback">
                                                            Looks good!
                                                        </div>
                                                    </div>
                                                    <div class="form-group mb-3">
                                                        <label for="validationCustom01">Nama Usaha</label>
                                                        <input type="text" class="form-control form-control-lg" name="nama_usaha" id="validationCustom01" placeholder="Masukkan Nama Usaha" required="">
                                                        <div class="valid-feedback">
                                                            Looks good!
                                                        </div>
                                                    </div>

                                                    <div class="form-group mb-3">
                                                        <label for="validationCustom01">Nama Pemilik</label>
                                                        <input type="text" class="form-control form-control-lg" name="nama_pemilik" id="validationCustom01" placeholder="Masukkan Nama Pemilik" required="">
                                                        <div class="valid-feedback">
                                                            Looks good!
                                                        </div>
                                                    </div>

                                                    <div class="form-group mb-3 text-center">
                                                        <img src="<?= base_url() ?>assets/images/wajib_pajak/wajib_pajak_00.png" width="200px" alt="" class="img img-thumbnail">
                                                        <br>
                                                    </div>

                                                    <div class="form-group mb-3">
                                                        <label for="validationCustom01">Unggah Gambar</label>
                                                        <input type="file" name="foto" class="form-control-file form-control-file-lg" id="validationCustom01" placeholder="First name" required="" />
                                                        <div class="valid-feedback">
                                                            Looks good!
                                                        </div>
                                                    </div>

                                                    <div class="form-group">
                                                        <label for="message">Alamat Usaha</label>
                                                        <textarea rows="10" id="message" class="form-control form-control-lg" name="alamat" data-parsley-trigger="keyup" data-parsley-minlength="20" data-parsley-maxlength="100" data-parsley-minlength-message="Come on! You need to enter at least a 20 character comment.." data-parsley-validation-threshold="10" data-parsley-id="23" placeholder="Masukkan Alamat Usaha"></textarea>
                                                    </div>

                                                    <div class="form-group mb-3">
                                                        <label for="validationCustom01">No Telepon</label>
                                                        <input type="text" name="no_tlp" class="form-control form-control-lg" id="validationCustom01" placeholder="Masukkan Nomor Telepon" required="">
                                                        <div class="valid-feedback">
                                                            Looks good!
                                                        </div>
                                                    </div>

                                                    <div class="form-group mb-3">
                                                        <label for="validationCustom01">Email</label>
                                                        <input type="text" name="email" class="form-control form-control-lg" id="validationCustom01" placeholder="Masukkan E-mail Aktif" required="">
                                                        <div class="valid-feedback">
                                                            Looks good!
                                                        </div>
                                                    </div>

                                                    <div class="form-group mb-3">
                                                        <label for="example-select">Kategori Usaha</label>
                                                        <select class="form-control form-control-lg" name="kategori_usaha" id="example-select">
                                                            <option value="Niaga Besar">Niaga Besar</option>
                                                            <option value="Non Niaga">Non Niaga</option>
                                                            <option value="Niaga Kecil">Niaga Kecil</option>
                                                            <option value="Industri Kecil">Industri Kecil</option>
                                                            <option value="Industri Besar">Industri Besar</option>
                                                            <option></option>
                                                        </select>
                                                    </div>

                                                    <div class="form-group mb-3">
                                                        <label for="validationCustom01">Luas Bangunan</label>
                                                        <input type="text" class="form-control form-control-lg" name="luas_bangunan" id="validationCustom01" placeholder="Masukkan Luas bangunan" required="">
                                                        <div class="valid-feedback">
                                                            Looks good!
                                                        </div>
                                                    </div>

                                                    <div class="form-group mb-3">
                                                        <label for="validationCustom01">Luas Lahan</label>
                                                        <input type="text" name="luas_lahan" class="form-control form-control-lg" id="validationCustom01" placeholder="Masukkan Luas lahan" required="">
                                                        <div class="valid-feedback">
                                                            Looks good!
                                                        </div>
                                                    </div>

                                                    <div class="form-group mb-3">
                                                        <label for="example-select">Izin Mendirikan Bangunan (IMB)</label>
                                                        <select class="form-control form-control-lg" name="izin" id="example-select">
                                                            <option value="Ada">Ada</option>
                                                            <option value="Tidak Ada">Tidak Ada</option>
                                                            <option></option>
                                                        </select>
                                                    </div>

                                                    <div class="form-group mb-3">
                                                        <label for="example-select">Dokumen Lingungan</label>
                                                        <select class="form-control form-control-lg" name="dokumen" id="example-select">
                                                            <option value="Tidak Ada">Tidak Ada</option>
                                                            <option value="Ada">Ada</option>
                                                            <option></option>
                                                        </select>
                                                    </div>

                                                </div>
                                                <!-- end .col -->

                                                <div class="col-6">

                                                    <h4 class="header-title">Khusus Rumah Kos <sup class="badge badge-danger">*</sup></h4>
                                                    <p class="sub-header"></p>

                                                    <div class="form-group mb-3">
                                                        <label for="validationCustom01">Jumlah Kamar</label>
                                                        <input type="text" name="jumlah_kamar" class="form-control form-control-lg" id="validationCustom01" placeholder="Masukkan Jumlah Kamar" required="">
                                                        <div class="valid-feedback">
                                                            Looks good!
                                                        </div>
                                                    </div>

                                                    <div class="form-group mb-3">
                                                        <label for="validationCustom01">Jumlah Penghuni</label>
                                                        <input type="text" name="jumlah_penghuni" class="form-control form-control-lg" id="validationCustom01" placeholder="Masukkan Jumlah Penghuni" required="">
                                                        <div class="valid-feedback">
                                                            Looks good!
                                                        </div>
                                                    </div>

                                                    <h4 class="header-title">Khusus Rumah Makan <sup class="badge badge-danger">*</sup></h4>
                                                    <p class="sub-header"></p>

                                                    <div class="form-group mb-3">
                                                        <label for="validationCustom01">Jumlah Kursi Terlayani (Pengunjung)</label>
                                                        <input type="text" name="jumlah_kursi" class="form-control form-control-lg" id="validationCustom01" placeholder="Masukkan Jumlah Kursi Terlayani (Pengunjung)" required="">
                                                        <div class="valid-feedback">
                                                            Looks good!
                                                        </div>
                                                    </div>

                                                </div>
                                                <!-- end .col -->

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