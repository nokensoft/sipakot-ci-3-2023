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
                                <li class="breadcrumb-item active">Faktor Nilai Air (FNA)</li>
                            </ol>
                        </div>
                        <h4 class="page-title">Faktor Nilai Air (FNA)</span></h4>
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

                                    <!-- start table  -->
                                    <table class="table table-bordered mb-3">
                                        <tbody class="bg-light text-dark">
                                            <tr>
                                                <td rowspan="5" class="align-middle text-center" width="20%">
                                                    Vol 0-50 M³
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="bg-dark text-light text-cente" width="20%">Jenis Komponen</td>
                                                <td class="bg-dark text-light text-center" width="20%">Bobot</td>
                                                <td class="bg-dark text-light text-center" width="20%">%</td>
                                                <td class="bg-dark text-light text-center" width="20%">Jumlah</td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light text-dark text-center align-middle">
                                                    Komponen SDA
                                                </td>
                                                <td class="bg-light text-dark text-center">
                                                    <?php
                                                    if (isset($tagihan['kualitas'])) {
                                                        echo $tagihan['kualitas'];
                                                    } else {
                                                        echo '-';
                                                    }
                                                    ?>
                                                </td>
                                                <td class="bg-light text-dark text-center">
                                                    <?php
                                                    if (isset($tagihan['persentasi_sda'])) {
                                                        echo $tagihan['persentasi_sda'];
                                                    } else {
                                                        echo '-';
                                                    }
                                                    ?>
                                                </td>
                                                <td class="bg-light text-dark text-center">
                                                    <?php
                                                    if (isset($tagihan['kualitas'])) {
                                                        $jml1A = $tagihan['kualitas'] * $tagihan['persentasi_sda'];
                                                        echo $jml1A;
                                                    } else {
                                                        echo '-';
                                                    }
                                                    ?>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light text-dark text-center align-middle">
                                                    Komponen Kompensasi
                                                </td>
                                                <td class="bg-light text-dark text-center">
                                                    <?php
                                                    if (isset($nilai1)) {
                                                        echo $nilai1;
                                                    } else {
                                                        echo '-';
                                                    }
                                                    ?>
                                                </td>
                                                <td class="bg-light text-dark text-center">
                                                    <?php
                                                    if (isset($tagihan['persentasi_kompensasi'])) {
                                                        echo $tagihan['persentasi_kompensasi'];
                                                    } else {
                                                        echo '-';
                                                    }
                                                    ?>
                                                </td>
                                                <td class="bg-light text-dark text-center">
                                                    <?php
                                                    if (isset($nilai1)) {
                                                        $jml1B = $nilai1 * $tagihan['persentasi_kompensasi'];
                                                        echo $jml1B;
                                                    } else {
                                                        echo '-';
                                                    }
                                                    ?>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th colspan="3" class="bg-light text-dark text-center align-middle">
                                                    Jumlah
                                                </th>
                                                <th class="text-center">
                                                    <strong>
                                                        <?php
                                                        $fna1 = $jml1A + $jml1B;
                                                        echo $fna1;
                                                        ?>
                                                    </strong>
                                                </th>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <!-- end table  -->


                                    <!-- start table  -->
                                    <table class="table table-bordered mb-3">
                                        <tbody class="bg-light text-dark">
                                            <tr>
                                                <td rowspan="5" class="align-middle text-center" width="20%">
                                                    Vol 51-500 M³
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="bg-dark text-light text-cente" width="20%">Jenis Komponen</td>
                                                <td class="bg-dark text-light text-center" width="20%">Bobot</td>
                                                <td class="bg-dark text-light text-center" width="20%">%</td>
                                                <td class="bg-dark text-light text-center" width="20%">Jumlah</td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light text-dark text-center align-middle">
                                                    Komponen SDA
                                                </td>
                                                <td class="bg-light text-dark text-center">
                                                    <?php
                                                    if (isset($tagihan['kualitas'])) {
                                                        echo $tagihan['kualitas'];
                                                    } else {
                                                        echo '-';
                                                    }
                                                    ?>
                                                </td>
                                                <td class="bg-light text-dark text-center">
                                                    <?php
                                                    if (isset($tagihan['persentasi_sda'])) {
                                                        echo $tagihan['persentasi_sda'];
                                                    } else {
                                                        echo '-';
                                                    }
                                                    ?>
                                                </td>
                                                <td class="bg-light text-dark text-center">
                                                    <?php
                                                    if (isset($tagihan['kualitas'])) {
                                                        $jml2A = $tagihan['kualitas'] * $tagihan['persentasi_sda'];
                                                        echo $jml2A;
                                                    } else {
                                                        echo '-';
                                                    }
                                                    ?>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light text-dark text-center align-middle">
                                                    Komponen Kompensasi
                                                </td>
                                                <td class="bg-light text-dark text-center">
                                                    <?php
                                                    if (isset($nilai2)) {
                                                        echo $nilai2;
                                                    } else {
                                                        echo '-';
                                                    }
                                                    ?>
                                                </td>
                                                <td class="bg-light text-dark text-center">
                                                    <?php
                                                    if (isset($tagihan['persentasi_kompensasi'])) {
                                                        echo $tagihan['persentasi_kompensasi'];
                                                    } else {
                                                        echo '-';
                                                    }
                                                    ?>
                                                </td>
                                                <td class="bg-light text-dark text-center">
                                                    <?php
                                                    if (isset($nilai2)) {
                                                        $jml2B = $nilai2 * $tagihan['persentasi_kompensasi'];
                                                        echo $jml2B;
                                                    } else {
                                                        echo '-';
                                                    }
                                                    ?>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th colspan="3" class="bg-light text-dark text-center align-middle">
                                                    Jumlah
                                                </th>
                                                <th class="text-center">
                                                    <?php
                                                    $fna2 = $jml2A + $jml2B;
                                                    echo $fna2;
                                                    ?>
                                                </th>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <!-- end table  -->




                                    <!-- start table  -->
                                    <table class="table table-bordered mb-3">
                                        <tbody class="bg-light text-dark">
                                            <tr>
                                                <td rowspan="5" class="align-middle text-center" width="20%">
                                                    Vol 501-1000 M³
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="bg-dark text-light text-cente" width="20%">Jenis Komponen</td>
                                                <td class="bg-dark text-light text-center" width="20%">Bobot</td>
                                                <td class="bg-dark text-light text-center" width="20%">%</td>
                                                <td class="bg-dark text-light text-center" width="20%">Jumlah</td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light text-dark text-center align-middle">
                                                    Komponen SDA
                                                </td>
                                                <td class="bg-light text-dark text-center">
                                                    <?php
                                                    if (isset($tagihan['kualitas'])) {
                                                        echo $tagihan['kualitas'];
                                                    } else {
                                                        echo '-';
                                                    }
                                                    ?>
                                                </td>
                                                <td class="bg-light text-dark text-center">
                                                    <?php
                                                    if (isset($tagihan['persentasi_sda'])) {
                                                        echo $tagihan['persentasi_sda'];
                                                    } else {
                                                        echo '-';
                                                    }
                                                    ?>
                                                </td>
                                                <td class="bg-light text-dark text-center">
                                                    <?php
                                                    if (isset($tagihan['kualitas'])) {
                                                        $jml3A = $tagihan['kualitas'] * $tagihan['persentasi_sda'];
                                                        echo $jml3A;
                                                    } else {
                                                        echo '-';
                                                    }
                                                    ?>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light text-dark text-center align-middle">
                                                    Komponen Kompensasi
                                                </td>
                                                <td class="bg-light text-dark text-center">
                                                    <?php
                                                    if (isset($nilai3)) {
                                                        echo $nilai3;
                                                    } else {
                                                        echo '-';
                                                    }
                                                    ?>
                                                </td>
                                                <td class="bg-light text-dark text-center">
                                                    <?php
                                                    if (isset($tagihan['persentasi_kompensasi'])) {
                                                        echo $tagihan['persentasi_kompensasi'];
                                                    } else {
                                                        echo '-';
                                                    }
                                                    ?>
                                                </td>
                                                <td class="bg-light text-dark text-center">
                                                    <?php
                                                    if (isset($nilai3)) {
                                                        $jml3B = $nilai3 * $tagihan['persentasi_kompensasi'];
                                                        echo $jml3B;
                                                    } else {
                                                        echo '-';
                                                    }
                                                    ?>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th colspan="3" class="bg-light text-dark text-center align-middle">
                                                    Jumlah
                                                </th>
                                                <th class="text-center">
                                                    <?php
                                                    $fna3 = $jml3A + $jml3B;
                                                    echo $fna3;
                                                    ?>
                                                </th>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <!-- end table  -->




                                    <!-- start table  -->
                                    <table class="table table-bordered mb-3">
                                        <tbody class="bg-light text-dark">
                                            <tr>
                                                <td rowspan="5" class="align-middle text-center" width="20%">
                                                    Vol 1001-2500 M³
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="bg-dark text-light text-cente" width="20%">Jenis Komponen</td>
                                                <td class="bg-dark text-light text-center" width="20%">Bobot</td>
                                                <td class="bg-dark text-light text-center" width="20%">%</td>
                                                <td class="bg-dark text-light text-center" width="20%">Jumlah</td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light text-dark text-center align-middle">
                                                    Komponen SDA
                                                </td>
                                                <td class="bg-light text-dark text-center">
                                                    <?php
                                                    if (isset($tagihan['kualitas'])) {
                                                        echo $tagihan['kualitas'];
                                                    } else {
                                                        echo '-';
                                                    }
                                                    ?>
                                                </td>
                                                <td class="bg-light text-dark text-center">
                                                    <?php
                                                    if (isset($tagihan['persentasi_sda'])) {
                                                        echo $tagihan['persentasi_sda'];
                                                    } else {
                                                        echo '-';
                                                    }
                                                    ?>
                                                </td>
                                                <td class="bg-light text-dark text-center">
                                                    <?php
                                                    if (isset($tagihan['kualitas'])) {
                                                        $jml4A = $tagihan['kualitas'] * $tagihan['persentasi_sda'];
                                                        echo $jml4A;
                                                    } else {
                                                        echo '-';
                                                    }
                                                    ?>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light text-dark text-center align-middle">
                                                    Komponen Kompensasi
                                                </td>
                                                <td class="bg-light text-dark text-center">
                                                    <?php
                                                    if (isset($nilai4)) {
                                                        echo $nilai4;
                                                    } else {
                                                        echo '-';
                                                    }
                                                    ?>
                                                </td>
                                                <td class="bg-light text-dark text-center">
                                                    <?php
                                                    if (isset($tagihan['persentasi_kompensasi'])) {
                                                        echo $tagihan['persentasi_kompensasi'];
                                                    } else {
                                                        echo '-';
                                                    }
                                                    ?>
                                                </td>
                                                <td class="bg-light text-dark text-center">
                                                    <?php
                                                    if (isset($nilai4)) {
                                                        $jml4B = $nilai4 * $tagihan['persentasi_kompensasi'];
                                                        echo $jml4B;
                                                    } else {
                                                        echo '-';
                                                    }
                                                    ?>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th colspan="3" class="bg-light text-dark text-center align-middle">
                                                    Jumlah
                                                    </tthd>
                                                <th class="text-center">
                                                    <?php
                                                    $fna4 = $jml4A + $jml4B;
                                                    echo $fna4;
                                                    ?>
                                                </th>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <!-- end table  -->





                                    <!-- start table  -->
                                    <table class="table table-bordered mb-3">
                                        <tbody class="bg-light text-dark">
                                            <tr>
                                                <td rowspan="5" class="align-middle text-center" width="20%">
                                                    Vol >2500 M³
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="bg-dark text-light text-cente" width="20%">Jenis Komponen</td>
                                                <td class="bg-dark text-light text-center" width="20%">Bobot</td>
                                                <td class="bg-dark text-light text-center" width="20%">%</td>
                                                <td class="bg-dark text-light text-center" width="20%">Jumlah</td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light text-dark text-center align-middle">
                                                    Komponen SDA
                                                </td>
                                                <td class="bg-light text-dark text-center">
                                                    <?php
                                                    if (isset($tagihan['kualitas'])) {
                                                        echo $tagihan['kualitas'];
                                                    } else {
                                                        echo '-';
                                                    }
                                                    ?>
                                                </td>
                                                <td class="bg-light text-dark text-center">
                                                    <?php
                                                    if (isset($tagihan['persentasi_sda'])) {
                                                        echo $tagihan['persentasi_sda'];
                                                    } else {
                                                        echo '-';
                                                    }
                                                    ?>
                                                </td>
                                                <td class="bg-light text-dark text-center">
                                                    <?php
                                                    if (isset($tagihan['kualitas'])) {
                                                        $jml5A = $tagihan['kualitas'] * $tagihan['persentasi_sda'];
                                                        echo $jml5A;
                                                    } else {
                                                        echo '-';
                                                    }
                                                    ?>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="bg-light text-dark text-center align-middle">
                                                    Komponen Kompensasi
                                                </td>
                                                <td class="bg-light text-dark text-center">
                                                    <?php
                                                    if (isset($nilai5)) {
                                                        echo $nilai5;
                                                    } else {
                                                        echo '-';
                                                    }
                                                    ?>
                                                </td>
                                                <td class="bg-light text-dark text-center">
                                                    <?php
                                                    if (isset($tagihan['persentasi_kompensasi'])) {
                                                        echo $tagihan['persentasi_kompensasi'];
                                                    } else {
                                                        echo '-';
                                                    }
                                                    ?>
                                                </td>
                                                <td class="bg-light text-dark text-center">
                                                    <?php
                                                    if (isset($nilai5)) {
                                                        $jml5B = $nilai5 * $tagihan['persentasi_kompensasi'];
                                                        echo $jml5B;
                                                    } else {
                                                        echo '-';
                                                    }
                                                    ?>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th colspan="3" class="bg-light text-dark text-center align-middle">
                                                    Jumlah
                                                </th>
                                                <th class="text-center">
                                                    <?php
                                                    $fna5 = $jml5A + $jml5B;
                                                    echo $fna5;
                                                    ?>
                                                </th>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <!-- end table  -->
                                </div> <!-- end fna -->
                            
                            </div> <!-- end card body  -->
                        </div> <!-- end card  -->

                    </div> <!-- end col -->

                </div>
                <!-- end row -->



















        </div> <!-- container -->

    </div> <!-- content -->

</div>