<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <title>Login</title>
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
    <link href="assets/css/icons.min.css" rel="stylesheet" type="text/css" />

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

<body class="loading bg-dark text-uppercase" data-layout='{"mode": "light", "width": "fluid", "menuPosition": "fixed", "sidebar": { "color": "light", "size": "default", "showuser": true}, "topbar": {"color": "dark"}, "showRightSidebarOnPageLoad": true}'>

    <div class="account-pages mt-5 mb-5">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-8 col-lg-6 col-xl-6">
                    <div class="card bg-pattern shadow-lg">

                        <div class="card-body p-4">

                            <div class="text-center w-75 m-auto">
                                <div class="auth-logo">
                                    <a href="<?= base_url() ?>admin" class="logo logo-dark text-center">
                                        <span class="logo-lg">
                                            <img src="<?= base_url() ?>assets/images/logo-kota-jayapura-700-dark.png" alt="" height="100px">
                                        </span>
                                    </a>

                                    <a href="index.html" class="logo logo-light text-center">
                                        <span class="logo-lg">
                                            <img src="<?= base_url() ?>assets/images/logo-kota-jayapura-700.png" alt="" height="100px">
                                        </span>
                                    </a>
                                </div>
                                <h1 class="text-uppercase pt-3 font-weight-bold display-4">SIPAKOT</h1>
                                <p class="text-muted mb-4 mt-3">SISTEM INFORMASI PENGELOLAAN PAJAK AIR TANAH<br> PEMERINTAH KOTA JAYAPURA</p>
                            </div>

                            <?= $this->session->flashdata('message') ?>

                            <form method="POST" action="<?= base_url() ?>registrasi">

                                <div class="form-group mb-3">
                                    <label for="nama_lengkap">NAMA LENGKAP</label>
                                    <input class="form-control form-control-lg" type="text" id="nama_lengkap" placeholder="Masukan nama lengkap" name="nama_lengkap">
                                    <?= form_error('nama_lengkap', '<small class="text-danger">', '</small>'); ?>
                                </div>

                                <div class="form-group mb-3">
                                    <label for="email">EMAIL</label>
                                    <input class="form-control form-control-lg" type="email" id="email" placeholder="Masukan email" name="email">
                                    <?= form_error('email', '<small class="text-danger">', '</small>'); ?>
                                </div>

                                <div class="form-group mb-3">
                                    <label for="kata_sandi">KATA SANDI</label>
                                    <div class="input-group input-group-merge">
                                        <input type="password" id="kata_sandi" class="form-control form-control-lg" placeholder="Maukan kata sandi" name="kata_sandi1">
                                        <div class="input-group-append" data-password="false">
                                            <div class="input-group-text">
                                                <span class="password-eye font-12"></span>
                                            </div>
                                        </div>
                                    </div>
                                    <?= form_error('kata_sandi1', '<small class="text-danger">', '</small>'); ?>
                                </div>

                                <div class="form-group mb-3">
                                    <label for="kata_sandi">KONFIRMASI KATA SANDI</label>
                                    <div class="input-group input-group-merge">
                                        <input type="password" id="kata_sandi" class="form-control form-control-lg" placeholder="Maukan kata sandi" name="kata_sandi2">
                                        <div class="input-group-append" data-password="false">
                                            <div class="input-group-text">
                                                <span class="password-eye font-12"></span>
                                            </div>
                                        </div>
                                    </div>
                                    <?= form_error('kata_sandi2', '<small class="text-danger">', '</small>'); ?>
                                </div>

                                <div class="form-group mb-0 text-center">
                                    <button class="btn btn-primary btn-block btn-lg rounded" type="submit"><i class="fas fa-lock-open mr-1"></i> MASUK </button>
                                </div>

                            </form>

                        </div> <!-- end card-body -->
                    </div>
                    <!-- end card -->

                    <div class="row mt-3">
                        <div class="col-12 text-center">
                            <p> <a href="auth-recoverpw.html" class="text-white-50 ml-1">LUPA KATA SANDI?</a></p>
                        </div> <!-- end col -->
                    </div>
                    <!-- end row -->

                </div> <!-- end col -->
            </div>
            <!-- end row -->
        </div>
        <!-- end container -->
    </div>
    <!-- end page -->


    <footer class="footer footer-alt text-white-50">
        <script>
            document.write(new Date().getFullYear())
        </script> &copy; Dikembangkan oleh <strong><a href="" class="text-white-50">SaCode</a> </strong>
    </footer>

    <!-- Vendor js -->
    <script src="<?= base_url() ?>assets/js/vendor.min.js"></script>

    <!-- App js -->
    <script src="<?= base_url() ?>assets/js/app.min.js"></script>

</body>

</html>