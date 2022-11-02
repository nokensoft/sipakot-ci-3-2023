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
                                            <li class="breadcrumb-item active">Sortir</li>
                                        </ol>
                                    </div>
                                    <h4 class="page-title">Sortir Wajib Pajak Berdasarkan Distrik</span></h4>
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
                                                        <a href="<?= base_url('admin/wajibpajak/tambah') ?>">
                                                            <button type="button" class="btn btn-lg btn-primary waves-effect waves-light" data-plugin="tippy" data-tippy-placement="top-start" title="Tambah">
                                                            <span class="btn-label"><i class="fas fa-plus"></i></span>Tambah</button>
                                                        </a>
                                                        <div class="btn-group">                                                            
                                                            <button class="btn btn-primary bg-light text-primary btn-lg dropdown-toggle waves-effect waves-light ml-2" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true" data-plugin="tippy" data-tippy-placement="top-start" title="Rekapan">
                                                            <span class="btn-label"><i class="mdi mdi-paperclip"></i></span>Jenis Usaha</button>
                                                            <div class="dropdown-menu ml-2" style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, 44px, 0px);" x-placement="bottom-start">
                                                                <?php foreach ($wajib_pajak_kategori_usaha as $kategori_usaha ) : ?>
                                                                <a target="_blank" class="dropdown-item" href="<?=base_url('admin/wajibpajak/sortir/')?><?=$kategori_usaha['id']?>"><?=$kategori_usaha['kriteria']?></a>
                                                                <?php endforeach; ?>
                                                            </div>
                                                        </div>
                                                        <div class="btn-group">                                                            
                                                            <button class="btn btn-success bg-success text-white btn-lg dropdown-toggle waves-effect waves-light ml-2" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true" data-plugin="tippy" data-tippy-placement="top-start" title="Rekapan">
                                                            <span class="btn-label"><i class="mdi mdi-paperclip"></i></span>
                                                            
                                                            <?php
                                                                // // query komponen usaha
                                                                $distrik = $this->uri->segment(4);
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
                                                                <?php foreach ($wajib_pajak_distrik as $distrik_usaha ) : ?>
                                                                <a class="dropdown-item" href="<?=base_url('admin/wajibpajak/sortirdistrik/')?><?=$distrik_usaha['id_distrik']?>"><?=$distrik_usaha['nama_distrik']?></a>
                                                                <?php endforeach; ?>
                                                            </div>

                                                        </div>
                                                        <div class="btn-group">                                                            
                                                            <button class="btn btn-secondary bg-secondary text-white btn-lg dropdown-toggle waves-effect waves-light ml-2" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true" data-plugin="tippy" data-tippy-placement="top-start" title="Rekapan">
                                                            <span class="btn-label"><i class="mdi mdi-paperclip"></i></span>
                                                            
                                                            <?php
                                                                // // query komponen usaha
                                                                $kelurahan = $this->uri->segment(5);
                                                                foreach($wajib_pajak_kelurahan as $kelurahanLoop)
                                                                {
                                                                    if($kelurahanLoop['id_kelurahan'] == $kelurahan )
                                                                    {
                                                                        $nama_kelurahan = $kelurahanLoop['nama_kelurahan'];
                                                                    }
                                                                }
                                                                if($kelurahan != null)
                                                                {
                                                                    echo $nama_kelurahan;
                                                                }else{
                                                                     echo 'Kelurahan';
                                                                }
                                                            
                                                            ?>

                                                            </button>

                                                            <div class="dropdown-menu ml-2" style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, 44px, 0px);" x-placement="bottom-start">
                                                                <?php foreach ($wajib_pajak_kelurahan as $kelurahan_usaha ) : ?>
                                                                <?php if($kelurahan_usaha['id_distrik'] == $distrik) 
                                                                {?>
                                                                     <a target='_blank' class="dropdown-item" href="<?=base_url('admin/wajibpajak/sortirkelurahan/kelurahan')?>?kelurahan=<?=$kelurahan_usaha['id_kelurahan']?>&distrik=<?=$kelurahan_usaha['id_distrik']?>"><?=$kelurahan_usaha['nama_kelurahan']?></a>
                                                                    
                                                                <?php } ?>
                                                               
                                                                <?php endforeach; ?>
                                                            </div>

                                                        </div>

                                                        <a target="_blank" href="<?= base_url('admin/wajibpajak/pdfdistrik/'. $this->uri->segment(4)) ?>">
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
                                                                <th class="font-weight-bold">Logo</th>
                                                                <th class="font-weight-bold">Nama Usaha</th>
                                                                <th class="font-weight-bold">Alamat Usaha</th>
                                                                <th class="font-weight-bold">Kelurahan</th>
                                                                <th class="font-weight-bold">Distrik</th>
                                                                <th class="font-weight-bold">Pemilik Usaha</th>
                                                                <th class="font-weight-bold">Nomor Telepon Pemilik</th>
                                                                <th class="font-weight-bold">Email Pemilik</th>
                                                                <th class="font-weight-bold">Jumlah Kamar (Usaha Kos)</th>
                                                                <th class="font-weight-bold">Aktif</th>
                                                                <th class="font-weight-bold">Opsi</th>
                                                            </tr>
                                                        </thead>


                                                        <tbody>

                                                            <?php $no = 1;
                                                         
                                                            foreach ($wajib_pajak_sortir_distrik as $l) { ?>

                                                                <tr>
                                                                    <td>
                                                                        <?=$no; ?>
                                                                    </td>
                                                                    <td style="width: 50px;">
                                                                        <?php if(!empty($l['usaha_logo'])) { ?> 
                                                                            <img src="<?= base_url() ?>assets/images/usaha_logo/<?=$l['usaha_logo'] ?>" alt="" class="img img-thumbnail" width="300px">
                                                                        <?php } else { ?> 
                                                                            <img src="<?= base_url() ?>assets/images/usaha_logo/default_image.png" alt="" class="img img-thumbnail" width="300px">
                                                                        <?php }?>
                                                                    </td>

                                                                    <td>
                                                                        <h5 class="m-0 font-weight-normal"><?= $l['usaha_nama']; ?></h5>
                                                                        <?php
                                                                        // query komponen usaha
                                                                        $queryKomponenUsaha = $this->db->query("SELECT * FROM pajak_kk WHERE id = " . $l['usaha_kategori']);
                                                                        $rowKomponenUsaha = $queryKomponenUsaha->row_array();
                                                                        ?>
                                                                        <p class="mb-0 text-muted"><small class="badge badge-soft-secondary"><?= $rowKomponenUsaha['kriteria'] ?></small></p>
                                                                    </td>

                                                                    <td>
                                                                        <?= $l['usaha_alamat']; ?>
                                                                    </td>
                                                                    <td>
                                                                        <?php foreach($wajib_pajak_kelurahan as $kelurahan)
                                                                        if($kelurahan['id_kelurahan'] == $l['usaha_kelurahan'])
                                                                        {
                                                                            echo $kelurahan['nama_kelurahan'];
                                                                        }else{
                                                                            echo '';
                                                                        }
                                                                        ?>
                                                                    </td>         
                                                                    <td>
                                                                        <?php foreach($wajib_pajak_distrik as $distrik)
                                                                        if($distrik['id_distrik'] == $l['usaha_distrik'])
                                                                        {
                                                                            echo $distrik['nama_distrik'];
                                                                        }else{
                                                                            echo '';
                                                                        }
                                                                        ?>
                                                                    </td>

                                                                    <td>
                                                                        <i class="fa fa-user mr-1 text-dark"></i> <?= $l['pemilik_nama']; ?>
                                                                    </td>

                                                                    <td>
                                                                        <?= $l['pemilik_telp']; ?>
                                                                    </td>

                                                                    <td>
                                                                        <?= $l['pemilik_email']; ?>
                                                                    </td>

                                                                    <td>
                                                                        <?= $l['usaha_kos_jml_kmr']; ?>
                                                                    </td>


                                                                    <td>
                                                                        <?php
                                                                            if($l['is_active'] == 1) { echo '<i class="fa fa-check-circle text-success" data-plugin="tippy" data-tippy-placement="top-start" title="Aktif"></i>'; } 
                                                                            elseif($l['is_active'] == 0) { echo '<i class="fa fa-times-circle text-dark" data-plugin="tippy" data-tippy-placement="top-start" title="Tidak Aktif"></i>'; }
                                                                        ?>
                                                                    </td>

                                                                    <td>
                                                                        <a href="<?= base_url('admin/wajibpajak/tagihan/new/') ?><?= $l['id_wp']; ?>?t=<?=date('Y')?>" class="btn btn-xs btn-success waves-effect waves-light" data-plugin="tippy" data-tippy-placement="top-start" title="Tagihan"><i class="mdi mdi-animation-outline"></i></a>
                                                                        <!-- <a href="<?= base_url('admin/wajibpajak/detail/') ?><?= $l['id_wp']; ?>" class="btn btn-xs btn-dark" data-plugin="tippy" data-tippy-placement="top-start" title="Detail"><i class="mdi mdi-eye"></i></a> -->
                                                                        <!-- <a href="<?= base_url('admin/wajibpajak/ubah/') ?><?= $l['id_wp']; ?>" class="btn btn-xs btn-light" data-plugin="tippy" data-tippy-placement="top-start" title="Ubah"><i class="fas fa-edit"></i></a> -->
                                                                        <!-- <a href="#" class="btn btn-xs btn-light" data-plugin="tippy" data-tippy-placement="top-start" title="Hapus" title="Menghapus data" data-toggle="modal" data-target="#hapusWp<?= $l['id_wp']; ?>"><i class="fas fa-trash"></i></a> -->
                                                                    
                                                                    
                                                                            
                                                                        

                                                                        <div class="btn-group dropright">
                                                                            <button type="button" class="btn btn-xs btn-dark waves-effect waves-light dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                                                                                <i class="fas fa-ellipsis-v"></i>
                                                                            </button>
                                                                            <div class="dropdown-menu" style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(106px, 0px, 0px);" x-placement="bottom-start">
                                                                                <a class="dropdown-item" href="<?= base_url('admin/wajibpajak/detail/') ?><?= $l['id_wp']; ?>" data-plugin="tippy" data-tippy-placement="top-start" title="Detail"><i class="fas fa-eye"></i> Detail</a>
                                                                                <a class="dropdown-item" href="<?= base_url('admin/wajibpajak/ubah/') ?><?= $l['id_wp']; ?>" data-plugin="tippy" data-tippy-placement="top-start" title="Ubah"><i class="fas fa-edit"></i> Ubah</a>
                                                                                <a class="dropdown-item" href="#" data-plugin="tippy" data-tippy-placement="top-start" title="Hapus" title="Menghapus data" data-toggle="modal" data-target="#hapusWp<?= $l['id_wp']; ?>"><i class="fas fa-trash"></i> Hapus</a>

                                                                            </div>
                                                                        </div>
                                                                    
                                                                    
                                                                    
                                                                    
                                                                    
                                                                    </td>

                                                                </tr>

                                                                <!--  Modal content for the modalHda example -->
                                                                <div class="modal fade" id="hapusWp<?= $l['id_wp']; ?>" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                                                                    <div class="modal-dialog modal-sm">
                                                                        <div class="modal-content">
                                                                            <?= form_open_multipart('C_Wajibpajak/proses_hapus_wajib_pajak'); ?>
                                                                            <input type="hidden" name="id_wp" value="<?= $l['id_wp']; ?>">
                                                                            
                                                                            <div class="modal-body">

                                                                                <h1>Hapus?</h1>
                                                                                <p>Data akan dipindahkan ke kelompok terhapus</p>

                                                                            </div>

                                                                            <div class="modal-footer bg-soft-dark d-flex justify-content-between">
                                                                                <button type="submit" class="btn btn-lg btn-light"><i class="fas fa-trash mr-1"></i> Hapus</button>     
                                                                                <button type="button" class="btn btn-lg btn-dark" data-dismiss="modal"><i class="fas fa-times-circle mr-1"></i> Tidak</button>      
                                                                            </div>


                                                                            <?= form_close() ?>
                                                                        </div><!-- /.modal-content -->
                                                                    </div><!-- /.modal-dialog -->
                                                                </div><!-- /.modal -->


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