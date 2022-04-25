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
                                <li class="breadcrumb-item"><a href="<?= base_url('pelaksana/dasbor') ?>">Dasbor</a></li>
                                <li class="breadcrumb-item"><a href="<?= base_url('pelaksana/tentangpajak') ?>">Tentang Pajak</a></li>
                                <li class="breadcrumb-item active">Dasar Pengenaan Pajak</li>
                            </ol>
                        </div>
                        <h4 class="page-title">Dasar Pengenaan Pajak</span></h4>
                    </div>
                </div>
            </div>
            <!-- end page title -->



            <!-- start .row  -->
            <div class="row">
                <div class="col-md-12">

                <?= $this->session->userdata('message') ?>
                
                    <div class="card">
                        <div class="card-body">
                            <div class="row">
                               
                                <div class="col-md-12">

                                    <?php echo $pajak_dpp['isi']; ?>

                                </div>
                                <!-- end .col -->
                            </div>
                            <!-- end .row -->

                        </div>
                        <!-- end .card-body  -->

                    </div> <!-- end card -->


                </div>
            </div>
            <!-- end .row -->

        </div> <!-- container -->

    </div> <!-- content -->