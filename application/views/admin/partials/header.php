<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8" />
    <title><?=$judul_situs['isi']?></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta content="Aplikasi Pajak Air Tanah Dinas Lingkungan Hidup dan Kebersihan Kota Jayapura" name="description" />
    <meta content="SaCode Team" name="author" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <!-- App favicon -->
    <link rel="shortcut icon" href="<?= base_url('assets/images/favicon-cms-hr.png') ?>">

    <!-- third party css -->
    <link href="<?= base_url() ?>assets/libs/datatables.net-bs4/css/dataTables.bootstrap4.min.css" rel="stylesheet" type="text/css" />
    <link href="<?= base_url() ?>assets/libs/datatables.net-responsive-bs4/css/responsive.bootstrap4.min.css" rel="stylesheet" type="text/css" />
    <link href="<?= base_url() ?>assets/libs/datatables.net-buttons-bs4/css/buttons.bootstrap4.min.css" rel="stylesheet" type="text/css" />
    <link href="<?= base_url() ?>assets/libs/datatables.net-select-bs4/css//select.bootstrap4.min.css" rel="stylesheet" type="text/css" />
    <!-- third party css end -->

    <!-- App css -->
    <link href="<?= base_url('assets/css/bootstrap-material.min.css') ?>" rel="stylesheet" type="text/css" id="bs-default-stylesheet" />
    <link href="<?= base_url('assets/css/app-material.min.css') ?>" rel="stylesheet" type="text/css" id="app-default-stylesheet" />

    <link href="<?= base_url('assets/css/bootstrap-material-dark.min.css') ?>" rel="stylesheet" type="text/css" id="bs-dark-stylesheet" />
    <link href="<?= base_url('assets/css/app-material-dark.min.css') ?>" rel="stylesheet" type="text/css" id="app-dark-stylesheet" />

    <!-- icons -->
    <link href="<?= base_url('assets/css/icons.min.css') ?>" rel="stylesheet" type="text/css" />

    <!-- C3 Chart css -->
    <link href="<?= base_url() ?>/assets/libs/c3/c3.min.css" rel="stylesheet" type="text/css" />
</head>

