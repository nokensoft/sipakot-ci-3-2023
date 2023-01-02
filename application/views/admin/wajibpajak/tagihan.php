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
                                            <!-- <li class="breadcrumb-item"><a href="<?= base_url() ?>admin/wajibpajak/id">Mega Waena Departmenet Store</a></li> -->
                                            <li class="breadcrumb-item active">Tagihan</li>
                                        </ol>
                                    </div>
                                    <h4 class="page-title">Tagihan</span></h4>

                                    <?= $this->session->userdata('message') ?>
                                </div>
                            </div>
                        </div>
                        <!-- end page title -->

















                        <!-- start row  -->
                        <div class="row">

                            <div class="col-lg-4 col-md-4">
                                <div class="card-box">


                                        <ul class="list-group">

                                            <li class="list-group-item bg-dark">
                                                <h1 class="m-0 font-weight-bold text-white"><?= $wp['nama_usaha'] ?></h1>
                                            </li>

                                            <li class="list-group-item text-center">
                                                <img src="<?= base_url() ?>assets/images/gambar_wp/<?= $wp['foto'] ?>" alt="contact-img" title="contact-img" class="img-thumbnail" width="200px" />
                                            </li>

                                            <li class="list-group-item">
                                                <label>Pemilik Usaha : </label> <br>
                                                <strong style="font-weight:bold"><?= $wp['nama_pemilik'] ?></strong>
                                            </li>

                                            <li class="list-group-item">
                                                <label>Nama Usaha : </label> <br>
                                                <strong style="font-weight:bold"><?= $wp['nama_usaha'] ?></strong>
                                            </li>

                                            <li class="list-group-item">
                                                <label>Kategori Usaha : </label> <br>
                                                <?php
                                                // query komponen usaha
                                                $queryKomponenUsaha = $this->db->query("SELECT * FROM pajak_kk WHERE id = " . $wp['kategori_usaha']);
                                                $rowKomponenUsaha = $queryKomponenUsaha->row_array();
                                                ?>
                                                <strong style="font-weight:bold"><?= $rowKomponenUsaha['kriteria'] ?></strong>
                                            </li>

                                            <li class="list-group-item">
                                                <label>Alamat : </label> <br>
                                                <strong style="font-weight:bold"><?= $wp['alamat'] ?></strong>
                                            </li>

                                            <li class="list-group-item">
                                                <label>Nomor Telepon : </label> <br>
                                                <strong style="font-weight:bold"><?= $wp['no_tlp'] ?></strong>
                                            </li>

                                            <li class="list-group-item">
                                                <label>Email : </label> <br>
                                                <strong style="font-weight:bold"><?= $wp['email'] ?></strong>
                                            </li>

                                        </ul>


                                </div>
                            </div> <!-- end col -->


                            <div class="col-lg-8 col-md-8">
                                <div class="card-box">

                                    
                                    <div class="dropdown mb-3">
                                        <a class="btn btn-lg btn-success dropdown-toggle" href="https://example.com" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            <?=$_GET['t']?> <i class="mdi mdi-chevron-down"></i>
                                        </a>

                                        <div class="dropdown-menu dropdown-menu-left" aria-labelledby="dropdownMenuLink" style="">
                                            <a class="dropdown-item" href="<?=$this->uri->segment(4)?>?t=2017"><i class="mdi mdi-book mr-1"></i>2017</a>
                                            <a class="dropdown-item" href="<?=$this->uri->segment(4)?>?t=2018"><i class="mdi mdi-book mr-1"></i>2018</a>
                                            <a class="dropdown-item" href="<?=$this->uri->segment(4)?>?t=2019"><i class="mdi mdi-book mr-1"></i>2019</a>
                                            <a class="dropdown-item" href="<?=$this->uri->segment(4)?>?t=2020"><i class="mdi mdi-book mr-1"></i>2020</a>
                                            <a class="dropdown-item" href="<?=$this->uri->segment(4)?>?t=2021"><i class="mdi mdi-book mr-1"></i>2021</a>
                                            <a class="dropdown-item" href="<?=$this->uri->segment(4)?>?t=2022"><i class="mdi mdi-book mr-1"></i>2022</a>
                                            <a class="dropdown-item" href="<?=$this->uri->segment(4)?>?t=2023"><i class="mdi mdi-book mr-1"></i>2023</a>
                                        </div>
                                    </div>



                                    <ul class="list-group">
                                        <?php foreach ($bulan as $b) : ?>

                                            <?php

                                            // query buat tagihan
                                            $queryBuatTagihan = $this->db->query("SELECT * FROM tagihan WHERE id_wp = '" . $this->uri->segment(4) . "' AND id_bulan = " . $b['id'] . "");
                                            $row = $queryBuatTagihan->row_array();

                                            if (isset($row)) :
                                                $buatTagihan = '1';
                                                // echo "ADA DATA <br>";
                                                // echo $row['status'];


                                                // query status aktif
                                                $queryStatusAktif = $this->db->query("SELECT * FROM tagihan WHERE id_wp = '" . $this->uri->segment(4) . "' AND id_bulan = " . $b['id']);
                                                $rowStatusAktif = $queryStatusAktif->row_array();

                                                if (isset($row['status']) && $row['status'] == '0') :                                                    // echo '<a href="#">Tidak Aktif</a>';
                                                    $statusAktif = 0;
                                                elseif (isset($row['status']) && $row['status'] == '1') :
                                                    // echo '<a href="#">Aktif</a>';
                                                    $statusAktif = 1;
                                                endif;
                                            else :
                                                $buatTagihan = '0';
                                            // echo "TIDAK ADA DATA <br>";
                                            endif;



                                            // query aktif / tidak atif
                                            $queryAktif = $this->db->query("SELECT * FROM tagihan WHERE id_wp = '" . $this->uri->segment(4) . "' AND id_bulan = " . $b['id']);
                                            $rowStatus = $queryAktif->row_array();

                                            if (isset($rowStatus)) {
                                                $aktifTagihan = '1';
                                            } else {
                                                $aktifTagihan = '0';
                                            }
                                            ?>


                                            <!-- start .list  -->
                                            <li class="list-group-item"><i class="mdi mdi-book mr-1"></i> <?= $b['bulan'] ?>
                                                <div class="float-right">

                                                    <?php if ($buatTagihan == 1) { ?>

                                                        <?php if ($statusAktif == 1) { ?>

                                                            <a href="<?= base_url('C_tagihan/prosesubah_status_tagihan/') .  $rowStatus['id'] ?>?s=0&wp=<?= $this->uri->segment(4) ?>" class="btn btn-sm btn-success" title="Aktif"><i class="fas fa-check-circle"></i> Aktif</a>

                                                        <?php } elseif ($statusAktif == 0) { ?>

                                                            <a href="<?= base_url('C_tagihan/prosesubah_status_tagihan/') .  $rowStatus['id'] ?>?s=1&wp=<?= $this->uri->segment(4) ?>" class="btn btn-sm btn-dark" title="Tidak Aktif"><i class="fas fa-times-circle"></i> Tidak Aktif</a>

                                                        <?php } ?>

                                                        <a href="<?= base_url('C_tagihan/hapus/') .  $rowStatus['id'] ?>?wp=<?= $this->uri->segment(4) ?>" class="btn btn-sm btn-danger" title="Hapus"><i class="fas fa-times-circle"></i> Hapus</a>
                                                        <a href="<?= base_url('admin/wajibpajak/tagihan/sunting/') . $this->uri->segment(4) . '?b='.$b['id'].'&t='.date('Y')?>" class="btn btn-sm btn-dark bg-warning text-dark"><i class="mdi mdi-pencil"></i> Sunting Tagihan</a>
                                                        <a href="#" data-toggle="modal" data-target="#ubah-tagihan-<?= $b['id'] ?>" class="btn btn-sm btn-dark bg-warning text-dark"><i class="mdi mdi-pencil"></i></a>
                                                        <a href="#" data-toggle="modal" data-target="#perhitungan-tagihan-<?= $b['id'] ?>" class="btn btn-sm btn-dark bg-warning text-dark"><i class="mdi mdi-pencil-circle"></i></a>
                                                        <a href="#" data-toggle="modal" data-target="#bukti-tagihan-<?= $b['id'] ?>" class="btn btn-sm btn-dark bg-dark text-light"><i class="mdi mdi-eye"></i></a>









                                                        <!--  Modal Ubah Tagihan-->
                                                        <div class="modal fade" id="perhitungan-tagihan-<?= $b['id'] ?>" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                                                            <div class="modal-dialog modal-xl">
                                                                <div class="modal-content">
                                                                    <form action="">
                                                                        <div class="modal-header bg-dark">
                                                                            <h4 class="modal-title text-light" id="myLargeModalLabel">Perhitungan Faktor Nilai Air</h4>
                                                                            <button type="button" class="close text-light" data-dismiss="modal" aria-hidden="true">×</button>
                                                                        </div>
                                                                        <div class="modal-body">

                                                                            <?php
                                                                            // query komponen usaha
                                                                            $queryKomponenUsaha = $this->db->query("SELECT * FROM pajak_kk WHERE id = " . $wajib_pajak['kategori_usaha']);
                                                                            $rowKomponenUsaha = $queryKomponenUsaha->row_array();
                                                                            ?>

                                                                            <!-- <ul class="list-group mb-3">
                                                                                <li class="list-group-item">
                                                                                    Jenis Usaha : <?= $wajib_pajak['kategori_usaha'] ?>
                                                                                </li>
                                                                                <li class="list-group-item">
                                                                                    Komponen Kompensasi : <?= $rowKomponenUsaha['kriteria'] ?>
                                                                                </li>
                                                                                <li class="list-group-item">
                                                                                    0-50 m³ : <?= $rowKomponenUsaha['n1'] ?>
                                                                                </li>
                                                                                <li class="list-group-item">
                                                                                    51-500 m³ : <?= $rowKomponenUsaha['n2'] ?>
                                                                                </li>
                                                                                <li class="list-group-item">
                                                                                    501-1000 m³ : <?= $rowKomponenUsaha['n3'] ?>
                                                                                </li>
                                                                                <li class="list-group-item">
                                                                                    1001-2500 m³ : <?= $rowKomponenUsaha['n4'] ?>
                                                                                </li>
                                                                                <li class="list-group-item">
                                                                                    >2500 m³ : <?= $rowKomponenUsaha['n5'] ?>
                                                                                </li>
                                                                                <li class="list-group-item">
                                                                                    Kualitas : <?= $rowStatus['kualitas'] ?>
                                                                                </li>
                                                                                <li class="list-group-item">
                                                                                    Volume : <?= $rowStatus['volume'] ?>
                                                                                </li>
                                                                                <li class="list-group-item">
                                                                                    Harga Air Baku : Rp 25.000
                                                                                </li>
                                                                            </ul> -->






                                                                            <?php
                                                                            // query persentasi hda A
                                                                            $queryPersentasiHdaA = $this->db->query("SELECT * FROM pajak_hda WHERE kriteria = 'A'");
                                                                            $rowPersentasiHdaA = $queryPersentasiHdaA->row_array();
                                                                            ?>



                                                                            <?php
                                                                            // query persentasi hda B
                                                                            $queryPersentasiHdaB = $this->db->query("SELECT * FROM pajak_hda WHERE kriteria = 'B'");
                                                                            $rowPersentasiHdaB = $queryPersentasiHdaB->row_array();
                                                                            ?>


                                                                            <!-- ==========================================
                                                                                START 0 - 50
                                                                                ========================================== -->


                                                                            <table class="table table-bordered mb-3">
                                                                                <tbody class="bg-light text-dark">
                                                                                    <tr>
                                                                                        <td class="bg-dark text-light text-center align-middle" rowspan="4" width="20%">0-50 m³</td>
                                                                                        <td class="bg-dark text-light text-center">Jenis Komponen</td>
                                                                                        <td class="bg-dark text-light text-center">Bobot</td>
                                                                                        <td class="bg-dark text-light text-center">%</td>
                                                                                        <td class="bg-dark text-light text-center">Jumlah</td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td>Komponen SDA</td>
                                                                                        <td class="text-center"><?= $rowStatus['kualitas'] ?></td>
                                                                                        <td class="text-center"><?= $rowPersentasiHdaA['persentasi'] ?></td>
                                                                                        <?php
                                                                                        $times_1A = $rowStatus['kualitas'] * $rowPersentasiHdaA['persentasi'];
                                                                                        ?>
                                                                                        <td class="text-center"><?= $times_1A ?></td>


                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td>Komponen KOMPENSASI</td>
                                                                                        <td class="text-center"><?= $rowKomponenUsaha['n1'] ?></td>
                                                                                        <td class="text-center"><?= $rowPersentasiHdaB['persentasi'] ?></td>
                                                                                        <?php
                                                                                        $times_1B = $rowKomponenUsaha['n1'] * $rowPersentasiHdaB['persentasi'];
                                                                                        ?>
                                                                                        <td class="text-center"><?= $times_1B ?></td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td class="font-weight-bold">Jumlah</td>
                                                                                        <td class="text-center font-weight-bold"></td>
                                                                                        <td class="text-center font-weight-bold"></td>
                                                                                        <?php
                                                                                        $jml1 = $times_1A + $times_1B;
                                                                                        ?>
                                                                                        <td class="text-center font-weight-bold"><?= $jml1 ?></td>
                                                                                    </tr>
                                                                                </tbody>
                                                                            </table>


                                                                            <!-- ==========================================
                                                                                END 0 - 50
                                                                                ========================================== -->









                                                                            <!-- ==========================================
                                                                                START 51-500 m³ 
                                                                                ========================================== -->


                                                                            <table class="table table-bordered mb-3">
                                                                                <tbody class="bg-light text-dark">
                                                                                    <tr>
                                                                                        <td class="bg-dark text-light text-center align-middle" rowspan="4" width="20%">51-500 m³ </td>
                                                                                        <td class="bg-dark text-light text-center">Jenis Komponen</td>
                                                                                        <td class="bg-dark text-light text-center">Bobot</td>
                                                                                        <td class="bg-dark text-light text-center">%</td>
                                                                                        <td class="bg-dark text-light text-center">Jumlah</td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td>Komponen SDA</td>
                                                                                        <td class="text-center"><?= $rowStatus['kualitas'] ?></td>
                                                                                        <td class="text-center"><?= $rowPersentasiHdaA['persentasi'] ?></td>
                                                                                        <?php
                                                                                        $times_2A = $rowStatus['kualitas'] * $rowPersentasiHdaA['persentasi'];
                                                                                        ?>
                                                                                        <td class="text-center"><?= $times_2A ?></td>


                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td>Komponen KOMPENSASI</td>
                                                                                        <td class="text-center"><?= $rowKomponenUsaha['n2'] ?></td>
                                                                                        <td class="text-center"><?= $rowPersentasiHdaB['persentasi'] ?></td>
                                                                                        <?php
                                                                                        $times_2B = $rowKomponenUsaha['n2'] * $rowPersentasiHdaB['persentasi'];
                                                                                        ?>
                                                                                        <td class="text-center"><?= $times_2B ?></td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td class="font-weight-bold">Jumlah</td>
                                                                                        <td class="text-center font-weight-bold"></td>
                                                                                        <td class="text-center font-weight-bold"></td>
                                                                                        <?php
                                                                                        $jml2 = $times_2A + $times_2B;
                                                                                        ?>
                                                                                        <td class="text-center font-weight-bold"><?= $jml2 ?></td>
                                                                                    </tr>
                                                                                </tbody>
                                                                            </table>


                                                                            <!-- ==========================================
                                                                                END 51-500 m³ 
                                                                                ========================================== -->





















                                                                            <!-- ==========================================
                                                                                START 501-1000 m³
                                                                                ========================================== -->


                                                                            <table class="table table-bordered mb-3">
                                                                                <tbody class="bg-light text-dark">
                                                                                    <tr>
                                                                                        <td class="bg-dark text-light text-center align-middle" rowspan="4" width="20%">501-1000 m³ </td>
                                                                                        <td class="bg-dark text-light text-center">Jenis Komponen</td>
                                                                                        <td class="bg-dark text-light text-center">Bobot</td>
                                                                                        <td class="bg-dark text-light text-center">%</td>
                                                                                        <td class="bg-dark text-light text-center">Jumlah</td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td>Komponen SDA</td>
                                                                                        <td class="text-center"><?= $rowStatus['kualitas'] ?></td>
                                                                                        <td class="text-center"><?= $rowPersentasiHdaA['persentasi'] ?></td>
                                                                                        <?php
                                                                                        $times_3A = $rowStatus['kualitas'] * $rowPersentasiHdaA['persentasi'];
                                                                                        ?>
                                                                                        <td class="text-center"><?= $times_3A ?></td>


                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td>Komponen KOMPENSASI</td>
                                                                                        <td class="text-center"><?= $rowKomponenUsaha['n3'] ?></td>
                                                                                        <td class="text-center"><?= $rowPersentasiHdaB['persentasi'] ?></td>
                                                                                        <?php
                                                                                        $times_3B = $rowKomponenUsaha['n3'] * $rowPersentasiHdaB['persentasi'];
                                                                                        ?>
                                                                                        <td class="text-center"><?= $times_3B ?></td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td class="font-weight-bold">Jumlah</td>
                                                                                        <td class="text-center font-weight-bold"></td>
                                                                                        <td class="text-center font-weight-bold"></td>
                                                                                        <?php
                                                                                        $jml3 = $times_3A + $times_3B;
                                                                                        ?>
                                                                                        <td class="text-center font-weight-bold"><?= $jml3 ?></td>
                                                                                    </tr>
                                                                                </tbody>
                                                                            </table>


                                                                            <!-- ==========================================
                                                                                END 501-1000 m³ 
                                                                                ========================================== -->




















                                                                            <!-- ==========================================
                                                                                START 1001-2500 m³
                                                                                ========================================== -->


                                                                            <table class="table table-bordered mb-3">
                                                                                <tbody class="bg-light text-dark">
                                                                                    <tr>
                                                                                        <td class="bg-dark text-light text-center align-middle" rowspan="4" width="20%">1001-2500 m³</td>
                                                                                        <td class="bg-dark text-light text-center">Jenis Komponen</td>
                                                                                        <td class="bg-dark text-light text-center">Bobot</td>
                                                                                        <td class="bg-dark text-light text-center">%</td>
                                                                                        <td class="bg-dark text-light text-center">Jumlah</td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td>Komponen SDA</td>
                                                                                        <td class="text-center"><?= $rowStatus['kualitas'] ?></td>
                                                                                        <td class="text-center"><?= $rowPersentasiHdaA['persentasi'] ?></td>
                                                                                        <?php
                                                                                        $times_4A = $rowStatus['kualitas'] * $rowPersentasiHdaA['persentasi'];
                                                                                        ?>
                                                                                        <td class="text-center"><?= $times_4A ?></td>


                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td>Komponen KOMPENSASI</td>
                                                                                        <td class="text-center"><?= $rowKomponenUsaha['n4'] ?></td>
                                                                                        <td class="text-center"><?= $rowPersentasiHdaB['persentasi'] ?></td>
                                                                                        <?php
                                                                                        $times_4B = $rowKomponenUsaha['n4'] * $rowPersentasiHdaB['persentasi'];
                                                                                        ?>
                                                                                        <td class="text-center"><?= $times_4B ?></td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td class="font-weight-bold">Jumlah</td>
                                                                                        <td class="text-center font-weight-bold"></td>
                                                                                        <td class="text-center font-weight-bold"></td>
                                                                                        <?php
                                                                                        $jml4 = $times_4A + $times_4B;
                                                                                        ?>
                                                                                        <td class="text-center font-weight-bold"><?= $jml4 ?></td>
                                                                                    </tr>
                                                                                </tbody>
                                                                            </table>


                                                                            <!-- ==========================================
                                                                                END 1001-2500 m³
                                                                                ========================================== -->














                                                                            <!-- ==========================================
                                                                                START >2500 m³
                                                                                ========================================== -->


                                                                            <table class="table table-bordered mb-3">
                                                                                <tbody class="bg-light text-dark">
                                                                                    <tr>
                                                                                        <td class="bg-dark text-light text-center align-middle" rowspan="4" width="20%">>2500 m³</td>
                                                                                        <td class="bg-dark text-light text-center">Jenis Komponen</td>
                                                                                        <td class="bg-dark text-light text-center">Bobot</td>
                                                                                        <td class="bg-dark text-light text-center">%</td>
                                                                                        <td class="bg-dark text-light text-center">Jumlah</td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td>Komponen SDA</td>
                                                                                        <td class="text-center"><?= $rowStatus['kualitas'] ?></td>
                                                                                        <td class="text-center"><?= $rowPersentasiHdaA['persentasi'] ?></td>
                                                                                        <?php
                                                                                        $times_5A = $rowStatus['kualitas'] * $rowPersentasiHdaA['persentasi'];
                                                                                        ?>
                                                                                        <td class="text-center"><?= $times_4A ?></td>


                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td>Komponen KOMPENSASI</td>
                                                                                        <td class="text-center"><?= $rowKomponenUsaha['n5'] ?></td>
                                                                                        <td class="text-center"><?= $rowPersentasiHdaB['persentasi'] ?></td>
                                                                                        <?php
                                                                                        $times_5B = $rowKomponenUsaha['n5'] * $rowPersentasiHdaB['persentasi'];
                                                                                        ?>
                                                                                        <td class="text-center"><?= $times_5B ?></td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td class="font-weight-bold">Jumlah</td>
                                                                                        <td class="text-center font-weight-bold"></td>
                                                                                        <td class="text-center font-weight-bold"></td>
                                                                                        <?php
                                                                                        $jml5 = $times_5A + $times_5B;
                                                                                        ?>
                                                                                        <td class="text-center font-weight-bold"><?= $jml5 ?></td>
                                                                                    </tr>
                                                                                </tbody>
                                                                            </table>


                                                                            <!-- ==========================================
                                                                                END >2500 m³
                                                                                ========================================== -->


                                                                        </div>

                                                                        <div class="modal-footer bg-soft-dark">
                                                                            <div class="form-group text-right">

                                                                                <span>
                                                                                    <iframe src="<?= base_url() ?>admin/wajibpajak/tagihan/cetak" style="display:none;" name="frame"></iframe>
                                                                                    <button type="button" class="btn btn-xs btn-primary" onclick="frames['frame'].print()"><i class="fas fa-print mr-1"></i> Cetak</button>
                                                                                </span>

                                                                                <!-- <a href="<?= base_url() ?>admin/wajibpajak/tagihan/cetak" class="btn btn-sm btn-success" target="_blank"> <i class="fas fa-print mr-1"></i> Cetak </a> -->
                                                                                <a href="#" class="btn btn-sm btn-dark" data-dismiss="modal"> <i class="fas fa-times-circle mr-1"></i> Batal </a>
                                                                            </div>
                                                                        </div>

                                                                    </form>
                                                                </div><!-- /.modal-content -->
                                                            </div><!-- /.modal-dialog -->
                                                        </div><!-- /.modal -->




















                                                        <!--  Modal Ubah Tagihan-->
                                                        <div class="modal fade" id="bukti-tagihan-<?= $b['id'] ?>" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
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
                                                                                            Volume Penggunaan :
                                                                                            <?php echo volume_air($rowStatus['volume']); ?> <br>
                                                                                            Harga Baku :
                                                                                            <?php
                                                                                            $hargaBaku = 1200; // Harga baku sementara
                                                                                            echo rupiah($hargaBaku);
                                                                                            ?> <br>
                                                                                            Pajak PABT : <?= $pajak_pabt['isi'] * 100 ?>%
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td colspan="2">


                                                                                            <!-- ==========================================
                                                                                                START 0 - 50
                                                                                                ========================================== -->



                                                                                            <!-- start table  -->
                                                                                            <table class="table table-bordered">
                                                                                                <tbody class="bg-light text-dark">
                                                                                                    <tr>
                                                                                                        <td class="bg-dark text-light text-center align-middle">Volume Range</td>
                                                                                                        <td class="bg-dark text-light text-center">Volume (M³)</td>
                                                                                                        <td class="bg-dark text-light text-center">FNA</td>
                                                                                                        <td class="bg-dark text-light text-center">Harga Baku</td>
                                                                                                        <td class="bg-dark text-light text-center">Jumlah</td>
                                                                                                        <td rowspan="9" class="text-center font-weight-bold">
                                                                                                            Mengetahui, <br>
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
                                                                                                        <td class="bg-light text-dark text-center align-middle">Vol 0-50 M³</td>
                                                                                                        <td class="bg-light text-dark text-center">
                                                                                                            <?php
                                                                                                            echo $rowStatus['volume'];
                                                                                                            echo '<br>';
                                                                                                            echo '<br>';

                                                                                                            if ($rowStatus['volume'] > 50) {
                                                                                                                $volume1 = 50;
                                                                                                                $nilaiSisah1 = $rowStatus['volume'] - $volume1;
                                                                                                                echo 'Volume 1 : ' . $volume1;
                                                                                                                echo '<br>';
                                                                                                                echo 'Nilai Sisah 1 : ' . $nilaiSisah1;
                                                                                                                echo '<br>';
                                                                                                                echo '<br>';
                                                                                                            }

                                                                                                            ?>
                                                                                                        </td>
                                                                                                        <td class="bg-light text-dark text-center">
                                                                                                            <?php
                                                                                                            echo $jml1;
                                                                                                            ?>
                                                                                                        </td>
                                                                                                        <td class="bg-light text-dark text-center">
                                                                                                            <?php
                                                                                                            echo rupiah($hargaBaku);
                                                                                                            ?>
                                                                                                        </td>
                                                                                                        <td class="bg-light text-dark text-center">
                                                                                                            <?php
                                                                                                            $jmlPenagihan1 = $volume1 * $jml1 * $hargaBaku;
                                                                                                            echo rupiah($jmlPenagihan1);
                                                                                                            ?>
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                    <tr>
                                                                                                        <td class="bg-light text-dark text-center align-middle">Vol 51-500 M³</td>
                                                                                                        <td class="bg-light text-dark text-center">
                                                                                                            <?php


                                                                                                            if ($rowStatus['volume'] > 500) {
                                                                                                                $volume2 = 450;
                                                                                                                $nilaiSisah2 = $rowStatus['volume'] - ($volume2 + $volume1);
                                                                                                                echo 'Volume 2 : ' . $volume2;
                                                                                                                echo '<br>';
                                                                                                                echo 'Nilai Sisah 2 : ' . $nilaiSisah2;
                                                                                                                echo '<br>';
                                                                                                                echo '<br>';
                                                                                                            } else {
                                                                                                                if (isset($nilaiSisah1)) {
                                                                                                                    echo $volume2 = 0;
                                                                                                                }
                                                                                                            }
                                                                                                            ?>
                                                                                                        </td>
                                                                                                        <td class="bg-light text-dark text-center">
                                                                                                            <?php
                                                                                                            echo $jml2;
                                                                                                            ?>
                                                                                                        </td>
                                                                                                        <td class="bg-light text-dark text-center">
                                                                                                            <?php
                                                                                                            echo rupiah($hargaBaku);
                                                                                                            ?>
                                                                                                        </td>
                                                                                                        <td class="bg-light text-dark text-center">
                                                                                                            <?php
                                                                                                            $jmlPenagihan2 = $volume2 * $jml2 * $hargaBaku;
                                                                                                            echo rupiah($jmlPenagihan2);
                                                                                                            ?>
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                    <tr>
                                                                                                        <td class="bg-light text-dark text-center align-middle">Vol 501-1000 M³</td>
                                                                                                        <td class="bg-light text-dark text-center">
                                                                                                            <?php


                                                                                                            if ($rowStatus['volume'] > 1000) {
                                                                                                                $volume3 = 500;
                                                                                                                $nilaiSisah3 = $rowStatus['volume'] - ($volume3 + $volume2 + $volume1);
                                                                                                                echo 'Volume 3 : ' . $volume3;
                                                                                                                echo '<br>';
                                                                                                                echo 'Nilai Sisah 3 : ' . $nilaiSisah3;
                                                                                                                echo '<br>';
                                                                                                                echo '<br>';
                                                                                                            } else {
                                                                                                                if (isset($nilaiSisah2)) {
                                                                                                                    echo $volume3 = 0;
                                                                                                                }
                                                                                                            }
                                                                                                            ?>
                                                                                                        </td>
                                                                                                        <td class="bg-light text-dark text-center">
                                                                                                            <?php
                                                                                                            echo $jml3;
                                                                                                            ?>
                                                                                                        </td>
                                                                                                        <td class="bg-light text-dark text-center">
                                                                                                            <?php
                                                                                                            echo rupiah($hargaBaku);
                                                                                                            ?>
                                                                                                        </td>
                                                                                                        <td class="bg-light text-dark text-center">
                                                                                                            <?php
                                                                                                            $volumee3 = $volume3;
                                                                                                            $jmlPenagihan3 = $volumee3 * $jml3 * $hargaBaku;
                                                                                                            echo rupiah($jmlPenagihan3);
                                                                                                            ?>
                                                                                                        </td>
                                                                                                    </tr>

                                                                                                    <tr>
                                                                                                        <td class="bg-light text-dark text-center align-middle">Vol 1001-2500 M³</td>
                                                                                                        <td class="bg-light text-dark text-center">
                                                                                                            <?php



                                                                                                            if ($rowStatus['volume'] > 2500) {
                                                                                                                $volume4 = 1500;
                                                                                                                $nilaiSisah4 = $rowStatus['volume'] - ($volume4 + $volume3 + $volume2 + $volume1);
                                                                                                                echo 'Volume 4 : ' . $volume4;
                                                                                                                echo '<br>';
                                                                                                                echo 'Nilai Sisah 4 : ' . $nilaiSisah4;
                                                                                                                echo '<br>';
                                                                                                                echo '<br>';
                                                                                                            } else {
                                                                                                                if (isset($nilaiSisah3)) {
                                                                                                                    echo $volume4 = 0;
                                                                                                                }
                                                                                                            }

                                                                                                            ?>
                                                                                                        </td>
                                                                                                        <td class="bg-light text-dark text-center">
                                                                                                            <?php
                                                                                                            echo $jml4;
                                                                                                            ?>
                                                                                                        </td>
                                                                                                        <td class="bg-light text-dark text-center">
                                                                                                            <?php
                                                                                                            echo rupiah($hargaBaku);
                                                                                                            ?>
                                                                                                        </td>
                                                                                                        <td class="bg-light text-dark text-center">
                                                                                                            <?php
                                                                                                            $volumee4 = $volume4;
                                                                                                            $jmlPenagihan4 = $volumee4 * $jml4 * $hargaBaku;
                                                                                                            echo rupiah($jmlPenagihan4);
                                                                                                            ?>
                                                                                                        </td>
                                                                                                    </tr>



                                                                                                    <tr>
                                                                                                        <td class="bg-light text-dark text-center align-middle">Vol &gt;2500 M³</td>
                                                                                                        <td class="bg-light text-dark text-center">
                                                                                                            <?php



                                                                                                            if ($rowStatus['volume'] > 2500) {
                                                                                                                $volume5 = 500;
                                                                                                                $nilaiSisah5 = $rowStatus['volume'] - ($volume5 + $volume4 + $volume3 + $volume2 + $volume1);
                                                                                                                echo 'Volume 5 : ' . $volume5;
                                                                                                                echo '<br>';
                                                                                                                echo 'Nilai Sisah 5 : ' . $nilaiSisah5;
                                                                                                                echo '<br>';
                                                                                                                echo '<br>';
                                                                                                            } else {
                                                                                                                if (isset($nilaiSisah4)) {
                                                                                                                    echo $volume5 = 0;
                                                                                                                }
                                                                                                            }

                                                                                                            ?>
                                                                                                        </td>
                                                                                                        <td class="bg-light text-dark text-center">
                                                                                                            <?php
                                                                                                            echo $jml5;
                                                                                                            ?>
                                                                                                        </td>
                                                                                                        <td class="bg-light text-dark text-center">
                                                                                                            <?php
                                                                                                            echo rupiah($hargaBaku);
                                                                                                            ?>
                                                                                                        </td>
                                                                                                        <td class="bg-light text-dark text-center">
                                                                                                            <?php
                                                                                                            $volumee5 = 500;
                                                                                                            $jmlPenagihan5 = $nilaiSisah5 * $jml5 * $hargaBaku;
                                                                                                            echo rupiah($jmlPenagihan5);
                                                                                                            ?>
                                                                                                        </td>
                                                                                                    </tr>


                                                                                                    <tr>
                                                                                                        <td class="bg-soft-dark text-dark text-center align-middle"></td>
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
                                                                                                    </tr>


                                                                                                    <tr>
                                                                                                        <td class="bg-soft-dark text-dark text-center align-middle">NPA</td>
                                                                                                        <td class="bg-soft-dark text-dark text-center"></td>
                                                                                                        <td class="bg-soft-dark text-dark text-center"></td>
                                                                                                        <td class="bg-soft-dark text-dark text-center"></td>
                                                                                                        <td class="bg-soft-dark text-dark text-center">
                                                                                                            <?php
                                                                                                            $totalNPA = $jmlPenagihan1 + $jmlPenagihan2 + $jmlPenagihan3 + $jmlPenagihan4 + $jmlPenagihan5;
                                                                                                            echo rupiah($totalNPA);
                                                                                                            ?>
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                    <tr>
                                                                                                        <td class="bg-soft-dark text-dark text-center align-middle">PAJAK PABT</td>
                                                                                                        <td class="bg-soft-dark text-dark text-center"></td>
                                                                                                        <td class="bg-soft-dark text-dark text-center"></td>
                                                                                                        <td class="bg-soft-dark text-dark text-center"><?= $pajak_pabt['isi'] * 100 ?>%</td>
                                                                                                        <td class="bg-soft-dark text-dark text-center">
                                                                                                            <?php
                                                                                                            $pajakPABT = $pajak_pabt['isi'];
                                                                                                            $totalPajakPABT = $pajakPABT * $totalNPA;
                                                                                                            echo rupiah($totalPajakPABT);
                                                                                                            ?>
                                                                                                        </td>
                                                                                                    </tr>


                                                                                                </tbody>
                                                                                            </table>
                                                                                            <!-- end table  -->

                                                            

                                                                                            <!-- ==========================================
                                                                                                END 0 - 50
                                                                                                ========================================== -->



                                                                                        </td>
                                                                                    </tr>
                                                                                </tbody>
                                                                            </table>




                                                                        </div>

                                                                        <div class="modal-footer bg-soft-dark">
                                                                            <div class="form-group text-right">

                                                                                <span>
                                                                                    <iframe src="<?= base_url() ?>admin/wajibpajak/tagihan/cetak/?t=<?=$rowStatus['id']?>&b=<?=$rowStatus['id_bulan']?>" style="display:none;" name="frame"></iframe>
                                                                                    <input type="text" value="<?=$rowStatus['id']?>&b=<?=$rowStatus['id_bulan']?>">
                                                                                    <button type="button" class="btn btn-xs btn-primary" onclick="frames['frame'].print()"><i class="fas fa-print mr-1"></i> Cetak</button>
                                                                                </span>

                                                                                <!-- <a href="<?= base_url() ?>admin/wajibpajak/tagihan/cetak" class="btn btn-sm btn-success" target="_blank"> <i class="fas fa-print mr-1"></i> Cetak </a> -->
                                                                                <a href="#" class="btn btn-sm btn-dark" data-dismiss="modal"> <i class="fas fa-times-circle mr-1"></i> Batal </a>
                                                                            </div>
                                                                        </div>

                                                                    </form>
                                                                </div><!-- /.modal-content -->
                                                            </div><!-- /.modal-dialog -->
                                                        </div><!-- /.modal -->
























                                                        <!--  Modal Ubah Tagihan-->
                                                        <div class="modal fade" id="ubah-tagihan-<?= $b['id'] ?>" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                                                            <div class="modal-dialog modal-lg">
                                                                <div class="modal-content">
                                                                    <?= form_open_multipart('C_tagihan/prosesubah_tagihan'); ?>
                                                                    <input type="hidden" value="<?= $rowStatus['id'] ?>" name="id">
                                                                    <input type="hidden" value="<?= $rowStatus['id_wp'] ?>" name="id_wp">
                                                                    <div class="modal-header <?php if ($rowStatus['status'] == '1') {
                                                                                                    echo 'bg-success';
                                                                                                } else {
                                                                                                    echo 'bg-dark';
                                                                                                } ?>">
                                                                        <h2 class="modal-title text-light" id="myLargeModalLabel">Data Bulan <strong><?= $b['bulan'] ?></strong></h2>
                                                                        <button type="button" class="close text-light" data-dismiss="modal" aria-hidden="true">×</button>
                                                                    </div>
                                                                    <div class="modal-body">


                                                                        <div class="row">

                                                                            <div class="col-md-12">
                                                                                <h4 class="header-title">Air Tanah</h4>
                                                                                <p class="sub-header">Kualitas air tanah dan volume dalam hitunga liter.</p>
                                                                            </div>

                                                                            <div class="col-md-6">
                                                                                <div class="form-group mb-3">
                                                                                    <label for="kualitas">Kualitas Air Tanah</label>
                                                                                    <select class="form-control" id="example-select" name="kualitas">
                                                                                            <option></option>
                                                                                            <?php foreach ($komponen_sda as $ksda) : ?>
                                                                                            <option value="<?php echo $ksda['bobot'] ?>" <?php if ($ksda['bobot'] == $rowStatus['kualitas']) {  echo 'Selected'; } ?>><?php echo $ksda['kriteria'] ?></option>
                                                                                            <?php endforeach; ?>
                                                                                    </select>
                                                                                </div>

                                                                                <div class="form-group mb-3">
                                                                                    <label for="jenis_pipa">Jenis Pipa Air Tanah</label>
                                                                                    <input type="text" class="form-control" id="jenis_pipa" placeholder="Jenis Pipa" value="<?= $rowStatus['jenis_pipa'] ?>" name="jenis_pipa" required="">
                                                                                    <div class="valid-feedback">
                                                                                        Looks good!
                                                                                    </div>
                                                                                </div>

                                                                                <div class="form-group mb-3">
                                                                                    <label for="diameter">Diameter Pipa Air Tanah</label>
                                                                                    <input type="text" class="form-control" id="diameter" placeholder="Diameter" value="<?= $rowStatus['diameter'] ?>" name="diameter" required="">
                                                                                    <div class="valid-feedback">
                                                                                        Looks good!
                                                                                    </div>
                                                                                </div>

                                                                                <div class="form-group mb-3">
                                                                                    <label for="volume">Volume Air Tanah (Liter)</label>
                                                                                    <input type="text" class="form-control" id="validationCustom02" placeholder="volume" value="<?= $rowStatus['volume'] ?>" name="volume" required="">
                                                                                    <div class="valid-feedback">
                                                                                        Looks good!
                                                                                    </div>
                                                                                </div>
                                                                            </div>


                                                                            <div class="col-md-6">
                                                                                <div class="form-group mb-3">
                                                                                    <label for="validationCustom02">Bukti Meteran Air Tanah</label>
                                                                                    <input type="file" class="form-control-file" id="validationCustom02" placeholder="Last name" value="300">
                                                                                    <img src="<?= base_url() ?>meteran/meteran.jpg" class="img img-thumbnail mt-3    " width="200" alt="">
                                                                                    <div class="valid-feedback">
                                                                                        Looks good!
                                                                                    </div>
                                                                                </div>
                                                                            </div>

                                                                        </div>
                                                                        <!-- end .row-->

                                                                        <div class="row">

                                                                            <div class="col-md-12">
                                                                                <h4 class="header-title">Penampung</h4>
                                                                                <p class="sub-header">Tandon atau bak penampung yang tersedia</p>
                                                                            </div>
                                                                            <!-- end .col -->

                                                                            <div class="col-md-6">
                                                                                <div class="form-group mb-3">
                                                                                    <label for="jml_penampung">Jumlah Penampung</label>
                                                                                    <input type="text" class="form-control" id="jml_penampung" placeholder="Jumlah Penampung" value="<?= $rowStatus['jml_penampung'] ?>" name="jml_penampung" required="">
                                                                                    <div class="valid-feedback">
                                                                                        Looks good!
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <!-- end .col -->

                                                                            <div class="col-md-6">
                                                                                <div class="form-group mb-3">
                                                                                    <label for="kapasitas_penampung">Kapasitas Keseluruhan (Liter)</label>
                                                                                    <input type="text" class="form-control" id="kapasitas_penampung" placeholder="Kapasitas Penampung" value="<?= $rowStatus['kapasitas_penampung'] ?>" name="kapasitas_penampung" required="">
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
                                                                                    <label for="jml_sumur">Jumlah Sumur</label>
                                                                                    <input type="text" class="form-control" id="jml_sumur" placeholder="Jumlah sumur" value="<?= $rowStatus['jml_sumur'] ?>" name="jml_sumur" required="">
                                                                                </div>
                                                                            </div>
                                                                            <!-- end .col -->

                                                                            <div class="col-md-6">
                                                                                <div class="form-group mb-3">
                                                                                    <label for="kualitas_sumur">Kualitas Air Sumur</label>
                                                                                    <select class="form-control" id="kualitas_sumur" name="kualitas_sumur">
                                                                                        <option <?php if ($rowStatus['kualitas_sumur'] == '') {
                                                                                                    echo 'Selected';
                                                                                                } ?>></option>
                                                                                        <option value="Baik" <?php if ($rowStatus['kualitas_sumur'] == 'Baik') {
                                                                                                                    echo 'Selected';
                                                                                                                } ?>>Baik</option>
                                                                                        <option value="Buruk" <?php if ($rowStatus['kualitas_sumur'] == 'Buruk') {
                                                                                                                    echo 'Selected';
                                                                                                                } ?>>Buruk</option>
                                                                                    </select>
                                                                                </div>
                                                                            </div>
                                                                            <!-- end .col -->
                                                                        </div>
                                                                        <!-- end .row -->


                                                                    </div>

                                                                    <div class="modal-footer">
                                                                        <div class="form-group text-right">
                                                                            <button type="submit" class="btn btn-sm btn-success"> <i class="fas fa-save mr-1"></i> Simpan </button>
                                                                            <a href="#" class="btn btn-sm btn-dark" data-dismiss="modal"> <i class="fas fa-times-circle mr-1"></i> Batal </a>
                                                                        </div>
                                                                    </div>

                                                                    <?= form_close() ?>
                                                                </div><!-- /.modal-content -->
                                                            </div><!-- /.modal-dialog -->
                                                        </div><!-- /.modal -->






                                                    <?php } else { ?>

                                                        <a href="<?= base_url('C_tagihan/prosesbuat_tagihan/') . "?b=" . $b['id'] ?>&s=0&wp=<?= $this->uri->segment(4) ?>" class="btn btn-sm btn-primary" title="Tidak Aktif"><i class="fas fa-bookmark mr-1"></i> Buat Tagihan</a>

                                                    <?php } ?>




                                                    <!-- <a href="#" data-toggle="modal" data-target="#terbitkan-tagihan" class="btn btn-sm btn-success" title="Cetak Tagihan"><i class="mdi mdi-eye"></i> Tagihan</a> -->
                                                </div>









































                                            </li>
                                            <!-- end .list  -->

                                        <?php endforeach; ?>

                                    </ul>

                                </div>
                            </div> <!-- end col -->

                        </div>
                        <!-- end row -->













                    </div> <!-- container -->

                </div> <!-- content -->