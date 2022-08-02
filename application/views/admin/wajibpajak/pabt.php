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
                                                            <button class="btn btn-primary bg-light text-primary btn-lg dropdown-toggle waves-effect waves-light ml-2" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true" data-plugin="tippy" data-tippy-placement="top-start" title="Rekapan">
                                                            <span class="btn-label"><i class="mdi mdi-paperclip"></i></span>Distrik</button>
                                                            <div class="dropdown-menu ml-2" style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, 44px, 0px);" x-placement="bottom-start">
                                                                <?php foreach ($wajib_pajak_distrik as $distrik ) : ?>
                                                                <a class="dropdown-item" href="<?= base_url('admin/wajibpajak/pabt-distrik/'.$tahun)?>?distrik=<?=$distrik['id_distrik']?>"><?=$distrik['nama_distrik']?></a>
                                                                <?php endforeach; ?>
                                                            </div>
                                                        </div>
                                                       
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
                                                                <?php foreach($bulan as $b):?>
                                                                    <th class="font-weight-bold"><?=$b['bulan']?></th>
                                                                <?php endforeach;?>


                                                            </tr>
                                                        </thead>


                                                        <tbody>

                                                            <?php $no = 1;
                                                            foreach ($wajib_pajak as $l) { ?>

                                                                <tr>
                                                                    <td>
                                                                        <?=$no; ?>
                                                                    </td>
                                                                    <td>
                                                                        <?= $l['usaha_nama'];?>
                                                                    </td>
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
                                                                        }; ?>
                                                                    </td>
                                                                    <?php endforeach;?>

                                                                  
                                                                   

                                                                </tr>

                                                            <?php $no++;} ?>


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