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
                                            <li class="breadcrumb-item"><a href="<?= base_url() ?>admin/dasbor">Dasbor</a></li>
                                            <li class="breadcrumb-item"><a href="<?= base_url() ?>admin/wajibpajak">Wajib Pajak</a></li>
                                            <li class="breadcrumb-item"><a href="<?= base_url() ?>admin/wajibpajak/id">Mega Waena Departmenet Store</a></li>
                                            <li class="breadcrumb-item active">Tagihan</li>
                                        </ol>
                                    </div>
                                    <h4 class="page-title">Tagihan</span></h4>

                                    <!-- start alert  -->
                                    <div class="alert alert-success alert-dismissible fade show" role="alert">
                                        <strong>Sukses!</strong> Data berhasil diubah
                                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <!-- end alert  -->

                                    <!-- start alert  -->
                                    <div class="alert alert-warning alert-dismissible fade show" role="alert">
                                        <strong>Peringatan!</strong> Ukuran file tidak boleh lebih dari yang telah ditentukan.
                                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <!-- end alert  -->

                                    <!-- start alert  -->
                                    <div class="alert alert-danger alert-dismissible fade show" role="alert">
                                        <strong>Gagal!</strong> Silahkan coba lagi kembali
                                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- end page title -->

















                        <!-- start row  -->
                        <div class="row">


                            <div class="col-xl-8">
                                <div class="card-box">
                                    <div class="float-right">

                                        <div class="dropdown">
                                            <a class="btn btn-lg btn-light dropdown-toggle" href="https://example.com" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                Tahun 2021 <i class="mdi mdi-chevron-down"></i>
                                            </a>

                                            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenuLink" style="">
                                                <a class="dropdown-item" href="#"><i class="mdi mdi-book mr-1"></i>Tahun 2017</a>
                                                <a class="dropdown-item" href="#"><i class="mdi mdi-book mr-1"></i>Tahun 2018</a>
                                                <a class="dropdown-item" href="#"><i class="mdi mdi-book mr-1"></i>Tahun 2019</a>
                                                <a class="dropdown-item" href="#"><i class="mdi mdi-book mr-1"></i>Tahun 2020</a>
                                            </div>
                                        </div>
                                    </div>

                                    <h4 class="header-title mb-3">Data Tagihan Tahun 2021</h4>

                                    <ul class="list-group mt-5">
                                        <li class="list-group-item bg-soft-success"><i class="mdi mdi-book mr-1"></i>
                                            Januari
                                            <div class="float-right">
                                                <a href="#" data-toggle="modal" data-target="#terbitkan-tagihan" class="btn btn-sm btn-success" title="Cetak Tagihan"><i class="mdi mdi-check-circle"></i> Lunas</a>
                                            </div>

                                            <!--  Modal content for the Large example -->
                                            <div class="modal fade" id="bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                                                <div class="modal-dialog modal-lg">
                                                    <div class="modal-content">
                                                        <form action="">
                                                            <div class="modal-header bg-dark">
                                                                <h4 class="modal-title text-light" id="myLargeModalLabel">Sunting Informasi Keadaan Air</h4>
                                                                <button type="button" class="close text-light" data-dismiss="modal" aria-hidden="true">×</button>
                                                            </div>
                                                            <div class="modal-body">

                                                                <div class="row">

                                                                    <div class="col-md-12">
                                                                        <h4 class="header-title">Air Tanah</h4>
                                                                        <p class="sub-header">Kualitas air tanah dan volume dalam hitunga liter.</p>
                                                                    </div>
                                                                    <!-- end .col -->

                                                                    <div class="col-md-6">
                                                                        <div class="form-group mb-3">
                                                                            <label for="example-select">Kualitas Air Tanah</label>
                                                                            <select class="form-control" id="example-select">
                                                                                <option>Baik</option>
                                                                                <option>Buruk</option>
                                                                                <option></option>
                                                                            </select>
                                                                        </div>

                                                                        <div class="form-group mb-3">
                                                                            <label for="example-select">Jenis Pipa Air Tanah</label>
                                                                            <input type="text" class="form-control" id="validationCustom02" placeholder="Last name" value="PVC" required="">
                                                                            <div class="valid-feedback">
                                                                                Looks good!
                                                                            </div>
                                                                        </div>

                                                                        <div class="form-group mb-3">
                                                                            <label for="example-select">Diameter Pipa Air Tanah</label>
                                                                            <input type="text" class="form-control" id="validationCustom02" placeholder="Last name" value="20" required="">
                                                                            <div class="valid-feedback">
                                                                                Looks good!
                                                                            </div>
                                                                        </div>

                                                                        <div class="form-group mb-3">
                                                                            <label for="validationCustom02">Volume Air Tanah (Liter)</label>
                                                                            <input type="text" class="form-control" id="validationCustom02" placeholder="Last name" value="300" required="">
                                                                            <div class="valid-feedback">
                                                                                Looks good!
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <!-- end .col -->

                                                                    <div class="col-md-6">
                                                                        <div class="form-group mb-3">
                                                                            <label for="validationCustom02">Bukti Meteran Air Tanah</label>
                                                                            <input type="file" class="form-control-file" id="validationCustom02" placeholder="Last name" value="300" required="">
                                                                            <img src="<?= base_url() ?>meteran/meteran.jpg" class="img img-thumbnail mt-3    " width="200" alt="">
                                                                            <div class="valid-feedback">
                                                                                Looks good!
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <!-- end .col -->

                                                                </div>
                                                                <!-- end .row -->

                                                                <hr>

                                                                <div class="row">

                                                                    <div class="col-md-12">
                                                                        <h4 class="header-title">Penampung</h4>
                                                                        <p class="sub-header">Tandon atau bak penampung yang tersedia</p>
                                                                    </div>
                                                                    <!-- end .col -->

                                                                    <div class="col-md-6">
                                                                        <div class="form-group mb-3">
                                                                            <label for="validationCustom02">Jumlah Penampung</label>
                                                                            <input type="text" class="form-control" id="validationCustom02" placeholder="Last name" value="3" required="">
                                                                            <div class="valid-feedback">
                                                                                Looks good!
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <!-- end .col -->

                                                                    <div class="col-md-6">
                                                                        <div class="form-group mb-3">
                                                                            <label for="validationCustom02">Kapasitas Keseluruhan (Liter)</label>
                                                                            <input type="text" class="form-control" id="validationCustom02" placeholder="Last name" value="300" required="">
                                                                            <div class="valid-feedback">
                                                                                Looks good!
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <!-- end .col -->

                                                                </div>
                                                                <!-- end .row -->

                                                                <hr>

                                                                <div class="row">

                                                                    <div class="col-md-12">
                                                                        <h4 class="header-title">Sumur</h4>
                                                                        <p class="sub-header">Ketersediaan sumur dan volume dalam hitungan liter.</p>
                                                                    </div>
                                                                    <!-- end .col -->

                                                                    <div class="col-md-6">
                                                                        <div class="form-group mb-3">
                                                                            <label for="jumlah_sumur">Jumlah Sumur</label>
                                                                            <input type="text" class="form-control" id="validationCustom02" placeholder="Jumlah sumur" value="3" required="" name="jumlah_sumur">
                                                                        </div>
                                                                    </div>
                                                                    <!-- end .col -->

                                                                    <div class="col-md-6">
                                                                        <div class="form-group mb-3">
                                                                            <label for="kualitas_air_sumur">Kualitas Air Sumur</label>
                                                                            <select class="form-control" id="kualitas_air_sumur" name="kualitas_air_sumur">
                                                                                <option>Baik</option>
                                                                                <option>Buruk</option>
                                                                                <option></option>
                                                                            </select>
                                                                        </div>
                                                                    </div>
                                                                    <!-- end .col -->
                                                                </div>
                                                                <!-- end .row -->




                                                            </div>

                                                            <div class="modal-footer bg-soft-dark">
                                                                <div class="form-group text-right">
                                                                    <button type="submit" class="btn btn-sm btn-success"> <i class="fas fa-save mr-1"></i> Simpan </button>
                                                                    <a href="#" class="btn btn-sm btn-dark" data-dismiss="modal"> <i class="fas fa-times-circle mr-1"></i> Batal </a>
                                                                </div>
                                                            </div>

                                                        </form>
                                                    </div><!-- /.modal-content -->
                                                </div><!-- /.modal-dialog -->
                                            </div><!-- /.modal -->














                                            <!--  Modal content for the Large example -->
                                            <div class="modal fade" id="terbitkan-tagihan" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                                                <div class="modal-dialog modal-xl">
                                                    <div class="modal-content">
                                                        <form action="">
                                                            <div class="modal-header bg-dark">
                                                                <h4 class="modal-title text-light" id="myLargeModalLabel">Sunting Informasi Keadaan Air</h4>
                                                                <button type="button" class="close text-light" data-dismiss="modal" aria-hidden="true">×</button>
                                                            </div>
                                                            <div class="modal-body">

                                                                <table class="table table-bordered">
                                                                    <thead>
                                                                        <tr>
                                                                            <td>
                                                                                <img src="<?= base_url() ?>assets/images/logo-kota-jayapura-700-dark.png" height="100" alt="">
                                                                            </td>
                                                                            <td class="text-center text-uppercase">
                                                                                <h1>Informasi Tagihan Air Tanah</h1>
                                                                            </td>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody>
                                                                        <tr>
                                                                            <td>
                                                                                Kepada Yth, <br>
                                                                                <strong>Pimpinan Mega Waena Departement Store </strong>
                                                                            </td>
                                                                            <td>
                                                                                ID Pelanggan : PABT / ... / DLHK / 2020 <br>
                                                                                Tagihan Bulan : Desember <br>
                                                                                Volume Penggunaan : 4960 m3
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td colspan="2">

                                                                                <table class="table table-bordered">
                                                                                    <tbody class="bg-light text-dark">
                                                                                        <tr>
                                                                                            <td class="bg-dark text-light">Volume Range</td>
                                                                                            <td class="bg-dark text-light">Volume M³</td>
                                                                                            <td class="bg-dark text-light">FNA</td>
                                                                                            <td class="bg-dark text-light">Harga Baku</td>
                                                                                            <td class="bg-dark text-light">Jumlah</td>
                                                                                            <td rowspan="9" width="300" class="text-center font-weight-bold">
                                                                                                Mengetahui,
                                                                                                KEPALA DLHK KOTA JAYAPURA
                                                                                                <br>
                                                                                                <br>
                                                                                                <br>
                                                                                                <br>
                                                                                                <br>
                                                                                                <br>
                                                                                                <br>
                                                                                                <br>
                                                                                                ALEX DEU, S.Pd.,M.Pd
                                                                                                <br>
                                                                                                PEMBINA TK.1
                                                                                                <br>
                                                                                                NIP. 129660921199002 1002
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td>0-50 M³</td>
                                                                                            <td>50</td>
                                                                                            <td>text</td>
                                                                                            <td>Rp. 1.200</td>
                                                                                            <td>Rp. 216.000</td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td>51-500 M³</td>
                                                                                            <td>450</td>
                                                                                            <td>text</td>
                                                                                            <td>Rp. 1.200</td>
                                                                                            <td>Rp. 1.008.800</td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td>501-1000 M³</td>
                                                                                            <td>500</td>
                                                                                            <td>text</td>
                                                                                            <td>Rp. 1.200</td>
                                                                                            <td>Rp. 1.304.000</td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td>1001-2500 M³</td>
                                                                                            <td>1500</td>
                                                                                            <td>text</td>
                                                                                            <td>Rp. 1.200</td>
                                                                                            <td>Rp. 7.128.000</td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td>>2500 M³</td>
                                                                                            <td>2460</td>
                                                                                            <td>text</td>
                                                                                            <td>Rp. 1.200</td>
                                                                                            <td>Rp. 12.398.400</td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td></td>
                                                                                            <td>4960</td>
                                                                                            <td></td>
                                                                                            <td></td>
                                                                                            <td></td>
                                                                                        </tr>
                                                                                        <tr class="font-weight-bold bg-soft-dark text-dark">
                                                                                            <td>NPA</td>
                                                                                            <td></td>
                                                                                            <td></td>
                                                                                            <td></td>
                                                                                            <td>Rp. 24.055.200</td>
                                                                                        </tr>
                                                                                        <tr class="font-weight-bold bg-soft-dark text-dark">
                                                                                            <td>PAJAK PABT</td>
                                                                                            <td></td>
                                                                                            <td></td>
                                                                                            <td>20%</td>
                                                                                            <td>Rp. 4.811.040</td>
                                                                                        </tr>
                                                                                    </tbody>
                                                                                </table>

                                                                            </td>
                                                                        </tr>
                                                                    </tbody>
                                                                </table>




                                                            </div>

                                                            <div class="modal-footer bg-soft-dark">
                                                                <div class="form-group text-right">

                                                                    <span>
                                                                        <iframe src="<?= base_url() ?>admin/wajibpajak/tagihan/cetak" style="display:none;" name="frame"></iframe>
                                                                        <button type="button" class="btn btn-xs btn-primary" onclick="frames['frame'].print()"><i class="fas fa-print mr-1"></i> Cetak</button>
                                                                    </span>

                                                                    <a href="<?= base_url() ?>admin/wajibpajak/tagihan/cetak" class="btn btn-sm btn-success" target="_blank"> <i class="fas fa-print mr-1"></i> Cetak </a>
                                                                    <a href="#" class="btn btn-sm btn-dark" data-dismiss="modal"> <i class="fas fa-times-circle mr-1"></i> Batal </a>
                                                                </div>
                                                            </div>

                                                        </form>
                                                    </div><!-- /.modal-content -->
                                                </div><!-- /.modal-dialog -->
                                            </div><!-- /.modal -->














                                        </li>
                                        <li class="list-group-item bg-soft-success"><i class="mdi mdi-book mr-1"></i>
                                            Februari
                                            <div class="float-right">
                                                <a href="#" class="btn btn-sm btn-warning" title="Terbitkan Bukti Pembayaran"><i class="mdi mdi-printer"></i> Info Tagihan</a>
                                                <a href="#" class="btn btn-sm btn-success" title="Cetak Tagihan"><i class="mdi mdi-check-circle"></i> Lunas</a>
                                            </div>
                                        </li>
                                        <li class="list-group-item bg-soft-warning"><i class="mdi mdi-book mr-1"></i>
                                            Maret
                                            <div class="float-right bg-soft-warning">
                                                <a href="#" class="btn btn-sm btn-warning" title="Terbitkan Bukti Pembayaran"><i class="mdi mdi-printer"></i> Info Tagihan</a>
                                            </div>
                                        </li>
                                        <li class="list-group-item"><i class="mdi mdi-book mr-1"></i>
                                            April
                                            <div class="float-right">
                                            </div>
                                        </li>
                                        <li class="list-group-item"><i class="mdi mdi-book mr-1"></i>
                                            Mei
                                            <div class="float-right">
                                            </div>
                                        </li>
                                        <li class="list-group-item"><i class="mdi mdi-book mr-1"></i>
                                            Juni
                                            <div class="float-right">
                                            </div>
                                        </li>
                                        <li class="list-group-item"><i class="mdi mdi-book mr-1"></i>
                                            Juli
                                            <div class="float-right">
                                            </div>
                                        </li>
                                        <li class="list-group-item"><i class="mdi mdi-book mr-1"></i>
                                            Agustus
                                            <div class="float-right">
                                            </div>
                                        </li>
                                        <li class="list-group-item"><i class="mdi mdi-book mr-1"></i>
                                            September
                                            <div class="float-right">
                                            </div>
                                        </li>
                                        <li class="list-group-item"><i class="mdi mdi-book mr-1"></i>
                                            Oktober
                                            <div class="float-right">
                                            </div>
                                        </li>
                                        <li class="list-group-item"><i class="mdi mdi-book mr-1"></i>
                                            November
                                            <div class="float-right">
                                            </div>
                                        </li>
                                        <li class="list-group-item"><i class="mdi mdi-book mr-1"></i>
                                            Desember
                                            <div class="float-right">
                                            </div>
                                        </li>
                                    </ul>

                                </div>
                            </div> <!-- end col -->

                            <div class="col-xl-4">
                                <div class="card-box">


                                    <ul class="list-group">

                                        <li class="list-group-item bg-dark">
                                            <h1 class="m-0 font-weight-bold text-white">Mega Waena Departement Store</h1>
                                        </li>

                                        <li class="list-group-item text-center">
                                            <img src="<?= base_url() ?>assets/images/wajib_pajak/wajib_pajak_01_mega.png" alt="contact-img" title="contact-img" class="img-thumbnail" width="200px" />
                                        </li>

                                        <li class="list-group-item">
                                            <label>Nama Pemilik : </label>
                                            <strong>Reinhard Hugo</strong>
                                        </li>

                                        <li class="list-group-item">
                                            <label>Kategori Usaha : </label>
                                            <strong>Niaga Besar</strong>
                                        </li>

                                        <li class="list-group-item">
                                            <label>Luas Bangunan : </label>
                                            <strong>120</strong>
                                        </li>

                                        <li class="list-group-item">
                                            <label>Luas Lahan : </label>
                                            <strong>100</strong>
                                        </li>

                                        <li class="list-group-item">
                                            <label>Izin Mendirikan Bangunan (IMB) : </label>
                                            <strong>Ada</strong>
                                        </li>

                                        <li class="list-group-item">
                                            <label>Dokumen Lingungan : </label>
                                            <strong>Ada</strong>
                                        </li>
                                    </ul>

                                    <ul class="list-group mt-2">

                                        <li class="list-group-item bg-dark text-white">
                                            Khusus Rumah Kos
                                        </li>

                                        <li class="list-group-item">
                                            <label>Jumlah Kamar : </label>
                                            <strong>22</strong>
                                        </li>

                                        <li class="list-group-item">
                                            <label>Jumlah Penghuni : </label>
                                            <strong>10</strong>
                                        </li>

                                    </ul>

                                    <ul class="list-group mt-2">

                                        <li class="list-group-item bg-dark text-white">
                                            Khusus Rumah Makan
                                        </li>

                                        <li class="list-group-item">
                                            <label>Jumlah Kursi Terlayani (Pengunjung) : </label>
                                            <strong>120</strong>
                                        </li>

                                    </ul>


                                </div>
                            </div> <!-- end col -->

                        </div>
                        <!-- end row -->













                    </div> <!-- container -->

                </div> <!-- content -->