<body class="loading"  data-layout='{"mode": "light", "width": "fluid", "menuPosition": "fixed", "sidebar": { "color": "light", "size": "default", "showuser": true}, "topbar": {"color": "light"}, "showRightSidebarOnPageLoad": true}'>

    <!-- Begin page -->
    <div id="wrapper">

        <!-- Topbar Start -->
        <div class="navbar-custom">
            <div class="container-fluid">
                <ul class="list-unstyled topnav-menu float-right mb-0">

                    <li class="dropdown notification-list topbar-dropdown">
                        <a class="nav-link dropdown-toggle nav-user mr-0 waves-effect waves-light" data-toggle="dropdown" href="#" role="button" aria-haspopup="false" aria-expanded="false">

                            <?php if(!empty($this->session->userdata('foto'))) { ?> 
                                <img src="<?= base_url() ?>assets/images/pengguna/<?= $this->session->userdata('foto') ?>" alt="Foto" title="contact-img" class="" />
                            <?php } else { ?>
                                <img src="<?= base_url() ?>assets/images/pengguna/default-user.png" alt="Foto" title="contact-img" class="" />
                            <?php } ?>

                            <span class="pro-user-name ml-1">
                                <?= $this->session->userdata('nama_lengkap')?> <i class="mdi mdi-chevron-down"></i>
                            </span>
                        </a>
                        <div class="dropdown-menu dropdown-menu-right profile-dropdown ">
                            <!-- item-->
                            <div class="dropdown-header noti-title">
                                <h6 class="text-overflow m-0"> <?= $this->session->userdata('email')?></h6>
                            </div>

                            <!-- item-->
                            <a href="<?= base_url('admin/profil') ?>" class="dropdown-item notify-item">
                                <i class="fe-user"></i>
                                <span>Profil</span>
                            </a>

                            <div class="dropdown-divider"></div>

                            <!-- item-->
                            <a href="<?= base_url('admin/keluar') ?>" class="dropdown-item notify-item">
                                <i class="fe-log-out"></i>
                                <span>Keluar</span>
                            </a>

                        </div>
                    </li>

                </ul>

                <!-- LOGO -->
                <div class="logo-box">
                    <a href="<?= base_url() ?>admin/dasbor" class="logo logo-dark text-center">
                        <span class="logo-sm">
                            <img src="<?= base_url() ?>assets/images/logo-kota-jayapura-500.png" alt="" height="50">
                            <!-- <span class="logo-lg-text-light">UBold</span> -->
                        </span>
                        <span class="logo-lg">
                            <img src="<?= base_url() ?>assets/images/logo-kota-jayapura-700-dark.png" alt="" height="60">
                            <!-- <span class="logo-lg-text-light">U</span> -->
                        </span>
                    </a>

                    <a href="<?= base_url() ?>admin/dasbor" class="logo logo-light text-center">
                        <span class="logo-sm">
                            <img src="<?= base_url() ?>assets/images/logo-kota-jayapura-500.png" alt="" height="50">
                        </span>
                        <span class="logo-lg">
                            <img src="<?= base_url() ?>assets/images/logo-kota-jayapura-700.png" alt="" height="60">
                        </span>
                    </a>
                </div>

                <ul class="list-unstyled topnav-menu topnav-menu-left m-0">
                    <li>
                        <button class="button-menu-mobile waves-effect waves-light">
                            <i class="fe-menu"></i>
                        </button>
                    </li>

                    <li>
                        <!-- Mobile menu toggle (Horizontal Layout)-->
                        <a class="navbar-toggle nav-link" data-toggle="collapse" data-target="#topnav-menu-content">
                            <div class="lines">
                                <span></span>
                                <span></span>
                                <span></span>
                            </div>
                        </a>
                        <!-- End mobile menu toggle-->
                    </li>

                    <li class="dropdown d-none d-xl-block">
                        <a class="nav-link dropdown-toggle waves-effect waves-light" href="<?= base_url() ?>admin/dasbor" role="button" aria-haspopup="false" aria-expanded="false">
                            <h3 class="mt-3 text-uppercase">
                                Sistem Informasi Pengelolaan Pajak Air Tanah
                            </h3>
                        </a>
                    </li>

                </ul>
                <div class="clearfix"></div>
            </div>
        </div>
        <!-- end Topbar -->

        <!-- ========== Left Sidebar Start ========== -->
        <div class="left-side-menu">

            <div class="h-100" data-simplebar>

                <!-- User box -->
                <div class="user-box text-center">

                    <?php if(!empty($this->session->userdata('foto'))) { ?> 
                        <img src="<?= base_url() ?>assets/images/pengguna/<?= $this->session->userdata('foto') ?>" alt="Foto" title="contact-img" class="avatar-xxl img img-thumbnail" />
                    <?php } else { ?>
                        <img src="<?= base_url() ?>assets/images/pengguna/default-user.png" alt="Foto" title="contact-img" class="" />
                    <?php } ?>

                    <div class="dropdown">
                        <a href="javascript: void(0);" class="text-dark font-weight-normal dropdown-toggle h5 mt-2 mb-1 d-block" data-toggle="dropdown"><?= $this->session->userdata('name')?></a>
                         <div class="dropdown-menu user-pro-dropdown">
              
                                         <!-- item-->
                            <a href="<?= base_url() ?>admin/profil" class="dropdown-item notify-item">
                                <i class="fe-user mr-1"></i>
                                <span>Profil</span>
                            </a>

                            <!-- item-->
                            <a href="<?= base_url() ?>admin/login" class="dropdown-item notify-item">
                                <i class="fe-log-out mr-1"></i>
                                <span>Keluar</span>
                            </a>

                        </div>
                    </div>
                    <p class="text-muted p-0 m-0"><b><?php echo $this->session->userdata("nama_lengkap"); ?></b></p>
                    <p class="text-muted"><?php echo $this->session->userdata("email"); ?></p>
                </div>

                <!--- Sidemenu -->
                <div id="sidebar-menu">

                    <ul id="side-menu">

                        <li>
                            <a href="<?= base_url('admin/dasbor') ?>" data-toggle="">
                                <i data-feather="home"></i>
                                <span> Dasbor </span>
                            </a>
                        </li>

                        <li class="menu-title">Menu Utama</li>

                        <li>
                            <a href="#sidebarInventaris" data-toggle="collapse">
                                <i data-feather="book-open"></i>
                                <span> Wajib Pajak </span>
                                <span class="menu-arrow"></span>
                            </a>
                            <div class="collapse" id="sidebarInventaris">
                                <ul class="nav-second-level">
                                    <li>
                                        <a href="<?= base_url('admin/wajibpajak') ?>">Semua</a>
                                    </li>
                                    <li>
                                        <a href="<?= base_url('admin/wajibpajak/tambah') ?>">Tambah Baru</a>
                                    </li>
                                </ul>
                            </div>
                        </li>

                        <li>
                            <a href="#sidebarRekapan" data-toggle="collapse">
                                <i data-feather="book-open"></i>
                                <span> Rekapan Wajib Pajak </span>
                                <span class="menu-arrow"></span>
                            </a>
                            <div class="collapse" id="sidebarRekapan">
                                <ul class="nav-second-level">
                                    <li>
                                        <a href="<?= base_url('admin/non-niaga') ?>">Non Niaga</a>
                                    </li>
                                    <li>
                                        <a href="<?= base_url('admin/niaga-kecil') ?>">Niaga Kecil</a>
                                    </li>
                                    <li>
                                        <a href="<?= base_url('admin/industri-kecil') ?>">Industri Kecil</a>
                                    </li>
                                    <li>
                                        <a href="<?= base_url('admin/niaga-besar') ?>">Niaga Besar</a>
                                    </li>
                                    <li>
                                        <a href="<?= base_url('admin/industri-besar') ?>">Industri Besar</a>
                                    </li>
                                </ul>
                            </div>
                        </li>

                        <li>
                            <a href="#sidebarTentangPajak" data-toggle="collapse">
                                <i data-feather="book"></i>
                                <span> Tentang Pajak </span>
                                <span class="menu-arrow"></span>
                            </a>
                            <div class="collapse" id="sidebarTentangPajak">
                                <ul class="nav-second-level">
                                    <li>
                                        <a href="<?= base_url('admin/tentangpajak/dasarpengenaanpajak') ?>">Dasar Pengenaan Pajak</a>
                                    </li>
                                    <li>
                                        <a href="<?= base_url('admin/tentangpajak/nilaiperolehanair') ?>">Nilai Perolehan Air (NPA)</a>
                                    </li>
                                    <li>
                                        <a href="<?= base_url('admin/tentangpajak/penentuannpa') ?>">Penentuan NPA</a>
                                    </li>
                                </ul>
                            </div>
                        </li>

                        <li>
                            <a href="#sidebarPengguna" data-toggle="collapse">
                                <i data-feather="users"></i>
                                <span> Pengguna </span>
                                <span class="menu-arrow"></span>
                            </a>
                            <div class="collapse" id="sidebarPengguna">
                                <ul class="nav-second-level">
                                    <li>
                                        <a href="<?= base_url('admin/pengguna') ?>">Semua</a>
                                    </li>
                                    <li>
                                        <a href="<?= base_url('admin/pengguna/tambah') ?>">Tambah Baru</a>
                                    </li>
                                </ul>
                            </div>
                        </li>

                        <li>
                            <a href="#sidebarBerita" data-toggle="collapse">
                                <i data-feather="globe"></i>
                                <span> Berita </span>
                                <span class="menu-arrow"></span>
                            </a>
                            <div class="collapse" id="sidebarBerita">
                                <ul class="nav-second-level">
                                    <li>
                                        <a href="<?= base_url('admin/berita') ?>">Semua</a>
                                    </li>
                                    <li>
                                        <a href="<?= base_url('admin/berita/tambah') ?>">Tambah Baru</a>
                                    </li>
                                </ul>
                            </div>
                        </li>

                        <li>
                            <a href="#sidebarPengaturan" data-toggle="collapse">
                                <i data-feather="settings"></i>
                                <span> Pengaturan </span>
                                <span class="menu-arrow"></span>
                            </a>
                            <div class="collapse" id="sidebarPengaturan">
                                <ul class="nav-second-level">
                                    <li>
                                        <a href="<?= base_url('admin/pengaturan/informasisitus') ?>">Informasi Situs</a>
                                    </li>
                                    <li>
                                        <a href="<?= base_url('admin/pengaturan/logo') ?>">Logo</a>
                                    </li>
                                </ul>
                            </div>
                        </li>

                    </ul>

                </div>
                <!-- End Sidebar -->

                <div class="clearfix"></div>

            </div>
            <!-- Sidebar -left -->

        </div>

        <!-- Left Sidebar End -->