<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <title><?=$judul_situs['isi']?></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description" />
    <meta content="Coderthemes" name="author" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <!-- App favicon -->
    <link rel="shortcut icon" href="<?= base_url() ?>assets/images/favicon-cms-hr.png">

    <!-- App css -->
    <link href="<?= base_url('assets/css/bootstrap-material.min.css') ?>" rel="stylesheet" type="text/css" id="bs-default-stylesheet" />
    <link href="<?= base_url('assets/css/app-material.min.css') ?>" rel="stylesheet" type="text/css" id="app-default-stylesheet" />

    <link href="<?= base_url('assets/css/bootstrap-material-dark.min.css') ?>" rel="stylesheet" type="text/css" id="bs-dark-stylesheet" />
    <link href="<?= base_url('assets/css/app-material-dark.min.css') ?>" rel="stylesheet" type="text/css" id="app-dark-stylesheet" />

    <!-- icons -->
    <link href="<?= base_url() ?>assets/css/icons.min.css" rel="stylesheet" type="text/css" />

    <style>
        body {
            background: #1A2980;
            /* fallback for old browsers */
            background: -webkit-linear-gradient(to right, #26D0CE, #1A2980);
            /* Chrome 10-25, Safari 5.1-6 */
            background: linear-gradient(to right, #26D0CE, #1A2980);
            /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */

        }
    </style>

</head>

<body class="loading bg-dark" data-layout='{"mode": "light", "width": "fluid", "menuPosition": "fixed", "sidebar": { "color": "light", "size": "default", "showuser": true}, "topbar": {"color": "dark"}, "showRightSidebarOnPageLoad": true}'>

    <div class="account-pages mt-5 mb-5">
        <!--<div class="container">
            <div class="row justify-content-center">

                
                <div class="col-md-8 col-lg-6 col-xl-6">
                    <div class="card bg-pattern shadow-lg">

                        <div class="card-body p-4">

                            <div class="text-center w-75 m-auto">
                                <div class="auth-logo">
                                    <a href="<?= base_url() ?>" class="logo logo-dark text-center">
                                        <span class="logo-lg">
                                            <img src="<?= base_url('assets/images/logo-kota-jayapura-700-dark.png') ?>" alt="" height="100px">
                                        </span>
                                    </a>

                                    <a href="<?= base_url() ?>" class="logo logo-light text-center">
                                        <span class="logo-lg">
                                            <img src="<?= base_url('assets/images/logo-kota-jayapura-700.png') ?>" alt="" height="100px">
                                        </span>
                                    </a>
                                </div>
                                <h1 class="text-uppercase pt-3 font-weight-bold display-4">SIPAKOT</h1>
                                <p class="text-muted mb-4 mt-3">SISTEM INFORMASI PENGELOLAAN PAJAK AIR TANAH<br> PEMERINTAH KOTA JAYAPURA</p>
                                <span class="badge badge-dark p-1"><i class="fas fa-user mr-1"></i> Wajib Pajak</span>
                            </div>

                            <?= $this->session->flashdata('message') ?>

                            <form method="POST" action="<?= base_url('Loginwajibpajak') ?>">

                                <div class="form-group mb-3">
                                    <label for="email">EMAIL</label>
                                    <input class="form-control form-control-lg" type="email" id="email" placeholder="Masukan email" name="email">
                                </div>

                                <div class="form-group mb-3">
                                    <label for="kata_sandi">KATA SANDI</label>
                                    <div class="input-group input-group-merge">
                                        <input type="password" id="kata_sandi" class="form-control form-control-lg" placeholder="Maukan kata sandi" name="kata_sandi">
                                        <div class="input-group-append" data-password="false">
                                            <div class="input-group-text">
                                                <span class="password-eye font-12"></span>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group mb-0 text-center">
                                    <button class="btn btn-primary btn-block btn-lg rounded" type="submit"><i class="fas fa-lock-open mr-1"></i> MASUK </button>
                                </div>

                            </form>

                        </div> <!-- end card-body 
                    </div>
                    <!-- end card 

                </div> <!-- end col 

            </div>
            <!-- end row 
        </div>
        end container -->

        
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-8 col-lg-7 col-xl-7">
                    <div class="card bg-pattern shadow-lg">

                        <div class="card-body p-4">

                            <ul class="nav nav-tabs">
                                <li class="nav-item">
                                    <a href="#info" data-toggle="tab" aria-expanded="true" class="nav-link active">
                                        <i class="fas fa-globe-asia"></i> Berita
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="#profil-dinas" data-toggle="tab" aria-expanded="false" class="nav-link">
                                        <i class="fas fa-university"></i> Profil Dinas
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="#tugas-poko-dan-fungsi" data-toggle="tab" aria-expanded="false" class="nav-link">
                                        <i class="fas fa-thumbtack"></i> Tupoksi
                                    </a>
                                </li>
                            </ul>
                            <div class="tab-content">
                                <div class="tab-pane show active" id="info">
                                    
                                    <p class="sub-header">Informasi seputar kegiatan-kegiatan Dinas Lingkungan Hidup dan Kebersihan Kota Jayapura, Provinsi Papua, Indonesia.</p>
                                    
                                    <div id="carouselExampleCaption" class="carousel slide" data-ride="carousel">
                                        <div class="carousel-inner" role="listbox">

                                            <?php 
                                                $no = 1; 
                                                foreach ($beritas as $berita) { 
                                            ?>

                                            <div class="carousel-item <?php if($no == 1){ echo 'active';} ?>">
                                                <img src="<?=base_url()?>assets/images/berita/<?php echo $berita['image']; ?>" alt="<?php echo $berita['title']; ?>" class="d-block img-fluid">
                                                    <div class="carousel-caption d-none d-md-block">
                                                        <div class="text-dark shadow-lg"  data-plugin="tippy" data-tippy-placement="top-center" title="<?php echo $berita['body']; ?>">
                                                        <h3 class="text-dark bg-white py-2 px-1 rounded"><?php echo $berita['title']; ?></h3>
                                                    </div>
                                                </div>

                                                

                                            </div>
                                            <?php $no++; } ?>
                                        </div>
                                        <a class="carousel-control-prev" href="#carouselExampleCaption" role="button" data-slide="prev">
                                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                            <span class="sr-only">Previous</span>
                                        </a>
                                        <a class="carousel-control-next" href="#carouselExampleCaption" role="button" data-slide="next">
                                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                            <span class="sr-only">Next</span>
                                        </a>
                                    </div>

                                </div>
                                <div class="tab-pane" id="profil-dinas">
                                    <p>Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt.Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim.</p>
                                    
                                    <img src="<?=base_url()?>assets/images/small/img-2.jpg" alt="..." class="d-block img-fluid">

                                    <div class="my-2"></div>
                                    
                                    <p class="mb-0">Vakal text here dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim.</p>

                                    <hr>
                                    
                                    <a href="#" class="btn btn-sm btn-primary"data-toggle="modal" data-target="#MODAL-PROFIL" > <i class="fas fa-eye mr-1"></i> Selengkapnya</a>

                                </div>

                                <!-- MODAL PROFIL  -->
                                <!-- Large modal -->
                                <!--  Modal content for the Large example -->
                                <div class="modal fade" id="MODAL-PROFIL" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                                    <div class="modal-dialog modal-lg">

                                        <div class="modal-content">
                                            <div class="modal-header bg-light">
                                                <h1><i class="fas fa-university"></i> Profil Dinas</h1>
                                                <div class="float-right">
                                                    <a href="#" data-dismiss="modal" class="btn btn-light"><i class="fas fa-times"></i></a>
                                                </div>
                                            </div>
                                            <div class="modal-body">
                                                <img src="<?=base_url()?>assets/images/small/img-2.jpg" alt="..." class="d-block img-fluid">
                                                <hr>
                                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>

                                            </div>

                                        </div><!-- /.modal-content -->

                                    </div><!-- /.modal-dialog -->
                                </div><!-- /.modal -->
                                <!-- END MODAL PROFIL  -->

                                
                                <div class="tab-pane" id="tugas-poko-dan-fungsi">
                                    <p>Vakal text here dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim.</p>
                                    <p class="mb-0">Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt.Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim.</p>

                                    <hr>
                                    
                                    <a href="#" class="btn btn-sm btn-primary"data-toggle="modal" data-target="#MODAL-TUPOKSI" > <i class="fas fa-eye mr-1"></i> Selengkapnya</a>
                                </div>

                                <!-- MODAL TUPOKSI  -->
                                <!-- Large modal -->
                                <!--  Modal content for the Large example -->
                                <div class="modal fade" id="MODAL-TUPOKSI" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                                    <div class="modal-dialog modal-lg">

                                        <div class="modal-content">
                                            <div class="modal-header bg-light">
                                                <h1><i class="fas fa-thumbtack"></i> Tupoksi</h1>
                                                <div class="float-right">
                                                    <a href="#" data-dismiss="modal" class="btn btn-light"><i class="fas fa-times"></i></a>
                                                </div>
                                            </div>
                                            <div class="modal-body">
                                                
                                                <div id="accordion" class="mb-3">
                                                    <div class="card mb-1">
                                                        <div class="card-header" id="headingOne">
                                                            <h5 class="m-0">
                                                                <a class="text-dark" data-toggle="collapse" href="#collapseOne" aria-expanded="true">
                                                                    <i class="fas fa-thumbtack mr-1 text-primary"></i> 
                                                                    What is Vakal text here?
                                                                </a>
                                                            </h5>
                                                        </div>
                                            
                                                        <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordion">
                                                            <div class="card-body">
                                                                Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute,
                                                                non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon
                                                                tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil
                                                                anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan
                                                                excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt
                                                                you probably haven't heard of them accusamus labore sustainable VHS.
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="card mb-1">
                                                        <div class="card-header" id="headingTwo">
                                                            <h5 class="m-0">
                                                                <a class="text-dark" data-toggle="collapse" href="#collapseTwo" aria-expanded="false">
                                                                    <i class="fas fa-thumbtack mr-1 text-primary"></i> 
                                                                    Why use Vakal text here?
                                                                </a>
                                                            </h5>
                                                        </div>
                                                        <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
                                                            <div class="card-body">
                                                                Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute,
                                                                non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon
                                                                tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil
                                                                anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan
                                                                excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt
                                                                you probably haven't heard of them accusamus labore sustainable VHS.
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="card mb-1">
                                                        <div class="card-header" id="headingThree">
                                                            <h5 class="m-0">
                                                                <a class="text-dark" data-toggle="collapse" href="#collapseThree" aria-expanded="false">
                                                                    <i class="fas fa-thumbtack mr-1 text-primary"></i> 
                                                                    How many variations exist?
                                                                </a>
                                                            </h5>
                                                        </div>
                                                        <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
                                                            <div class="card-body">
                                                                Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute,
                                                                non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon
                                                                tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil
                                                                anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan
                                                                excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt
                                                                you probably haven't heard of them accusamus labore sustainable VHS.
                                                            </div>
                                                        </div>
                                                    </div>
                        
                                                    <div class="card mb-1">
                                                        <div class="card-header" id="headingFour">
                                                            <h5 class="m-0">
                                                                <a class="text-dark" data-toggle="collapse" href="#collapseFour" aria-expanded="false">
                                                                    <i class="fas fa-thumbtack mr-1 text-primary"></i> 
                                                                    What is Vakal text here?
                                                                </a>
                                                            </h5>
                                                        </div>
                                                        <div id="collapseFour" class="collapse" aria-labelledby="collapseFour" data-parent="#accordion">
                                                            <div class="card-body">
                                                                Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute,
                                                                non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon
                                                                tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil
                                                                anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan
                                                                excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt
                                                                you probably haven't heard of them accusamus labore sustainable VHS.
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div> <!-- end #accordions-->

                                            </div>

                                        </div><!-- /.modal-content -->

                                    </div><!-- /.modal-dialog -->
                                </div><!-- /.modal -->
                                <!-- END MODAL TUPOKSI  -->
                            </div>






                        

                            
                            

                        </div> <!-- end card-body -->
                    </div>
                    <!-- end card -->

                </div> <!-- end col -->

                
                <div class="col-md-8 col-lg-5 col-xl-5">
                    <div class="card bg-pattern shadow-lg">

                        <div class="card-body p-4">

                            <div class="text-center w-75 m-auto">
                                <div class="auth-logo">
                                    <a href="<?= base_url() ?>" class="logo logo-dark text-center">
                                        <span class="logo-lg">
                                            <img class="img-fluid" src="<?= base_url('assets/images/logo-kota-jayapura-700-dark.png') ?>" alt="Logo DLHK">
                                        </span>
                                    </a>

                                    <a href="<?= base_url() ?>" class="logo logo-light text-center">
                                        <span class="logo-lg">
                                            <img src="<?= base_url('assets/images/logo-kota-jayapura-700.png') ?>" alt="" height="100px">
                                        </span>
                                    </a>
                                </div>
                                <h1 class="text-uppercase pt-3 font-weight-bold display-5">SIPAKOT</h1>
                                <p class="text-muted mb-4 mt-3">SISTEM INFORMASI PENGELOLAAN PAJAK AIR TANAH PEMERINTAH KOTA JAYAPURA</p>
                                <span class="badge badge-dark p-1"><i class="fas fa-user mr-1"></i> Wajib Pajak</span>
                            </div>

                            <?= $this->session->flashdata('message') ?>

                            <form method="POST" action="<?= base_url('Loginwajibpajak') ?>">

                                <div class="form-group mb-3">
                                    <label for="email">EMAIL</label>
                                    <input class="form-control form-control-lg" type="email" id="email" placeholder="Masukan email" name="email">
                                </div>

                                <div class="form-group mb-3">
                                    <label for="kata_sandi">KATA SANDI</label>
                                    <div class="input-group input-group-merge">
                                        <input type="password" id="kata_sandi" class="form-control form-control-lg" placeholder="Maukan kata sandi" name="kata_sandi">
                                        <div class="input-group-append" data-password="false">
                                            <div class="input-group-text">
                                                <span class="password-eye font-12"></span>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group mb-0 text-center">
                                    <button class="btn btn-primary btn-block btn-lg rounded" type="submit"><i class="fas fa-lock-open mr-1"></i> MASUK </button>
                                </div>

                            </form>

                        </div> <!-- end card-body -->
                    </div>
                    <!-- end card -->

                </div> <!-- end col -->

            </div>
            <!-- end row -->
        </div>
        <!-- end container -->


    </div>
    <!-- end page -->


    

                                            


    <footer class="footer footer-alt text-white-50">
        <?= $footer_text['isi'] ?>
    </footer>

    <!-- Vendor js -->
    <script src="<?= base_url() ?>assets/js/vendor.min.js"></script>

    <!-- Tippy js-->
    <script src="<?= base_url('assets/libs/tippy.js/tippy.all.min.js') ?>"></script>

    <!-- App js -->
    <script src="<?= base_url() ?>assets/js/app.min.js"></script>

</body>

</html>