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
                                <li class="breadcrumb-item active">Tagihan</li>
                            </ol>
                        </div>
                        <h4 class="page-title">Tagihan</span></h4>
                    </div>
                </div>
            </div>
            <!-- end page title -->

            

                <!-- start .row  -->
                <div class="row">  
                    
                    <div class="col-lg-3 col-md-12">
                        <div class="card-box">

                            <?php include('partials/sidebar-profil.php'); ?>

                        </div>
                    </div> <!-- end col -->

                    <div class="col-lg-9">
                            
                        <?= $this->session->flashdata('message') ?>

                        <div class="card">
                            <div class="card-body">
                                

                                <div class="row mb-3">
                                                
                                    <div class="col-12">
                                        <div class="d-flex justify-content-between">
                                            <div class="btn-group dropdown mb-2">
                                                <button type="button" class="btn btn-lg btn-primary"><?=$_GET['t']?></button>
                                                <button type="button" class="btn btn-lg btn-primary dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                    <i class="mdi mdi-chevron-down"></i>
                                                </button>
                                                <div class="dropdown-menu" style="">
                                                    <a class="dropdown-item" href="<?= base_url('admin/wajibpajak/tagihan/new/' . $wajib_pajak['id_wp']) ?>?t=2022">2022</a>
                                                    <a class="dropdown-item" href="<?= base_url('admin/wajibpajak/tagihan/new/' . $wajib_pajak['id_wp']) ?>?t=2021">2021</a>
                                                    <a class="dropdown-item" href="<?= base_url('admin/wajibpajak/tagihan/new/' . $wajib_pajak['id_wp']) ?>?t=2020">2020</a>
                                                    <a class="dropdown-item" href="<?= base_url('admin/wajibpajak/tagihan/new/' . $wajib_pajak['id_wp']) ?>?t=2019">2019</a>
                                                    <!-- <div class="dropdown-divider"></div> -->
                                                    <!-- <a class="dropdown-item" href="<?= base_url('wajibpajak/tagihan') ?>?t=semua">Semua</a> -->
                                                </div>
                                            </div>
                                            <a href="<?= base_url('admin/wajibpajak/tagihan/buat/') . $this->uri->segment(5) . '?t='.date('Y')  ?>">
                                                <button type="submit" class="btn btn-lg btn-primary waves-effect waves-light" data-plugin="tippy" data-tippy-placement="top-start" title="Tambah">
                                                <span class="btn-label"><i class="fas fa-plus"></i></span>Buat Tagihan</button>
                                            </a>
                                        </div>
                                    </div> <!-- end .col  -->
                                </div> <!-- end .row  -->


                                <div class="row">
                                    <div class="col-12">

                                        <div class="table table-responsive">

                                            <!-- start table  -->
                                            <table id="basic-datatable" class="table table-striped dt-responsive nowrap w-100">
                                                <thead>
                                                    <tr>
                                                        <th width="" style="font-weight:bold">No</th>
                                                        <th width="" style="font-weight:bold">Tahun</th>
                                                        <th width="" style="font-weight:bold">Bulan</th>
                                                        <th width="" style="font-weight:bold">Komponen Sumber Daya Alam (SDA)</th>
                                                        <th width="" style="font-weight:bold">Volume</th>
                                                        <!-- <th width="" style="font-weight:bold">Keterangan</th> -->
                                                        <th width="" style="font-weight:bold">Total PABT</th>
                                                        <th width="" style="font-weight:bold">Opsi</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <?php $no=1; foreach ($tagihans as $tagihan) : ?>
                                                    <tr>
                                                        <td><?=$no?></td>   
                                                        <td><?=$tagihan['tahun']?></td>                                                        
                                                        <?php
                                                        // query bulan
                                                        $queryBulan = $this->db->query("SELECT * FROM bulan WHERE id = " . $tagihan['id_bulan']);
                                                        $rowBulan = $queryBulan->row_array();
                                                        ?>
                                                        <td><?=$rowBulan['bulan']?></td>                                                    
                                                        <?php
                                                        // query komponen sda / pajak_ksda
                                                        $queryKomponenSDA = $this->db->query("SELECT * FROM pajak_ksda WHERE bobot = " . $tagihan['kualitas']);
                                                        $rowKomponenSDA = $queryKomponenSDA->row_array();
                                                        ?>
                                                        <td><?=$rowKomponenSDA['kriteria']?></td>
                                                        <td><?=volume_air($tagihan['volume'])?></td>
                                                        <!-- <td><?=$tagihan['keterangan']?></td> -->
                                                        <!-- <td>
                                                            <a href="<?= base_url('admin/wajibpajak/tagihan/fna/') . $this->uri->segment(5) .'?id=' .$tagihan['id'] ?>" class="btn btn-xs btn-primary bg-light text-primary" target="_blank" data-plugin="tippy" data-tippy-placement="top-start" title="Lihat Perhitungan Faktor Nilai Air (FNA)">Faktor Nilai Air</a>
                                                            <a href="<?= base_url('admin/wajibpajak/tagihan/info/') . $this->uri->segment(5) .'?id=' .$tagihan['id'] ?>" class="btn btn-xs btn-primary" target="_blank" data-plugin="tippy" data-tippy-placement="top-start" title="Lihat Informasi Tagihan"><i class="fas fa-info-circle"></i> Info Tagihan</a>
                                                            <a href="<?= base_url('admin/wajibpajak/tagihan/cetak/') . $this->uri->segment(5) .'?id=' .$tagihan['id'] ?>" class="btn btn-xs btn-primary" target="_blank" data-plugin="tippy" data-tippy-placement="top-start" title="Cetak Info Tagihan"><i class="fas fa-print"></i></a>
                                                        </td>
                                                        <td>

                                                            <?php if(!empty($tagihan['bukti_pembayaran'])){ ?>
                                                            <a href="#" class="btn btn-xs btn-success" data-toggle="modal" data-target="#MODAL-TAMPILKAN-<?=$tagihan['id']?>" data-plugin="tippy" data-tippy-placement="top-start" title="Tampilkan Bukti Pembayaran"><i class="fas fa-file"></i> Bukti Pembayaran</a>
                                                            
                                                            <?php } else { ?>
                                                            
                                                            <a href="#" class="btn btn-xs btn-warning" data-plugin="tippy" data-tippy-placement="top-start" title="Bukti Pembayaran Belum Diunggah"><i class="fas fa-times"></i></a>
                                                            
                                                            <?php }?>

                                                        </td> -->
                                                        <td>
                                                            <?php if(!empty($tagihan['total_pabt'])){
                                                                  echo rupiah($tagihan['total_pabt']);
                                                            }else{
                                                                if(($tagihan['total_pabt'] == '0'))
                                                                echo "Rp 0";
                                                                else{
                                                                    echo 'Belum Tersimpan';
                                                                }
                                                            } ?>
                                                        </td>
                                                        <td>
                                                            <!-- <a href="<?= base_url('admin/wajibpajak/tagihan/sunting/') . $this->uri->segment(5) . '?id=' . $tagihan['id'] . '&b='.$tagihan['id_bulan'].'&t='.date('Y')?>" class="btn btn-xs btn-success" data-plugin="tippy" data-tippy-placement="top-start" title="Ubah"><i class="mdi mdi-pencil"></i></a> -->
                                                            <!-- <a href="#" class="btn btn-xs btn-light" data-toggle="modal" data-target="#MODAL-HAPUS-<?=$tagihan['id']?>" data-plugin="tippy" data-tippy-placement="top-start" title="Hapus"><i class="fas fa-trash"></i></a> -->

                                                            <a href="<?= base_url('admin/wajibpajak/tagihan/cetak/') . $this->uri->segment(5) .'?id=' .$tagihan['id'] ?>" class="btn btn-xs btn-success" target="_blank" data-plugin="tippy" data-tippy-placement="top-start" title="Cetak Info Tagihan"><i class="fas fa-print"></i></a>
                                                            
                                                            <?php if(!empty($tagihan['bukti_pembayaran'])){ ?>
                                                            <a href="#" class="btn btn-xs btn-success" data-toggle="modal" data-target="#MODAL-TAMPILKAN-<?=$tagihan['id']?>" data-plugin="tippy" data-tippy-placement="top-start" title="Tampilkan Bukti Pembayaran"><i class="fas fa-file"></i> Bukti Pembayaran</a>
                                                            
                                                            <?php } else { ?>
                                                            
                                                            <a href="#" class="btn btn-xs btn-warning" data-plugin="tippy" data-tippy-placement="top-start" title="Bukti Pembayaran Belum Diunggah"><i class="fas fa-times"></i></a>
                                                            
                                                            <?php }?>

                                                            <div class="btn-group dropright">
                                                                <button type="button" class="btn btn-xs btn-dark waves-effect waves-light dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                                                                    <i class="fas fa-ellipsis-v"></i>
                                                                </button>
                                                                <div class="dropdown-menu" style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(106px, 0px, 0px);" x-placement="bottom-start">
                                                                    <a class="dropdown-item" href="<?= base_url('admin/wajibpajak/tagihan/fna/') . $this->uri->segment(5) .'?id=' .$tagihan['id'] ?>" target="_blank" data-plugin="tippy" data-tippy-placement="top-start" title="Lihat Perhitungan Faktor Nilai Air (FNA)"><i class="fas fa-info-circle"></i> Faktor Nilai Air</a>
                                                                    <a class="dropdown-item" href="<?= base_url('admin/wajibpajak/tagihan/info/') . $this->uri->segment(5) .'?id=' .$tagihan['id'] ?>" target="_blank" data-plugin="tippy" data-tippy-placement="top-start" title="Lihat Informasi Tagihan"><i class="fas fa-info-circle"></i> Info Tagihan</a>

                                                                    <div class="dropdown-divider"></div>
                                                                    <a class="dropdown-item" href="<?= base_url('admin/wajibpajak/tagihan/sunting/') . $this->uri->segment(5) . '?id=' . $tagihan['id'] . '&b='.$tagihan['id_bulan'].'&t='.date('Y')?>" data-plugin="tippy" data-tippy-placement="top-start" title="Ubah"><i class="fas fa-edit"></i> Ubah</a>
                                                                    <a class="dropdown-item" href="#" data-toggle="modal" data-target="#MODAL-HAPUS-<?=$tagihan['id']?>" data-plugin="tippy" data-tippy-placement="top-start" title="Hapus"><i class="fas fa-trash"></i> Hapus</a>
                                                                </div>
                                                            </div>


                                                        
                                                        
                                                        
                                                        </td>
                                                    </tr>
                                                    
                                                    <!-- MODAL HAPUS  -->
                                                    <!-- Large modal -->
                                                    <!--  Modal content for the Large example -->
                                                    <div class="modal fade" id="MODAL-HAPUS-<?=$tagihan['id']?>" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                                                        <div class="modal-dialog modal-sm">

                                                            <div class="modal-content">
                                                                <?= form_open_multipart('C_Tagihan/proses_hapus_tagihan'); ?>
                                                                <input type="hidden" name="id_wp" value="<?=$this->uri->segment(5)?>">
                                                                <input type="hidden" name="role" value="<?=$this->uri->segment(1)?>">
                                                                <input type="hidden" name="t" value="<?=$_GET['t']?>">
                                                                <input type="hidden" name="id" value="<?=$tagihan['id']?>">
                                                                
                                                                <div class="modal-body">

                                                                    <h1>Hapus?</h1>
                                                                    <p>Data akan terhapus secara permanen</p>

                                                                </div>

                                                                <div class="modal-footer bg-soft-dark d-flex justify-content-between">
                                                                    <button type="submit" class="btn btn-lg btn-light"><i class="mdi mdi-minus-circle mr-1"></i> Hapus</button>     
                                                                    <button type="button" class="btn btn-lg btn-dark" data-dismiss="modal"><i class="fas fa-times-circle mr-1"></i> Tidak</button>      
                                                                </div>


                                                                <?= form_close() ?>
                                                            </div><!-- /.modal-content -->

                                                            
                                                        </div><!-- /.modal-dialog -->
                                                    </div><!-- /.modal -->
                                                    <!-- END MODAL HAPUS  -->




                                                    
                                                    <!-- MODAL TAMPILKAN BUKTI PEMBAYARAN  -->
                                                    <!-- Large modal -->
                                                    <!--  Modal content for the Large example -->
                                                    <div class="modal fade" id="MODAL-TAMPILKAN-<?=$tagihan['id']?>" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                                                        <div class="modal-dialog modal-md">

                                                            <div class="modal-content">
                                                                <?= form_open_multipart('C_Tagihan/proses_hapus_bukti_pembayaran'); ?>
                                                                <input type="hidden" name="t" value="<?=$_GET['t']?>">
                                                                <input type="hidden" name="id" value="<?=$tagihan['id']?>">

                                                                <div class="modal-header bg-light">
                                                                    <h3>Bukti Pembayaran</h3>
                                                                    <div class="float-right">
                                                                        <button type="button" class="btn btn-sm btn-light btn-link text-dark mt-1" data-dismiss="modal"><i class="fas fa-times-circle"></i></button>   
                                                                    </div>
                                                                </div>
                                                                
                                                                <div class="modal-body">
                                                                    
                                                                    <img src="<?= base_url('assets/images/bukti_pembayaran/') ?><?=$tagihan['bukti_pembayaran']?>" alt="Bukti Pembayaran Tagihan" class="img img-thumbnail">

                                                                </div>


                                                                <?= form_close() ?>
                                                            </div><!-- /.modal-content -->

                                                            
                                                        </div><!-- /.modal-dialog -->
                                                    </div><!-- /.modal -->
                                                    <!-- END MODAL TAMPILKAN BUKTI PEMBAYARAN  -->
                                                    <?php $no++; endforeach; ?>
                                                </tbody>
                                            </table>

                                            <!-- end table  -->
                                        </div>
                                    
                                    </div> <!-- end .col  -->
                                </div> <!-- end .row  -->

                            </div>
                        </div>
                        
                    </div> <!-- end col -->

                </div>
                <!-- end row -->

        </div> <!-- container -->

    </div> <!-- content -->

</div>