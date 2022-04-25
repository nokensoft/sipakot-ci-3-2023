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
                                            <li class="breadcrumb-item"><a href="#">Dasbor</a></li>
                                            <li class="breadcrumb-item active">Wajib Pajak</li>
                                        </ol>
                                    </div>
                                    <h4 class="page-title">Wajib Pajak</span></h4>

                                    <!-- start alert  -->
                                    <?php if ($this->session->userdata('message') != '') { ?>
                                        <div class="alert alert-success alert-dismissible fade show" role="alert">
                                            <strong>Sukses!</strong> <?= $this->session->userdata('message') ?>
                                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                                <span aria-hidden="true"></span>
                                            </button>
                                        </div>
                                    <?php } ?>
                                    <!-- end alert  -->

                                    <!-- start alert  -->
                                    <!-- <div class="alert alert-warning alert-dismissible fade show" role="alert">
                                        <strong>Peringatan!</strong> Ukuran file tidak boleh lebih dari yang telah ditentukan.
                                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div> -->
                                    <!-- end alert  -->

                                    <!-- start alert  -->
                                    <!-- <div class="alert alert-danger alert-dismissible fade show" role="alert">
                                        <strong>Gagal!</strong> Silahkan coba lagi kembali
                                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div> -->
                                </div>
                            </div>
                        </div>
                        <!-- end page title -->

                        <!-- start .row  -->
                        <div class="row">
                            <div class="col-12">
                                <div class="card">
                                    <div class="card-body">


                                        <div class="float-right">





                                            <a href="<?= base_url() ?>petugaslapangan/wajibpajak/baru" class="btn btn-lg btn-dark bg-dark text-white" data-plugin="tippy" data-tippy-placement="top-start" title="Tambah wajib pajak baru"><i class="mdi mdi-plus-circle"></i></a>

                                        </div>
                                        <div class="header-title mb-3">
                                            <div class="btn-group">
                                                <button type="button" class="btn btn-primary btn-lg dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" data-plugin="tippy" data-tippy-placement="top-start" title="Menampilkan data berdasarkan kategori">Kategori <i class="mdi mdi-chevron-down"></i></button>
                                                <div class="dropdown-menu">
                                                    <a class="dropdown-item" href="<?= base_url() ?>petugaslapangan/wajibpajak/non_niaga">Non Niaga</a>
                                                    <a class="dropdown-item" href="<?= base_url() ?>petugaslapangan/wajibpajak/niaga_kecil">Niaga Kecil</a>
                                                    <a class="dropdown-item" href="<?= base_url() ?>petugaslapangan/wajibpajak/industri_kecil">Industri Kecil</a>
                                                    <a class="dropdown-item" href="<?= base_url() ?>petugaslapangan/wajibpajak/niaga_besar">Niaga Besar</a>
                                                    <a class="dropdown-item" href="<?= base_url() ?>petugaslapangan/wajibpajak/industri_besar">Industri Besar</a>
                                                    <div class="dropdown-divider"></div>
                                                    <a class="dropdown-item" href="<?= base_url() ?>petugaslapangan/wajibpajak">Semua</a>
                                                </div>
                                            </div><!-- /btn-group -->
                                        </div>

                                        <table id="basic-datatable" class="table dt-responsive nowrap w-100">
                                            <thead>
                                                <tr>
                                                    <th>Gambar</th>
                                                    <th>Nama Usaha</th>
                                                    <th>Pemilik Usaha</th>
                                                    <th>Alamat</th>
                                                    <th>Status</th>
                                                    <th>Opsi</th>
                                                </tr>
                                            </thead>


                                            <tbody>

                                                <?php $i = 1;
                                                foreach ($wp as $l) { ?>

                                                    <tr>
                                                        <td style="width: 36px;">
                                                            <img src="<?= base_url() ?>assets/images/gambar_wp/<?= $l['foto']; ?>" alt="contact-img" title="contact-img" class="rounded-circle avatar-lg" />
                                                        </td>

                                                        <td>
                                                            <h5 class="m-0 font-weight-normal"><?= $l['nama_usaha']; ?></h5>
                                                            <p class="mb-0 text-muted"><small class="badge badge-soft-secondary"><?= $l['kategori_usaha']; ?></small></p>
                                                        </td>

                                                        <td>
                                                            <i class="fa fa-user mr-1 text-dark"></i> <?= $l['nama_pemilik']; ?>
                                                        </td>

                                                        <td>
                                                            <?= $l['alamat']; ?>
                                                        </td>

                                                        <td>
                                                            <span class="badge bg-soft-success text-success"><i class="fas fa-check"></i> Sudah Aktif</span>
                                                        </td>

                                                        <td>
                                                            <a href="<?= base_url() ?>petugaslapangan/wajibpajak/tagihan/<?= $l['id_wp']; ?>" class="btn btn-xs btn-success" data-plugin="tippy" data-tippy-placement="top-start" title="Menampilkan data tagihan"><i class="mdi mdi-animation-outline"></i></a>
                                                            <a href="<?= base_url() ?>petugaslapangan/wajibpajak/ubah/<?= $l['id_wp']; ?>" class="btn btn-xs btn-light" data-plugin="tippy" data-tippy-placement="top-start" title="Mengubah data"><i class="mdi mdi-pencil"></i></a>
                                                            <a href="<?= base_url() ?>petugaslapangan/wajibpajak/detail/<?= $l['id_wp']; ?>" class="btn btn-xs btn-light" data-plugin="tippy" data-tippy-placement="top-start" title="Menampilkan data secara detail"><i class="mdi mdi-eye"></i></a>
                                                            <a href="<?= base_url() ?>C_petugaslapangan/hapus/<?= $l['id_wp']; ?>" class="btn btn-xs btn-danger" data-plugin="tippy" data-tippy-placement="top-start" title="Menghapus data"><i class="mdi mdi-minus"></i></a>
                                                        </td>

                                                    </tr>

                                                <?php } ?>

                                                <!-- Danger Alert Modal -->
                                                <div id="danger-alert-modal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
                                                    <div class="modal-dialog modal-sm">
                                                        <div class="modal-content modal-filled bg-danger">
                                                            <div class="modal-body p-4">
                                                                <div class="text-center">
                                                                    <i class="dripicons-wrong h1 text-white"></i>
                                                                    <h4 class="mt-2 text-white">Hapus?</h4>
                                                                    <p class="mt-3 text-white">Anda yakin ingin menghapus data ini.</p>
                                                                    <button type="submit" class="btn btn-light my-2" data-dismiss="modal">Ya</button>
                                                                    <button type="cancel" class="btn btn-dark my-2" data-dismiss="modal">Tidak</button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                            </tbody>
                                        </table>

                                    </div> <!-- end card body-->
                                </div> <!-- end card -->
                            </div><!-- end col-->
                        </div>
                        <!-- end .row-->


                    </div> <!-- container -->

                </div> <!-- content -->