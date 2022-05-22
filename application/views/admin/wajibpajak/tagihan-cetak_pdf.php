<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cetak Info Tagihan</title>
    <!-- App favicon -->
    <link rel="shortcut icon" href="<?= base_url() ?>assets/images/favicon-cms-hr.png">
    <style>
        body{
            font-family: Arial;
        }
        .image-container {
            position: relative;
        }
        .tdd {
            width: 30%;
        }
        .before {
            position: absolute;
            margin-bottom: 200px;
            left: 0;
            width: 100%;
            height: 100%;
            display: block;
        }
    .after {
            position: absolute;
            top:300%;
            left: 0;
            width: 100%;
            height: 100%;
            display: block;
        }
        table, th, td {
                border: 1px solid #dee2e6;
                border-collapse: collapse;
        }
        .text-left {
            text-align :left;
        }
        .text-center {
            text-align :center;

        }
        /* .image-container:hover .after {
            display: block;
            background: rgba(0, 0, 0, .6);
        } */
    </style>
    
</head>
<!-- <body onload="window.print()"> -->
<body>

<div class="card-box">          

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
                    
        <table>
                <tr>
                    <th class="text-left align-middle">
                        <img src="<?=base_url()?>assets/images/logo-kota-jayapura-700-dark.png" height="200" alt="">
                    </th>
                    <th class="align-middle" width="700">
                        <h1 class="text-dark" style="font-weight:bold; color:dark;"> INFORMASI TAGIHAN AIR TANAH</h1>
                    </th>
                </tr>
                <tr>
                    <td class="text-left align-top" style="height: 150px; padding:30px">
                        
                        <table style="border: 1px solid #dee2e6; width:500px ">
                            <tr>
                                <td style="padding:40px ">
                                    <p style="">Kepada Yth : </p>
                                    <p style="font-weight:bold; margin:150px;">Pemilik <?= $wajib_pajak['usaha_nama'] ?></p> 
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td class="text-left align-top" style="height: 150px; padding:30px">
                        <table style="border: 1px solid #dee2e6;  width:500px">
                                <tr>
                                    <td style="padding:20px ">
                                        <label>Tagihan Bulan : </label>
                                            <?php
                                            // query bulan
                                            $queryBulan = $this->db->query("SELECT * FROM bulan WHERE id = " . $tagihan['id_bulan']);
                                            $rowBulan = $queryBulan->row_array();
                                                                                ?>
                                            <strong style="font-weight:bold"><?=$rowBulan['bulan']?>
                                        </strong>
                                    </td>
                               </tr>
                                <tr>
                                    <td  style="padding:20px">
                                        <label>Volume Pemanfaatan Air : </label>
                                        <strong style="font-weight:bold"><?=round($tagihan['volume']) . ' m<sup>3</sup>'?></strong>
                                    </td>
                                </tr>
                        </table>
                    </td>
                </tr>
                <br>
                    <tr>
                        <td colspan="2">

                            <!-- start table  -->
                            <table class="table table-bordered mb-3">
                                <tbody>
                                    <tr>
                                        <td width="10%" class="text-center" style="font-weight:bold">Volume Range</td>
                                        <td width="5%" class="text-center" style="font-weight:bold">Volume (m<sup>3</sup>)</td>
                                        <td width="5%" class="text-center" style="font-weight:bold">FNA</td>
                                        <td width="5%" class="text-center" style="font-weight:bold">Harga Baku</td>
                                        <td width="5%" class="text-center" style="font-weight:bold">Jumlah</td>
                                        <td rowspan="9" width="100" class="text-center font-weight-bold align-middle">
                                            <div class="image-container">
                                                <div class="before">
                                                    <h4>Mengetahui, <br> <b>KEPALA DLHK KOTA JAYAPURA</b> </h4>
                                                </div>
                                                <img class="tdd" src="<?=base_url('assets/images/info_tagihan/stempel_ttd.png')?>" alt="">
                                                <div class="after">
                                                    <h4>
                                                        <b>Ir. DOLFINA JECE MANO, M.Si</b>
                                                        <br>
                                                        PEMBINA 
                                                        <br>
                                                        NIP. 19671223 199503 2 001
                                                    </h4>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <!-- Vol 0-50 m3 -->
                                    <tr>
                                        <td class="bg-light text-dark text-center align-middle" width="20%">Vol 0-50  m<sup>3</sup></td>
                                        <td class="bg-light text-dark text-center">
                                            <?php
                                            $volumeAirTanah = round($tagihan['volume']);
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
                                        <td class="text-center align-middle" width="20%">Vol 501-1000 m<sup>3</sup></td>
                                        <td class="text-center">
                                            <?php


                                            if ($volumeAirTanah > 1000) {
                                                $volume3 = 500;
                                                $nilaiSisah3 = $volumeAirTanah - ($volume3 + $volume2 + $volume1);
                                                echo $volume3 . ' m<sup>3</sup>';
                                                // echo 'Volume 3 : ' . $volume3;
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
                                        <td class="text-center">
                                            <?php
                                            echo $fna3;
                                            ?>
                                        </td>
                                        <td class="text-center">
                                            <?php
                                            echo rupiah($hargaBaku);
                                            ?>
                                        </td>
                                        <td class="text-center">
                                            <!-- jumlah harga 3 -->
                                            <?php
                                                if(!empty($volume3)) {
                                                    $jmlPenagihan3 = $volume3 * $fna3 * $hargaBaku;
                                                    echo rupiah($jmlPenagihan3);

                                                } elseif(!empty($nilaiSisah2)){
                                                    $jmlPenagihan3 = $nilaiSisah2 * $fna3 * $hargaBaku;
                                                    echo rupiah($jmlPenagihan3);
                                                } else {
                                                    $jmlPenagihan3 = 0;
                                                    echo "-";
                                                }
                                            ?>
                                        </td>
                                    </tr>
                                    <!-- Vol 1001-2500 m3 -->
                                    <tr>
                                        <td class="text-center align-middle" width="20%">Vol 1001-2500 m<sup>3</sup></td>
                                        <td class="text-center">
                                            <?php
                                            if ($volumeAirTanah > 2500) {
                                                $volume4 = 1500;
                                                $nilaiSisah4 = $volumeAirTanah - ($volume4 + $volume3 + $volume2 + $volume1);
                                                echo $volume4 . ' m<sup>3</sup>';
                                                // echo 'Volume 4 : ' . $volume4;
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
                                        <td class="text-center">
                                            <?php
                                            echo $fna4;
                                            ?>
                                        </td>
                                        <td class="text-center">
                                            <?php
                                            echo rupiah($hargaBaku);
                                            ?>
                                        </td>
                                        <td class="text-center">
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
                                        <td class="text-center align-middle" width="20%">Vol &gt;2500 m<sup>3</sup></td>
                                        <td class="text-center">
                                            <?php

                                            if ($volumeAirTanah > 2500) {
                                                // $volume5 = 500;
                                                $nilaiSisah5 = $volumeAirTanah - ($volume4 + $volume3 + $volume2 + $volume1);

                                                // echo 'Volume 5 : ' . $volume5;
                                                // echo '<br>';
                                                echo $nilaiSisah5 . ' m<sup>3</sup>';
                                                // echo 'Nilai Sisah 5 : ' . $nilaiSisah5;
                                                // echo '<br>';
                                                // echo '<br>';
                                            } else {
                                                if (isset($nilaiSisah4)) {
                                                    echo volume_air($nilaiSisah4);
                                                }
                                            }

                                            ?>
                                        </td>
                                        <td class="text-center">
                                            <?php
                                            echo $fna5;
                                            ?>
                                        </td>
                                        <td class="text-center">
                                            <?php
                                            echo rupiah($hargaBaku);
                                            ?>
                                        </td>
                                        <td class="text-center">
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
                                        <td class="text-center align-middle" width="20%"></td>
                                        <td class="text-center">
                                            <?php


                                            if (isset($nilaiSisah1) && isset($nilaiSisah2) && isset($nilaiSisah3) && isset($nilaiSisah4) && isset($nilaiSisah5)) {

                                                $total = $volume1 + $volume2 + $volume3 + $volume4 + $nilaiSisah5;
                                                echo $total;
                                            }

                                            ?>
                                        </td>
                                        <td class="text-center"></td>
                                        <td class="text-center"></td>
                                        <td class="text-center"></td>
                                    </tr> -->


                                    <tr>
                                        <td colspan="4" class="text-center align-middle" width="20%" style="font-weight:bold">NPA </td>
                                        <td class="text-center" style="font-weight:bold">
                                            <?php
                                            $totalNPA = $jmlPenagihan1 + $jmlPenagihan2 + $jmlPenagihan3 + $jmlPenagihan4 + $jmlPenagihan5;
                                            echo rupiah($totalNPA);
                                            ?>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="4" class="text-center align-middle" width="20%" style="font-weight:bold">PAJAK PABT ( <?= $pajakPABT*100 ?> %)</td>
                                        <td class="text-center" style="font-weight:bold">
                                            <?php
                                            $totalPajakPABT = $pajakPABT * $totalNPA;
                                            echo rupiah($totalPajakPABT);
                                            ?>
                                        </td>
                                    </tr>


                            </table>
                            <!-- end table  -->
                        
                        </td>
                    </tr>
            </tbody>
        </table>
    
    </div> <!-- end info-tagihan  -->

</div>
</body>
</html>