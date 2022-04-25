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
                                <li class="breadcrumb-item active">Buat</li>
                            </ol>
                        </div>
                        <h4 class="page-title">Buat Tagihan</span></h4>
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

                        <form class="needs-validation" action="<?php echo base_url('C_Tagihan/proses_buat_tagihan/'); ?>" method="POST" enctype="multipart/form-data">
                        <input type="hidden" name="id_pengguna" value="<?= $this->session->userdata('id')?>"> 
                        <input type="hidden" name="id_wp" value="<?=$this->uri->segment(5)?>"> 
                        <input type="hidden" name="usaha_kategori" value="<?=$wajib_pajak['usaha_kategori']?>"> 
                        <input type="hidden" name="role" value="<?=$this->uri->segment(1)?>">

                            <div class="card">
                                <div class="card-body">
                                
                                    <div class="row">
                                        <div class="col-12">
                                            <div class="d-flex justify-content-between">
                                                <a href="#">
                                                    <button type="submit" class="btn btn-lg btn-primary waves-effect waves-light" data-plugin="tippy" data-tippy-placement="top-start" title="Simpan">
                                                    <span class="btn-label"><i class="fas fa-save"></i></span>Simpan</button>
                                                </a>
                                                
                                                <a href="<?= base_url('admin/wajibpajak/tagihan/new/') ?><?=$this->uri->segment(5)?>?t=<?=$_GET['t']?>" data-plugin="tippy" data-tippy-placement="top-start" title="Kembali ke Halaman Tagihan">
                                                    <button type="button" class="btn btn-lg btn-primary text-primary bg-light waves-effect waves-light">
                                                    <span class="btn-label"><i class="mdi mdi-replay"></i></span>Kembali</button>
                                                </a>

                                            </div>
                                            <hr>
                                        </div> <!-- end col  -->
                                    </div> <!-- end row  -->

                                    <div class="row">

                                        <div class="col-lg-8 col-md-12 col-sm-12">

                                            <div class="form-group">
                                                <label for="tahun">Tahun <sup class="text-danger" data-plugin="tippy" data-tippy-placement="top-start" title="Wajib dilengkapi"><i class="fas fa-xs fa-asterisk"></i></sup> </label>
                                                <select class="form-control" id="example-select" name="tahun">
                                                    <option></option>
                                                    <option value="2018" <?php if(isset($_GET['t']) && $_GET['t'] == '2018') { echo 'selected';} ?>>2018</option>
                                                    <option value="2019" <?php if(isset($_GET['t']) && $_GET['t'] == '2019') { echo 'selected';} ?>>2019</option>
                                                    <option value="2020" <?php if(isset($_GET['t']) && $_GET['t'] == '2020') { echo 'selected';} ?>>2020</option>
                                                    <option value="2021" <?php if(isset($_GET['t']) && $_GET['t'] == '2021') { echo 'selected';} ?>>2021</option>
                                                    <option value="2022" <?php if(isset($_GET['t']) && $_GET['t'] == '2022') { echo 'selected';} ?>>2022</option>
                                                </select>
                                            </div>

                                            <div class="form-group">
                                                <label for="id_bulan">Bulan <sup class="text-danger" data-plugin="tippy" data-tippy-placement="top-start" title="Wajib dilengkapi"><i class="fas fa-xs fa-asterisk"></i></sup> </label>
                                                
                                                <select class="form-control" id="example-select" name="id_bulan" required>
                                                    <option></option>
                                                    <?php foreach ($bulans as $bulan) : ?>
                                                    <option value="<?=$bulan['id'] ?>"><?=$bulan['bulan'] ?></option>
                                                    <?php endforeach; ?>
                                                </select>

                                            </div>

                                            <div class="form-group mb-3">
                                                <label for="keterangan">Keterangan <sup class="text-danger" data-plugin="tippy" data-tippy-placement="top-start" title="Wajib dilengkapi"><i class="fas fa-xs fa-asterisk"></i></sup> </label>
                                                <textarea name="keterangan" class="form-control" id="keterangan" cols="30" rows="3" required></textarea>
                                            </div>
                                        
                                        </div>
                                    </div>

                                    <hr>

                                    <div class="row">
                                        <div class="col-lg-8 col-md-12 col-sm-12">

                                            <div class="form-group mb-3">
                                                <label for="kualitas">Komponen Sumber Daya Alam (SDA) <sup class="text-danger" data-plugin="tippy" data-tippy-placement="top-start" title="Wajib dilengkapi"><i class="fas fa-xs fa-asterisk"></i></sup> </label>
                                                <select class="form-control" id="example-select" name="kualitas" required>
                                                    <option></option>
                                                    <?php foreach ($komponen_sda as $ksda) : ?>
                                                    <option value="<?php echo $ksda['bobot'] ?>"><?php echo $ksda['kriteria'] ?></option>
                                                    <?php endforeach; ?>
                                                </select>
                                            </div> <!-- end .form-group  -->

                                            <div class="form-group mb-3">
                                                <label for="volume">Volume Air Tanah (m<sup>3</sup>) <sup class="text-danger" data-plugin="tippy" data-tippy-placement="top-start" title="Wajib dilengkapi"><i class="fas fa-xs fa-asterisk"></i></sup> </label>
                                                <input type="text" class="form-control" id="volume" value="" name="volume" required="">
                                            </div> <!-- end .form-group  -->

                                            <div class="form-group mb-3">
                                                <label for="jumlah_sumur">Jumlah Sumur</label>
                                                <input type="text" class="form-control" id="jumlah_sumur" value="" name="jumlah_sumur">
                                            </div> <!-- end .form-group  -->

                                            <div class="form-group mb-3">
                                                <label for="kedalaman_sumur">Kedalaman Sumur</label>
                                                <input type="text" class="form-control" id="kedalaman_sumur" value="" name="kedalaman_sumur">
                                            </div> <!-- end .form-group  -->

                                            <div class="form-group mb-3">
                                                <label for="harga_baku">Harga Baku</label>
                                                <input type="text" class="form-control bg-light" id="harga_baku" value="<?=rupiah($harga_baku['isi'])?>" name="" required="" readonly>
                                                <input type="hidden" class="form-control bg-light" id="harga_baku" value="<?=$harga_baku['isi']?>" name="harga_baku" required="" readonly>
                                            </div> <!-- end .form-group  -->

                                            <div class="form-group mb-3">
                                                <label for="pajak_pabt">Pajak PABT (20%)</label>
                                                <input type="text" class="form-control bg-light" id="pajak_pabt" value="<?=$presentasi_pabt['isi']?>" name="pajak_pabt" required="" readonly>
                                            </div> <!-- end .form-group  -->                                            

                                            <div class="form-group mb-3">
                                                <label for="persentasi_sda">Persentasi SDA (<?=$persentasi_sda['persentasi']*100?>%)</label>
                                                <input type="text" class="form-control bg-light" id="persentasi_sda" value="<?=$persentasi_sda['persentasi']?>" name="persentasi_sda" required="" readonly>
                                            </div> <!-- end .form-group  -->                                         

                                            <div class="form-group mb-3">
                                                <label for="persentasi_kompensasi">Persentasi Kompensasi (<?=$persentasi_kompensasi['persentasi']*100?>%)</label>
                                                <input type="text" class="form-control bg-light" id="persentasi_kompensasi" value="<?=$persentasi_kompensasi['persentasi']?>" name="persentasi_kompensasi" required="" readonly>
                                            </div> <!-- end .form-group  -->

                                        </div> <!-- end .col  -->

                                    </div>
                                    
                                    
                                </div> <!-- end card-body-->

                            </div> <!-- end card-->
                        </form>
                    </div> <!-- end col -->

                </div>
                <!-- end row -->



















        </div> <!-- container -->

    </div> <!-- content -->