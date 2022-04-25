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
                                            <li class="breadcrumb-item"><a href="<?= base_url() ?>petugaslapangan/dasbor">Dasbor</a></li>
                                            <li class="breadcrumb-item"><a href="<?= base_url() ?>petugaslapangan/wajibpajak">Wajib Pajak</a></li>
                                            <!-- <li class="breadcrumb-item"><a href="<?= base_url() ?>petugaslapangan/wajibpajak/mega-waena-departement-store">Mega Waena Departement Store</a></li> -->
                                            <li class="breadcrumb-item active">Detail</li>
                                        </ol>
                                    </div>
                                    <h4 class="page-title">Detail Wajib Pajak</span></h4>

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
                                <?php foreach ($wp as $w) { ?>
                                    <form class="needs-validation " action="<?php echo base_url('C_Wajibpajak/prosesubah'); ?>" method="POST" novalidate="">
                                        <div class="card">
                                            <div class="card-body">

                                                <div class="row">

                                                    <div class="col-md-12">

                                                        <div class="float-right">
                                                            <a href="<?= base_url() ?>petugaslapangan/wajibpajak/ubah/<?= $w->id_wp ?>" class="btn btn-lg btn-light bg-success text-light"><i class="fas fa-save"></i> Edit</a>
                                                            <a href="<?= base_url() ?>petugaslapangan/wajibpajak/" class="btn btn-lg btn-light bg-light text-dark"><i class="fas fa-times-circle"></i> kembali</a>
                                                        </div>

                                                        <h4 class="header-title">Form Detail Wajib Pajak</h4>
                                                        <p class="sub-header">Data lengkap usaha beserta jenis usaha dan data pemiliknya.</p>
                                                    </div>
                                                    <!-- end .col -->

                                                    <div class="col-md-6">
                                                        <div class="form-group mb-3">
                                                            <label for="validationCustom01">ID Usaha</label>
                                                            <input type="text" class="form-control form-control-lg bg-soft-secondary" name="id_wp" id="validationCustom01" value="<?php echo $w->id_wp ?>" readonly>
                                                            <div class="valid-feedback">
                                                                Looks good!
                                                            </div>
                                                        </div>
                                                        <div class="form-group mb-3">
                                                            <label for="validationCustom01">Nama Usaha</label>
                                                            <input type="text" name="nama_usaha" class="form-control form-control-lg bg-soft-secondary" id="validationCustom01" placeholder="First name" value="<?php echo $w->nama_usaha ?>" required="" readonly>
                                                            <div class="valid-feedback">
                                                                Looks good!
                                                            </div>
                                                        </div>

                                                        <div class="form-group mb-3">
                                                            <label for="validationCustom01">Nama Pemilik</label>
                                                            <input type="text" name="nama_pemilik" class="form-control form-control-lg bg-soft-secondary" id="validationCustom01" placeholder="First name" value="<?php echo $w->nama_pemilik ?>" required="" readonly>
                                                            <div class="valid-feedback">
                                                                Looks good!
                                                            </div>
                                                        </div>

                                                        <div class="form-group mb-3 text-center">
                                                            <img src="<?= base_url() ?>assets/images/gambar_wp/<?php echo $w->foto ?>" width="200px" alt="" class="img img-thumbnail">
                                                            <br>
                                                        </div>

                                                        <!-- <div class="form-group mb-3">
                                                            <label for="validationCustom01">Unggah Gambar Baru</label>
                                                            <input type="file" name="foto" class="form-control-file form-control-file-lg" id="validationCustom01" placeholder="First name" value="info@mega.com" required="" readonly>
                                                            <div class="valid-feedback">
                                                                Looks good!
                                                            </div>
                                                        </div> -->

                                                        <div class="form-group">
                                                            <label for="message">Alamat Usaha</label>
                                                            <textarea rows="10" id="message" class="form-control form-control-lg bg-soft-secondary" name="alamat" data-parsley-trigger="keyup" data-parsley-minlength="20" data-parsley-maxlength="100" data-parsley-minlength-message="Come on! You need to enter at least a 20 character comment.." data-parsley-validation-threshold="10" data-parsley-id="23" readonly><?php echo $w->alamat ?></textarea>
                                                        </div>

                                                        <div class="form-group mb-3">
                                                            <label for="validationCustom01">No Telepon</label>
                                                            <input type="text" name="no_tlp" class="form-control form-control-lg bg-soft-secondary" id="validationCustom01" placeholder="First name" value="<?php echo $w->no_tlp ?>" required="" readonly>
                                                            <div class="valid-feedback">
                                                                Looks good!
                                                            </div>
                                                        </div>

                                                        <div class="form-group mb-3">
                                                            <label for="validationCustom01">Email</label>
                                                            <input type="text" name="email" class="form-control form-control-lg bg-soft-secondary" id="validationCustom01" placeholder="First name" value="<?php echo $w->email ?>" required="" readonly>
                                                            <div class="valid-feedback">
                                                                Looks good!
                                                            </div>
                                                        </div>

                                                        <div class="form-group mb-3">
                                                            <label for="example-select">Kategori Usaha</label>
                                                            <select class="form-control form-control-lg bg-soft-secondary" id="example-select" name="kategori_usaha">
                                                                <option value="<?php echo $w->kategori_usaha ?>"><?php echo $w->kategori_usaha ?></option>
                                                            </select>
                                                        </div>

                                                        <div class="form-group mb-3">
                                                            <label for="validationCustom01">Luas Bangunan</label>
                                                            <input type="text" name="luas_bangunan" class="form-control form-control-lg bg-soft-secondary" id="validationCustom01" placeholder="Luas bangunan" value="<?php echo $w->luas_bangunan ?>" required="" readonly>
                                                            <div class=" valid-feedback">
                                                                Looks good!
                                                            </div>
                                                        </div>

                                                        <div class="form-group mb-3">
                                                            <label for="validationCustom01">Luas Lahan</label>
                                                            <input type="text" name="luas_lahan" class="form-control form-control-lg bg-soft-secondary" id="validationCustom01" placeholder="Luas lahan" value="<?php echo $w->luas_lahan ?>" required="">
                                                            <div class="valid-feedback">
                                                                Looks good!
                                                            </div>
                                                        </div>

                                                        <div class="form-group mb-3">
                                                            <label for="example-select">Izin Mendirikan Bangunan (IMB)</label>
                                                            <select class="form-control form-control-lg bg-soft-secondary" id="example-select" name="izin">
                                                                <option value="<?php echo $w->izin ?>"><?php echo $w->izin ?></option>
                                                            </select>
                                                        </div>

                                                        <div class="form-group mb-3">
                                                            <label for="example-select">Dokumen Lingungan</label>
                                                            <select class="form-control form-control-lg bg-soft-secondary" id="example-select" name="dokumen">
                                                                <option value="<?php echo $w->dokumen ?>"><?php echo $w->dokumen ?></option>
                                                            </select>
                                                        </div>

                                                    </div>
                                                    <!-- end .col -->

                                                    <div class="col-6">

                                                        <h4 class="header-title">Khusus Rumah Kos <sup class="badge badge-danger">*</sup></h4>
                                                        <p class="sub-header"></p>

                                                        <div class="form-group mb-3">
                                                            <label for="validationCustom01">Jumlah Kamar</label>
                                                            <input type="text" name="jumlah_kamar" class="form-control form-control-lg bg-soft-secondary" id="validationCustom01" placeholder="" value="<?php echo $w->jumlah_kamar ?>" required="" readonly>
                                                            <div class="valid-feedback">
                                                                Looks good!
                                                            </div>
                                                        </div>

                                                        <div class="form-group mb-3">
                                                            <label for="validationCustom01">Jumlah Penghuni</label>
                                                            <input type="text" name="jumlah_penghuni" class="form-control form-control-lg bg-soft-secondary" id="validationCustom01" placeholder="" value="<?php echo $w->jumlah_penghuni ?>" required="" readonly>
                                                            <div class="valid-feedback">
                                                                Looks good!
                                                            </div>
                                                        </div>

                                                        <h4 class="header-title">Khusus Rumah Makan <sup class="badge badge-danger">*</sup></h4>
                                                        <p class="sub-header"></p>

                                                        <div class="form-group mb-3">
                                                            <label for="validationCustom01">Jumlah Kursi Terlayani (Pengunjung)</label>
                                                            <input type="text" name="jumlah_kursi" class="form-control form-control-lg bg-soft-secondary" id="validationCustom01" placeholder="" value="<?php echo $w->jumlah_kursi ?>" required="" readonly>
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
                                <?php } ?>
                            </div> <!-- end col -->

                        </div>
                        <!-- end row -->





                    </div> <!-- container -->

                </div> <!-- content -->