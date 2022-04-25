

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
                                            <li class="breadcrumb-item"><a href="<?=base_url('admin')?>">Admin</a></li>
                                            <li class="breadcrumb-item active">Dasbor</li>
                                        </ol>
                                    </div>
                                    <h4 class="page-title">Dasbor</h4>
                                </div>
                            </div>
                        </div>     
                        <!-- end page title --> 

                        <div class="row">
                            <div class="col-lg-6 col-xl-3">
                                <div class="card-box bg-pattern">
                                    <div class="row">
                                        <div class="col-6">
                                            <div class="avatar-md bg-blue rounded">
                                                <i class="fe-layers avatar-title font-22 text-white"></i>
                                            </div>
                                        </div>
                                        <div class="col-6">
                                            <div class="text-right">
                                                <h3 class="text-dark my-1"><span data-plugin=""><?php echo rupiah($dasbor_info_harga_baku['isi'])?></span></h3>
                                                <p class="text-muted mb-0 text-truncate">Harga Baku</p>
                                            </div>
                                        </div>
                                    </div>
                                </div> <!-- end card-box-->
                            </div> <!-- end col -->

                            <div class="col-lg-6 col-xl-3">
                                <div class="card-box bg-pattern">
                                    <div class="row">
                                        <div class="col-6">
                                            <div class="avatar-md bg-success rounded">
                                                <i class="fe-award avatar-title font-22 text-white"></i>
                                            </div>
                                        </div>
                                        <div class="col-6">
                                            <div class="text-right">
                                                <h3 class="text-dark my-1"><span data-plugin=""><?=$dasbor_info_persentasi_pabt['isi']*100?>%</span></h3>
                                                <p class="text-muted mb-0 text-truncate">Persentasi PABT</p>
                                            </div>
                                        </div>
                                    </div>
                                </div> <!-- end card-box-->
                            </div> <!-- end col -->
                            <div class="col-lg-6 col-xl-3">
                                <div class="card-box bg-pattern">
                                    <div class="row">
                                        <div class="col-6">
                                            <div class="avatar-md bg-danger rounded">
                                                <i class="fe-award avatar-title font-22 text-white"></i>
                                            </div>
                                        </div>
                                        <div class="col-6">
                                            <div class="text-right">
                                                <h3 class="text-dark my-1"><span data-plugin=""><?=$dasbor_info_persentasi_sda['persentasi']*100?>%</span></h3>
                                                <p class="text-muted mb-0 text-truncate">Persentasi SDA</p>
                                            </div>
                                        </div>
                                    </div>
                                </div> <!-- end card-box-->
                            </div> <!-- end col -->
                            <div class="col-lg-6 col-xl-3">
                                <div class="card-box bg-pattern">
                                    <div class="row">
                                        <div class="col-6">
                                            <div class="avatar-md bg-warning rounded">
                                                <i class="fe-award avatar-title font-22 text-white"></i>
                                            </div>
                                        </div>
                                        <div class="col-6">
                                            <div class="text-right">
                                                <h3 class="text-dark my-1"><span data-plugin=""><?=$dasbor_info_persentasi_kompensasi['persentasi']*100?>%</span></h3>
                                                <p class="text-muted mb-0 text-truncate">Persentasi Kompensasi</p>
                                            </div>
                                        </div>
                                    </div>
                                </div> <!-- end card-box-->
                            </div> <!-- end col -->

                            <div class="col-12 mb-3">
                                <hr>
                            </div>

                        </div>
                        <!-- end row-->


                        <!-- start row  -->
                        <div class="row">
                            <!-- start col  -->
                            <div class="col-lg-6 col-xl-6">
                                
                                <div class="card">
                                    <div class="card-header bg-dark">
                                        <h4 class="text-light">Wajib Pajak <sup class="badge badge-warning text-dark">Baru</sup></h4>
                                    </div>
                                    <div class="card-body">
                                        <table class="table">
                                            <thead>
                                                <tr>
                                                    <th class="font-weight-bold">No</th>
                                                    <th class="font-weight-bold">Nama Usaha</th>
                                                    <th class="font-weight-bold">Alamat Usaha</th>
                                                    <th class="font-weight-bold">Pemilik Usaha</th>
                                                    <th class="font-weight-bold"></th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <?php $no=1; foreach ($dasbor_info_wajib_pajak_baru as $wajib_pajak_baru) : ?>
                                                <tr>
                                                    <td><?=$no?></td>
                                                    <td><?=$wajib_pajak_baru['usaha_nama']?></td>
                                                    <td><?=$wajib_pajak_baru['usaha_alamat']?></td>
                                                    <td><?=$wajib_pajak_baru['pemilik_nama']?></td>
                                                    <td>
                                                        <a target="_blank" href="<?= base_url('pelaksana/wajibpajak/detail/') ?><?= $wajib_pajak_baru['id_wp']; ?>" class="btn btn-success btn-xs waves-effect waves-light" data-plugin="tippy" data-tippy-placement="top-start" title="Detail"><i class="fas fa-eye"></i> </a>
                                                    </td>
                                                </tr>
                                                <?php $no++; endforeach; ?>
                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="card-footer">
                                        <a href="<?=base_url('pelaksana/wajibpajak')?>" class="btn btn-secondary btn-xs text-light waves-effect waves-light" data-plugin="tippy" data-tippy-placement="top-start" title="Semua Wajib Pajak"><i class="fas fa-book-open"></i> Semua</a>
                                    </div>
                                </div>

                            </div>
                            <!-- end col  -->
                            
                            <!-- start col  -->
                            <div class="col-lg-6 col-xl-6">
                                
                                <div class="card">
                                    <div class="card-header bg-dark">
                                        <h4 class="text-light">Tagihan <sup class="badge badge-warning text-dark">Baru</sup></h4>
                                    </div>
                                    <div class="card-body">
                                        <table id="basic-datatable" class="table table-striped dt-responsive nowrap w-100">
                                            <thead>
                                                <tr>
                                                    <th class="font-weight-bold">No</th>
                                                    <th class="font-weight-bold">Bulan, Tahun</th>
                                                    <!-- <th class="font-weight-bold">Nama Usaha</th> -->
                                                    <th class="font-weight-bold">Komponen Sumber Daya Alam (SDA)</th>
                                                    <th class="font-weight-bold">Volume</th>
                                                    <!-- <th class="font-weight-bold">Alamat Usaha</th> -->
                                                    <th class="font-weight-bold"></th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <?php $no=1; foreach ($dasbor_info_tagihan_baru as $tagihan_baru) : ?>
                                                <tr>
                                                    <td><?=$no?></td>
                                                    <td>
                                                        <?php
                                                            // query bulan
                                                            $queryBulan = $this->db->query("SELECT * FROM bulan WHERE id = " . $tagihan_baru['id_bulan']);
                                                            $rowBulan = $queryBulan->row_array();
                                                        ?>
                                                        <?=$rowBulan['bulan']?>, <?=$tagihan_baru['tahun']?>
                                                    </td>
                                                    <td>
                                                        <?php 
                                                            // query bulan
                                                            $queryKomponenSDA = $this->db->query("SELECT * FROM pajak_ksda WHERE bobot = " . $tagihan_baru['kualitas'] );
                                                            $rowKomponenSDA = $queryKomponenSDA->row_array();
                                                        // rowWajibPajak['usaha_nama']?>
                                                        <?=$rowKomponenSDA['kriteria']?>
                                                    </td>
                                                    <!-- <td>
                                                        <?php 
                                                            // // query wajib pajak
                                                            // $id_wp = $tagihan_baru['id_wp'];
                                                            // $queryWajibPajak = $this->db->query("SELECT * FROM wajib_pajak WHERE id_wp = " . $id_wp );
                                                            // $rowWajibPajak = $queryWajibPajak->row_array();
                                                        // rowWajibPajak['usaha_nama']?>
                                                    </td> -->
                                                    <td><?=volume_air($tagihan_baru['volume'])?></td>
                                                    <!-- <td><?=$rowWajibPajak['usaha_alamat']?></td> -->
                                                    <td>
                                                        <a target="_blank" href="<?= base_url('pelaksana/wajibpajak/tagihan/new/') ?><?= $tagihan_baru['id_wp']; ?>?t=<?=date('Y')?>" class="btn btn-success btn-xs waves-effect waves-light" data-plugin="tippy" data-tippy-placement="top-start" title="Tagihan"><i class="mdi mdi-animation-outline"></i> </a>
                                                    </td>
                                                </tr>
                                                <?php $no++; endforeach; ?>
                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="card-footer">
                                        <a href="<?=base_url('pelaksana/wajibpajak')?>" class="btn btn-secondary btn-xs text-light waves-effect waves-light" data-plugin="tippy" data-tippy-placement="top-start" title="Semua Wajib Pajak"><i class="fas fa-book-open"></i> Semua</a>
                                    </div>
                                </div>

                            </div>
                            <!-- end col  -->

                        </div>
                        <!-- end row  -->
                        
                    </div> <!-- container -->

                </div> <!-- content -->    
            
            
            
            
            
        