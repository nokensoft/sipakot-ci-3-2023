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
                                <li class="breadcrumb-item"><a href="<?= base_url('admin/tagihan') ?>">Tagihan</a></li>
                                <li class="breadcrumb-item"><a href="<?= base_url('admin/tagihan/2021') ?>">2021</a></li>
                                <li class="breadcrumb-item active">Januari</li>
                            </ol>
                        </div>
                        <h4 class="page-title">Sunting Tagihan</span></h4>
                    </div>
                </div>
            </div>
            <!-- end page title -->





            

                <!-- start .row  -->
                <div class="row">
                    
                    <div class="col-lg-4 col-md-12">
                        <div class="card-box">

                            <?php include('partials/sidebar-profil.php'); ?>

                        </div>
                    </div> <!-- end col -->

                    <div class="col-lg-8">

                        <?= $this->session->flashdata('message') ?>

                        <?= form_open_multipart('C_Tagihan/proses_ubah_tagihan'); ?>
                            <input type="hidden" name="id" value="<?= $tagihan['id'] ?>"> <!-- bulan -->
                            <input type="hidden" name="b" value="1"> <!-- bulan -->
                            <input type="hidden" name="id_wp" value="<?=$this->uri->segment(5)?>"> <!-- tahun -->
                            <input type="hidden" name="role" value="<?=$this->uri->segment(1)?>"> <!-- tahun -->
                            <input type="hidden" name="usaha_kategori" value="<?=$wajib_pajak['usaha_kategori']?>"> 
                            
                            
                            <div class="card">
                                <div class="card-body">

                                    <div class="row">
                                        <div class="col-12">
                                            <div class="d-flex justify-content-between">
                                                <a href="#">
                                                    <button type="submit" class="btn btn-lg btn-primary waves-effect waves-light" data-plugin="tippy" data-tippy-placement="top-start" title="Simpan">
                                                    <span class="btn-label"><i class="fas fa-save"></i></span>Simpan</button>
                                                </a>
                                                
                                                <a href="<?= base_url('admin/wajibpajak/tagihan/new/') ?><?=$this->uri->segment(5)?>?t=<?=$_GET['t']?>" data-plugin="tippy" data-tippy-placement="top-start" title="Kembali ke Halaman Wajib Pajak">
                                                    <button type="button" class="btn btn-lg btn-primary text-primary bg-light waves-effect waves-light">
                                                    <span class="btn-label"><i class="mdi mdi-replay"></i></span>Kembali</button>
                                                </a>

                                            </div>
                                            <hr>
                                        </div> <!-- end col  -->
                                    </div> <!-- end row  -->

                                    <div class="row">

                                        <div class="col-lg-6 col-md-12">

                                            <div class="form-group">
                                                <label for="tahun">Tahun <sup class="text-danger" data-plugin="tippy" data-tippy-placement="top-start" title="Wajib dilengkapi"><i class="fas fa-xs fa-asterisk"></i></sup> </label>
                                                
                                                <select class="form-control" id="example-select" name="tahun" required>
                                                    <option></option>
                                                    <option value="2019" <?php if($tagihan['tahun'] == 2019) {echo 'selected';} ?>>2019</option>
                                                    <option value="2020" <?php if($tagihan['tahun'] == 2020) {echo 'selected';} ?>>2020</option>
                                                    <option value="2021" <?php if($tagihan['tahun'] == 2021) {echo 'selected';} ?>>2021</option>
                                                    <option value="2022" <?php if($tagihan['tahun'] == 2022) {echo 'selected';} ?>>2022</option>
                                                    <option value="2023" <?php if($tagihan['tahun'] == 2023) {echo 'selected';} ?>>2023</option>
                                                    <option value="2024" <?php if($tagihan['tahun'] == 2024) {echo 'selected';} ?>>2024</option>
                                                    <option value="2025" <?php if($tagihan['tahun'] == 2025) {echo 'selected';} ?>>2025</option>
                                                    
                                                </select>

                                            </div>

                                            <div class="form-group">
                                                <label for="id_bulan">Bulan <sup class="text-danger" data-plugin="tippy" data-tippy-placement="top-start" title="Wajib dilengkapi"><i class="fas fa-xs fa-asterisk"></i></sup> </label>
                                                
                                                <select class="form-control" id="example-select" name="id_bulan" required>
                                                    <option></option>
                                                    <?php foreach ($bulans as $bulan) : ?>
                                                    <option value="<?=$bulan['id'] ?>" <?php if($tagihan['id_bulan'] == $bulan['id']) {echo 'selected';} ?>><?=$bulan['bulan'] ?></option>
                                                    <?php endforeach; ?>
                                                </select>

                                            </div>

                                            <div class="form-group mb-3">
                                                <label for="keterangan">Keterangan <sup class="text-danger" data-plugin="tippy" data-tippy-placement="top-start" title="Wajib dilengkapi"><i class="fas fa-xs fa-asterisk"></i></sup> </label>
                                                <textarea name="keterangan" class="form-control" id="keterangan" cols="30" rows="3"><?= $tagihan['keterangan'] ?></textarea>
                                            </div>

                                        </div>

                                        <hr>
                                    </div>

                                    <hr>
                                    
                                    <div class="row">

                                        <div class="col-lg-6 col-md-12">
                                            <h4 class="header-title">DATA AIR TANAH</h4>
                                            <hr>

                                            <div class="form-group mb-3">
                                                <label for="kualitas">Kualitas Air Tanah <sup class="text-danger" data-plugin="tippy" data-tippy-placement="top-start" title="Wajib dilengkapi"><i class="fas fa-xs fa-asterisk"></i></sup> </label>
                                                <select class="form-control" id="example-select" name="kualitas">
                                                        <option></option>
                                                        <?php foreach ($komponen_sda as $ksda) : ?>
                                                        <option value="<?php echo $ksda['bobot'] ?>" <?php if ($ksda['bobot'] == $tagihan['kualitas']) {  echo 'Selected'; } ?>><?php echo $ksda['kriteria'] ?></option>
                                                        <?php endforeach; ?>
                                                </select>
                                            </div>

                                            <div class="form-group mb-3">
                                                <label for="volume">Volume Air Tanah (m<sup>3</sup>)</label>
                                                <input type="text" class="form-control" id="volume" value="<?= $tagihan['volume'] ?>" name="volume" required="">
                                            </div> <!-- end .form-group  -->

                                            <div class="form-group mb-3">
                                                <label for="jumlah_sumur">Jumlah Sumur</label>
                                                <input type="text" class="form-control" id="jumlah_sumur" value="<?= $tagihan['jumlah_sumur'] ?>" name="jumlah_sumur">
                                            </div> <!-- end .form-group  -->

                                            <div class="form-group mb-3">
                                                <label for="kedalaman_sumur">Kedalaman Sumur</label>
                                                <input type="text" class="form-control" id="kedalaman_sumur" value="<?= $tagihan['kedalaman_sumur'] ?>" name="kedalaman_sumur">
                                            </div> <!-- end .form-group  -->

                                            <div class="form-group mb-3">
                                                <label for="harga_baku">Harga Baku</label>
                                                <input type="text" class="form-control bg-light" id="harga_baku" value="<?= $tagihan['harga_baku'] ?>" name="harga_baku" required="" readonly>
                                            </div> <!-- end .form-group  -->

                                            <div class="form-group mb-3">
                                                <label for="pajak_pabt">Pajak PABT (20%)</label>
                                                <input type="text" class="form-control bg-light" id="pajak_pabt" value="<?= $tagihan['pajak_pabt'] ?>" name="pajak_pabt" required="" readonly>
                                            </div> <!-- end .form-group  -->                                            

                                            <div class="form-group mb-3">
                                                <label for="persentasi_sda">Persentasi SDA</label>
                                                <input type="text" class="form-control bg-light" id="persentasi_sda" value="<?= $tagihan['persentasi_sda'] ?>" name="persentasi_sda" required="" readonly>
                                            </div> <!-- end .form-group  -->                                         

                                            <div class="form-group mb-3">
                                                <label for="persentasi_kompensasi">Persentasi Kompensasi</label>
                                                <input type="text" class="form-control bg-light" id="persentasi_kompensasi" value="<?= $tagihan['persentasi_kompensasi'] ?>" name="persentasi_kompensasi" required="" readonly>
                                            </div> <!-- end .form-group  -->

                                            <div class="form-group mb-3">
                                                <label for="total_pabt">Total PABT </label>
                                                <?php if($tagihan['total_pabt']==''): ?>
                                                    <p class="text-danger text-small"> Total PABT belum tersimpan di database. Klik simpan agar bisa diupdate !!</p>
                                                <?php else: ?>
                                                    <input type="text" class="form-control bg-light" id="total_pabt" value="<?= rupiah($tagihan['total_pabt']) ?>"  readonly>
                                                <?php endif; ?>
                                            </div> <!-- end .form-group  -->

                                           
                                        
                                        </div>
                                        <!-- end .col -->

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