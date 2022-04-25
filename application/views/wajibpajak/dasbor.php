

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
                                            <li class="breadcrumb-item"><a href="<?=base_url($this->uri->segment(1) . '/dasbor')?>">Wajib Pajak</a></li>
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
                        </div>
                        <!-- end row-->


                        
                    </div> <!-- container -->

                </div> <!-- content -->
            
            
            
        