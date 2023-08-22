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
                                            <li class="breadcrumb-item"><a href="<?=base_url('admin/dasbor')?>">Dasbor</a></li>
                                            <li class="breadcrumb-item"><a href="<?=base_url('admin/wajibpajak/')?>">Wajib Pajak</a></li>
                                            <li class="breadcrumb-item active">PABT</li>
                                        </ol>
                                    </div>
                                    <h4 class="page-title">Pajak Air Bawah Tanah</span></h4>
                                </div>
                            </div>
                        </div>
                        <!-- end page title -->

                        

                        <!-- start .row  -->
                        <div class="row">
                            <div class="col-12">
                                <?= $this->session->userdata('message') ?>
                                <div class="card">
                                    <div class="card-body">
                                    <div class="row mb-3">
                                            <div class="col-md-12">
                                                <div class="d-flex justify-content-between">
                                                    <div class="">
                                                        <div class="btn-group">                                                            
                                                                <button class="btn btn-secondary bg-secondary text-white btn-lg dropdown-toggle waves-effect waves-light ml-2" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true" data-plugin="tippy" data-tippy-placement="top-start" title="Rekapan">
                                                                <span class="btn-label"><i class="mdi mdi-paperclip"></i></span><?=$tahun?></button>
                                                                <div class="dropdown-menu ml-2" style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, 44px, 0px);" x-placement="bottom-start">
                                                                    <a class="dropdown-item" href="<?= base_url('admin/wajibpajak/pabt/2019')?>">2019</a>
                                                                    <a class="dropdown-item" href="<?= base_url('admin/wajibpajak/pabt/2020')?>">2020</a>
                                                                    <a class="dropdown-item" href="<?= base_url('admin/wajibpajak/pabt/2021')?>">2021</a>
                                                                    <a class="dropdown-item" href="<?= base_url('admin/wajibpajak/pabt/2022')?>">2022</a>
                                                                    <a class="dropdown-item" href="<?= base_url('admin/wajibpajak/pabt/2023')?>">2023</a>
                                                                    <a class="dropdown-item" href="<?= base_url('admin/wajibpajak/pabt/2024')?>">2024</a>
                                                                    <a class="dropdown-item" href="<?= base_url('admin/wajibpajak/pabt/2025')?>">2025</a>
                                                                </div>
                                                            </div>
                                                        <div class="btn-group">                                                            
                                                            <button class="btn btn-success bg-success text-light btn-lg dropdown-toggle waves-effect waves-light ml-2" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true" data-plugin="tippy" data-tippy-placement="top-start" title="Rekapan">
                                                            <span class="btn-label"><i class="mdi mdi-paperclip"></i></span>
                                                            <?php 
                                                                 $nama_distrik = "";
                                                                 foreach($wajib_pajak_distrik as $distrikLoop)
                                                                 {
                                                                     if($distrikLoop['id_distrik'] == $distrik )
                                                                     {
                                                                         $nama_distrik = $distrikLoop['nama_distrik'];
                                                                     }
                                                                 }
                                                                 if($nama_distrik != null)
                                                                 {
                                                                     echo $nama_distrik;
                                                                 }

                                                            ?>
                                                        
                                                            </button>
                                                            <div class="dropdown-menu ml-2" style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, 44px, 0px);" x-placement="bottom-start">
                                                                <?php foreach ($wajib_pajak_distrik as $d ) : ?>
                                                                <a class="dropdown-item" href="<?= base_url('admin/wajibpajak/pabt-distrik/'.$tahun)?>?distrik=<?=$d['id_distrik']?>"><?=$d['nama_distrik']?></a>
                                                                <?php endforeach; ?>
                                                            </div>
                                                        </div>
                                                            <a target="_blank" href="<?= base_url('admin/wajibpajak/cetak-pabt-perdistrik/'.$tahun) ?>?distrik=<?=$distrik?>">
                                                            <button type="button" class="btn btn-lg btn-danger waves-effect waves-light ml-2" data-plugin="tippy" data-tippy-placement="top-start" title="Download PDF">
                                                            <span class="btn-label"><i class="fas fa-download"></i></span>PDF</button>
                                                        </a>
                                                    </div>
                                                    
                                                    <a href="<?= base_url('admin/wajibpajak/terhapus') ?>" data-plugin="tippy" data-tippy-placement="top-start" title="Menampilkan Wajib Pajak Terhapus">
                                                        <button type="button" class="btn btn-lg btn-primary text-primary bg-light waves-effect waves-light">
                                                        <span class="btn-label"><i class="fas fa-trash"></i></span>Terhapus</button>
                                                    </a>

                                                </div>
                                            </div> <!-- end .col  -->
                                        </div> <!-- end .row  -->

                                        <div class="row">
                                            <div class="col-12 py-2">
                                                <div class="table table-responsive">
                                                    <!-- start table  -->

                                                    <table id="basic-datatable" class="table table-striped dt-responsive nowrap w-100">
                                                        <thead class="bg-light">
                                                            <tr>
                                                                <th class="font-weight-bold">No</th>
                                                                <th class="font-weight-bold">Nama Usaha</th>
                                                                <th class="font-weight-bold">Alamat Usaha</th>
                                                                <th class="font-weight-bold">Pemilik Usaha</th>
                                                                <?php foreach($bulan as $b):?>
                                                                    <th class="font-weight-bold"><?=$b['bulan']?></th>
                                                                <?php endforeach;?>
                                                                <th class="font-weight-bold">Total Pabt</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <?php $totalPabt = 0; $no = 1;
                                                            foreach ($wajib_pajak as $l) { ?>

                                                                <tr>
                                                                    <td>
                                                                        <?=$no; ?>
                                                                    </td>
                                                                    <td>
                                                                        <?= $l['usaha_nama'];?>
                                                                    </td>
                                                                    <td><?= $l['usaha_alamat']?> </td>
                                                                    <td><i class="fa fa-user mr-1 text-dark"></i> <?= $l['pemilik_nama']?> </td>
                                                                    <?php foreach($bulan as $b):?>
                                                                    <td>
                                                                        <?php
                                                                        error_reporting(0);
                                                                        $id_wp = $l['id_wp'];
                                                                        $id_bulan  = $b['id'];
                                                                        $queryPabt = $this->db->query("SELECT * FROM tagihan WHERE id_wp = '$id_wp' AND tahun = '$tahun' AND id_bulan = '$id_bulan' ")->result_array();
                                                                        ?>
                                                                        <?php if($queryPabt[0]['total_pabt'] == null){
                                                                            echo '-';
                                                                        }else{
                                                                            echo rupiah($queryPabt[0]['total_pabt']);
                                                                        }; 
                                                                        
                                                                        $totalPabt = $queryPabt[0]['total_pabt'] + $totalPabt;
                                                                        ?>
                                                                    </td>
                                                                    <?php endforeach;?>

                                                                    <td><?php echo rupiah($totalPabt); $totalPabt = 0; ?></td>

                                                                </tr>

                                                            <?php $no++;} ?>
                                                            <tr>
                                                                <td><?=$no?></td>
                                                                <td></td>
                                                                <td></td>
                                                                <td></td>
                                                                <td class="text-center"> Total</td>
                                                                 <?php 
                                                                 foreach($bulan as $b):?>
                                                                    <?php  $id_bulan  = $b['id'];
                                                                        $queryTotal = $this->db->query("SELECT sum(total_pabt) as total FROM tagihan, wajib_pajak WHERE wajib_pajak.id_wp = tagihan.id_wp AND wajib_pajak.usaha_distrik = '$distrik' AND tagihan.tahun = '$tahun' AND tagihan.id_bulan = '$id_bulan'")->result_array();
                                                                        ?>
                                                                    <td><?= rupiah($queryTotal[0]['total'])?></td>
                                                                <?php endforeach;?>       
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                    <!-- end table  -->

                                                </div>

                                            </div> <!-- end .col  -->

                                        </div> <!-- end .row  -->

                                    </div> <!-- end card body-->
                                </div> <!-- end card -->
                            </div><!-- end col-->
                        </div>
                        <!-- end .row-->

                    </div> <!-- container -->

                </div> <!-- content -->