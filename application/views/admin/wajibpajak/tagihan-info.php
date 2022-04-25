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
                                <li class="breadcrumb-item active">Info</li>
                            </ol>
                        </div>
                        <h4 class="page-title">Info Tagihan</span></h4>
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

                        <div class="card">
                            <div class="card-body">
                                
                                <div class="row">
                                    <div class="col-12">
                                        <div class="d-flex justify-content-between">
                                            
                                            <a href="<?= base_url('admin/wajibpajak/tagihan/new/') ?><?=$this->uri->segment(5)?>?t=<?=$tagihan['tahun']?>" data-plugin="tippy" data-tippy-placement="top-start" title="Kembali ke Halaman Tagihan">
                                                <button type="button" class="btn btn-lg btn-primary text-primary bg-light waves-effect waves-light">
                                                <span class="btn-label"><i class="mdi mdi-replay"></i></span>Kembali</button>
                                            </a>

                                        </div>
                                        <hr>
                                    </div> <!-- end col  -->
                                </div> <!-- end row  -->
                                
                                <div class="row">
                                    <div class="col-lg-12">

                                                <?php
                                                // data jenis usaha

                                                $jenisUsaha = $wajib_pajak['usaha_kategori'];
                                                $komponen_SDA = $tagihan['persentasi_sda'];


                                                if (isset($jenisUsaha)) {
                                                    $jenisUsaha = $jenisUsaha; // Ambil id jenis usaha

                                                    if (isset($jenisUsaha) && $jenisUsaha == 1) {
                                                        $judul_jenisUsaha = 'Non Niaga';
                                                        $nilai1 = 1;
                                                        $nilai2 = 1.1;
                                                        $nilai3 = 1.2;
                                                        $nilai4 = 1.3;
                                                        $nilai5 = 1.4;
                                                    } elseif (isset($jenisUsaha) && $jenisUsaha == 2) {
                                                        $judul_jenisUsaha = 'Niaga Kecil';
                                                        $nilai1 = 2;
                                                        $nilai2 = 2.2;
                                                        $nilai3 = 2.4;
                                                        $nilai4 = 2.6;
                                                        $nilai5 = 2.8;
                                                    } elseif (isset($jenisUsaha) && $jenisUsaha == 3) {
                                                        $judul_jenisUsaha = 'Industri Kecil';
                                                        $nilai1 = 3;
                                                        $nilai2 = 3.3;
                                                        $nilai3 = 3.6;
                                                        $nilai4 = 3.9;
                                                        $nilai5 = 4.5;
                                                    } elseif (isset($jenisUsaha) && $jenisUsaha == 4) {
                                                        $judul_jenisUsaha = 'Niaga Besar';
                                                        $nilai1 = 4;
                                                        $nilai2 = 4.4;
                                                        $nilai3 = 4.8;
                                                        $nilai4 = 5.2;
                                                        $nilai5 = 5.6;
                                                    } elseif (isset($jenisUsaha) && $jenisUsaha == 5) {
                                                        $judul_jenisUsaha = 'Industri Besar';
                                                        $nilai1 = 5;
                                                        $nilai2 = 5.5;
                                                        $nilai3 = 6.0;
                                                        $nilai4 = 6.5;
                                                        $nilai5 = 7.0;
                                                    }
                                                }

                                                ?>
                    

                                                <?php
                                                // data harga baku
                                                if (isset($tagihan['harga_baku']) && $tagihan['harga_baku'] != '') {
                                                    $hargaBaku = $tagihan['harga_baku']; // ambil nilai harga baku
                                                }
                                                ?>

                

                                                <?php
                                                // data pajak PABT
                                                if (isset($tagihan['pajak_pabt']) && $tagihan['pajak_pabt'] != '') {
                                                    $pajakPABT = $tagihan['pajak_pabt']; // ambil pajak PABT
                                                }
                                                ?>

            

            
                                    </div>
                                </div>
                                
                                <div class="fna">

                                    
                                    <?php if (isset($tagihan['kualitas'])) { $jml1A = $tagihan['kualitas'] * $tagihan['persentasi_sda']; } ?>
                                    <?php if (isset($nilai1)) {  $jml1B = $nilai1 * $tagihan['persentasi_kompensasi']; } ?>
                                    <?php $fna1 = $jml1A + $jml1B; ?>
                                    <?php if (isset($tagihan['kualitas'])) { $jml2A = $tagihan['kualitas'] * $tagihan['persentasi_sda']; } ?>
                                    <?php if (isset($nilai2)) { $jml2B = $nilai2 * $tagihan['persentasi_kompensasi']; } ?>
                                    <?php $fna2 = $jml2A + $jml2B; ?>
                                
                                    <?php if (isset($tagihan['kualitas'])) { $jml3A = $tagihan['kualitas'] * $tagihan['persentasi_sda']; }  ?>
                                    <?php if (isset($nilai3)) { $jml3B = $nilai3 * $tagihan['persentasi_kompensasi']; } ?>
                                    <?php $fna3 = $jml3A + $jml3B; ?>
                                    
                                    <?php if (isset($tagihan['kualitas'])) { $jml4A = $tagihan['kualitas'] * $tagihan['persentasi_sda']; } ?>

                                    <?php if (isset($nilai4)) { $jml4B = $nilai4 * $tagihan['persentasi_kompensasi']; } ?>

                                    <?php $fna4 = $jml4A + $jml4B; ?>
                                    
                                    <?php if (isset($tagihan['kualitas'])) { $jml5A = $tagihan['kualitas'] * $tagihan['persentasi_sda']; } ?>
                                    
                                    <?php if (isset($nilai5)) { $jml5B = $nilai5 * $tagihan['persentasi_kompensasi']; } ?>
                                    
                                    <?php $fna5 = $jml5A + $jml5B; ?>

                
                                <!-- end fna -->

                                <div class="info-tagihan">

                                    <!-- start table  -->
                                    <table class="table table-bordered mb-3">
                                        <tbody class="bg-light text-dark">
                                            <tr>
                                                <td class="bg-dark text-light text-center align-middle" width="20%">Volume Range</td>
                                                <td class="bg-dark text-light text-center">Volume (m<sup>3</sup>)</td>
                                                <td class="bg-dark text-light text-center">FNA</td>
                                                <td class="bg-dark text-light text-center">Harga Baku</td>
                                                <td class="bg-dark text-light text-center">Jumlah</td>
                                            </tr>
                                            <!-- Vol 0-50 m3 -->
                                            <tr>
                                                <td class="bg-light text-dark text-center align-middle" width="20%">Vol 0-50  m<sup>3</sup></td>
                                                <td class="bg-light text-dark text-center">
                                                    <?php
                                                    $volumeAirTanah = $tagihan['volume'];
                                                    // echo $volumeAirTanah;
                                                    // echo '<br>';
                                                    // echo '<br>';

                                                    if ($volumeAirTanah > 50) {
                                                        $volume1 = 50;
                                                        $nilaiSisah1 = $volumeAirTanah - $volume1;
                                                        // echo 'Volume 1 : ' . $volume1;
                                                        echo $volume1 . ' m<sup>3</sup>';
                                                        // echo '<br>';
                                                        // echo 'Nilai Sisah 1 : ' . $nilaiSisah1;
                                                        // echo '<br>';
                                                        // echo '<br>';
                                                    } else {
                                                        if (isset($volume1)) {
                                                            echo $nilaiSisah1 . ' m<sup>3</sup>';
                                                        } else {
                                                            echo volume_air($volumeAirTanah);
                                                        }
                                                    }

                                                    ?>
                                                </td>
                                                <td class="bg-light text-dark text-center">
                                                    <?php
                                                    echo $fna1;
                                                    ?>
                                                </td>
                                                <td class="bg-light text-dark text-center">
                                                    <?php
                                                    echo rupiah($hargaBaku);
                                                    ?>
                                                </td>
                                                <td class="bg-light text-dark text-center">
                                                    <!-- <?php
                                                    $jmlPenagihan1 = $volume1 * $fna1 * $hargaBaku;
                                                    echo rupiah($jmlPenagihan1);
                                                    ?> -->

                                                    <!-- jumlah harga 1 -->
                                                    <?php
                                                        if(!empty($volume1)) {
                                                            $jmlPenagihan1 = $volume1 * $fna1 * $hargaBaku;
                                                            echo rupiah($jmlPenagihan1);
                                                        } elseif(!empty($nilaiSisah1)){
                                                            $jmlPenagihan1 = $nilaiSisah1 * $fna2 * $hargaBaku;
                                                            echo rupiah($jmlPenagihan1);
                                                        } 
                                                        else {
                                                            $jmlPenagihan1 = $volumeAirTanah * $fna2 * $hargaBaku;
                                                            echo rupiah($jmlPenagihan1);
                                                        }
                                                    ?>


                                                </td>
                                            </tr>
                                            <!-- Vol 51-500 m3 -->
                                            <tr>
                                                <td class="bg-light text-dark text-center align-middle" width="20%">Vol 51-500  m<sup>3</sup></td>
                                                <td class="bg-light text-dark text-center">
                                                    <?php


                                                    if ($volumeAirTanah > 500) {
                                                        $volume2 = 450;
                                                        $nilaiSisah2 = $volumeAirTanah - ($volume2 + $volume1);
                                                        // echo 'Volume 2 : ' . $volume2;
                                                        echo $volume2 . ' m<sup>3</sup>';
                                                        // echo '<br>';
                                                        // echo 'Nilai Sisah 2 : ' . $nilaiSisah2;
                                                        // echo '<br>';
                                                        // echo '<br>';
                                                    } else {
                                                        if (isset($nilaiSisah1)) {
                                                            echo volume_air($nilaiSisah1);
                                                        }
                                                    }
                                                    ?>
                                                </td>
                                                <td class="bg-light text-dark text-center">
                                                    <?php
                                                    echo $fna2;
                                                    ?>
                                                </td>
                                                <td class="bg-light text-dark text-center">
                                                    <?php
                                                    echo rupiah($hargaBaku);
                                                    ?>
                                                </td>
                                                <td class="bg-light text-dark text-center">
                                                    <!-- jumlah harga 2 -->
                                                    <?php
                                                        if(!empty($volume2)) {
                                                            $jmlPenagihan2 = $volume2 * $fna2 * $hargaBaku;
                                                            echo rupiah($jmlPenagihan2);
                                                        } elseif(!empty($nilaiSisah1)){
                                                            $jmlPenagihan2 = $nilaiSisah1 * $fna2 * $hargaBaku;
                                                            echo rupiah($jmlPenagihan2);
                                                        } 
                                                        else {
                                                            $jmlPenagihan2 = 0;
                                                            echo "-";
                                                        }
                                                    ?>
                                                </td>
                                            </tr>
                                            <!-- Vol 501-1000 m3 -->
                                            <tr>
                                                <td class="bg-light text-dark text-center align-middle" width="20%">Vol 501-1000  m<sup>3</sup></td>
                                                <td class="bg-light text-dark text-center">
                                                    <?php


                                                    if ($volumeAirTanah > 1000) {
                                                        $volume3 = 500;
                                                        $nilaiSisah3 = $volumeAirTanah - ($volume3 + $volume2 + $volume1);
                                                        // echo 'Volume 3 : ' . $volume3;
                                                        echo $volume3 . ' m<sup>3</sup>';
                                                        // echo '<br>';
                                                        // echo 'Nilai Sisah 3 : ' . $nilaiSisah3;
                                                        // echo '<br>';
                                                        // echo '<br>';
                                                    } else {
                                                        if (isset($nilaiSisah2)) {
                                                            echo volume_air($nilaiSisah2);
                                                        }
                                                    }
                                                    ?>
                                                </td>
                                                <td class="bg-light text-dark text-center">
                                                    <?php
                                                    echo $fna3;
                                                    ?>
                                                </td>
                                                <td class="bg-light text-dark text-center">
                                                    <?php
                                                    echo rupiah($hargaBaku);
                                                    ?>
                                                </td>
                                                <td class="bg-light text-dark text-center">
                                                    <!-- jumlah harga 3 -->
                                                    <?php
                                                        if(!empty($volume3)) {
                                                            $jmlPenagihan3 = $volume3 * $fna3 * $hargaBaku;
                                                            echo rupiah($jmlPenagihan3);

                                                        } elseif(!empty($nilaiSisah2)){
                                                            $jmlPenagihan3 = $nilaiSisah2 * $fna3 * $hargaBaku;
                                                            echo rupiah($jmlPenagihan3);
                                                        }  else {
                                                            $jmlPenagihan3 = 0;
                                                            echo "-";
                                                        }
                                                    ?>
                                                </td>
                                            </tr>
                                            <!-- Vol 1001-2500 m3 -->
                                            <tr>
                                                <td class="bg-light text-dark text-center align-middle" width="20%">Vol 1001-2500  m<sup>3</sup></td>
                                                <td class="bg-light text-dark text-center">
                                                    <?php



                                                    if ($volumeAirTanah > 2500) {
                                                        $volume4 = 1500;
                                                        $nilaiSisah4 = $volumeAirTanah - ($volume4 + $volume3 + $volume2 + $volume1);
                                                        // echo 'Volume 4 : ' . $volume4;
                                                        echo $volume4 . ' m<sup>3</sup>';
                                                        // echo '<br>';
                                                        // echo 'Nilai Sisah 4 : ' . $nilaiSisah4;
                                                        // echo '<br>';
                                                        // echo '<br>';
                                                    } else {
                                                        if (isset($nilaiSisah3)) {
                                                            echo volume_air($nilaiSisah3);
                                                        }
                                                    }

                                                    ?>
                                                </td>
                                                <td class="bg-light text-dark text-center">
                                                    <?php
                                                    echo $fna4;
                                                    ?>
                                                </td>
                                                <td class="bg-light text-dark text-center">
                                                    <?php
                                                    echo rupiah($hargaBaku);
                                                    ?>
                                                </td>
                                                <td class="bg-light text-dark text-center">
                                                    <!-- jumlah harga 4 -->
                                                    <?php
                                                        if(!empty($volume4)) {
                                                            $jmlPenagihan4 = $volume4 * $fna4 * $hargaBaku;
                                                            echo rupiah($jmlPenagihan4);
                                                        } elseif(!empty($nilaiSisah3)){
                                                            $jmlPenagihan4 = $nilaiSisah3 * $fna4 * $hargaBaku;
                                                            echo rupiah($jmlPenagihan4);
                                                        } else {
                                                            
                                                            $jmlPenagihan4 = 0;
                                                            echo "-";
                                                        }
                                                    ?>
                                                </td>
                                            </tr>
                                            <!-- Vol >2500 m3 -->
                                            <tr>
                                                <td class="bg-light text-dark text-center align-middle" width="20%">Vol &gt;2500  m<sup>3</sup></td>
                                                <td class="bg-light text-dark text-center">
                                                    <!-- jumlah harga 5 -->
                                                    <?php

                                                    if ($volumeAirTanah > 2500) {
                                                        // $volume5 = 500;
                                                        $nilaiSisah5 = $volumeAirTanah - ($volume4 + $volume3 + $volume2 + $volume1);

                                                        // echo 'Volume 5 : ' . $volume5;
                                                        // echo '<br>';
                                                        // echo 'Nilai Sisah 5 : ' . $nilaiSisah5;
                                                        echo $nilaiSisah5 . ' m<sup>3</sup>';
                                                        // echo '<br>';
                                                        // echo '<br>';
                                                    } else {
                                                        if (isset($nilaiSisah4)) {
                                                            echo volume_air($nilaiSisah4);
                                                        }
                                                    }

                                                    ?>
                                                </td>
                                                <td class="bg-light text-dark text-center">
                                                    <?php
                                                    echo $fna5;
                                                    ?>
                                                </td>
                                                <td class="bg-light text-dark text-center">
                                                    <?php
                                                    echo rupiah($hargaBaku);
                                                    ?>
                                                </td>
                                                <td class="bg-light text-dark text-center">
                                                    <?php
                                                    if(!empty($nilaiSisah5)) {
                                                        $jmlPenagihan5 = $nilaiSisah5 * $fna5 * $hargaBaku;
                                                        echo rupiah($jmlPenagihan5);
                                                    } else {
                                                        
                                                        $jmlPenagihan5 = 0;
                                                        echo "-";
                                                    }
                                                    ?>
                                                </td>
                                            </tr>


                                            <!-- <tr>
                                                <td class="bg-soft-dark text-dark text-center align-middle" width="20%"></td>
                                                <td class="bg-soft-dark text-dark text-center">
                                                    <?php


                                                    if (isset($nilaiSisah1) && isset($nilaiSisah2) && isset($nilaiSisah3) && isset($nilaiSisah4) && isset($nilaiSisah5)) {

                                                        $total = $volume1 + $volume2 + $volume3 + $volume4 + $nilaiSisah5;
                                                        echo $total;
                                                    }

                                                    ?>
                                                </td>
                                                <td class="bg-soft-dark text-dark text-center"></td>
                                                <td class="bg-soft-dark text-dark text-center"></td>
                                                <td class="bg-soft-dark text-dark text-center"></td>
                                            </tr> -->


                                            <tr>
                                                <td colspan="4" class="bg-soft-secondary text-dark text-center align-middle font-weight-bold" width="20%">

                                                <?php
                                                    echo $tagihan['volume'] . ' m<sup>3</sup>';
                                                ?>

                                                </td>
                                                <td class="bg-soft-secondary text-dark text-center font-weight-bold">
                                                    
                                                </td>
                                            </tr>


                                            <tr>
                                                <td colspan="4" class="bg-soft-dark text-dark text-center align-middle font-weight-bold" width="20%">NPA</td>
                                                <td class="bg-soft-dark text-dark text-center font-weight-bold">
                                                    <?php
                                                    $totalNPA = $jmlPenagihan1 + $jmlPenagihan2 + $jmlPenagihan3 + $jmlPenagihan4 + $jmlPenagihan5;
                                                    echo rupiah($totalNPA);
                                                    ?>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="4" class="bg-soft-dark text-dark text-center align-middle font-weight-bold" width="20%">PAJAK PABT ( <?= $pajakPABT*100 ?>%)</td>
                                                <td class="bg-soft-dark text-dark text-center font-weight-bold">
                                                    <?php
                                                    $totalPajakPABT = $pajakPABT * $totalNPA;
                                                    echo rupiah($totalPajakPABT);
                                                    ?>
                                                </td>
                                            </tr>


                                        </tbody>
                                    </table>
                                    <!-- end table  -->
                                
                                </div> <!-- end info-tagihan  -->
                                
                            </div> <!-- end .card-body  -->
                        </div> <!-- end .card  -->
                        
                    </div> <!-- end col -->

                </div>
                <!-- end row -->



















        </div> <!-- container -->

    </div> <!-- content -->

</div>