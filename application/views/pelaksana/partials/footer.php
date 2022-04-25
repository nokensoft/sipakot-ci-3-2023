        <!-- Footer Start -->
        <footer class="footer">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-6">
                        <?= $footer_text['isi'] ?>
                    </div>
                    <div class="col-md-6">
                        <div class="text-md-right footer-links d-none d-sm-block">
                            <?= $footer_text_right['isi'] ?>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        <!-- end Footer -->

    </div>

    <!-- ============================================================== -->
    <!-- End Page content -->
    <!-- ============================================================== -->







</div>
<!-- END wrapper -->


<script>
    window.setTimeout(function() {
        $(".alert").fadeTo(500, 0).slideUp(500, function() {
            $(this).remove();
        });
    }, 5000);
</script>

<!-- Vendor js -->
<script src="<?= base_url('assets/js/vendor.min.js') ?>"></script>

<!-- Plugins js-->
<script src="<?= base_url('assets/libs/flatpickr/flatpickr.min.js') ?>"></script>
<!-- <script src="<?= base_url() ?>assets/libs/apexcharts/apexcharts.min.js"></script> -->

<script src="<?= base_url('assets/libs/selectize/js/standalone/selectize.min.js') ?>"></script>

<!-- Dashboar 1 init js-->
<script src="<?= base_url('assets/js/pages/dashboard-1.init.js') ?>"></script>

<!-- Tippy js-->
<script src="<?= base_url('assets/libs/tippy.js/tippy.all.min.js') ?>"></script>

<!-- App js-->
<script src="<?= base_url('assets/js/app.min.js') ?>"></script>

<script src="<?php echo base_url('assets/libs/ckeditor/ckeditor.js') ?>"></script>
<script>
    $(function() {
        CKEDITOR.replace('editor')
    });
</script>




<!-- third party js -->
<script src="<?= base_url() ?>assets/libs/datatables.net/js/jquery.dataTables.min.js"></script>
<script src="<?= base_url() ?>assets/libs/datatables.net-bs4/js/dataTables.bootstrap4.min.js"></script>
<script src="<?= base_url() ?>assets/libs/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
<script src="<?= base_url() ?>assets/libs/datatables.net-responsive-bs4/js/responsive.bootstrap4.min.js"></script>
<script src="<?= base_url() ?>assets/libs/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
<script src="<?= base_url() ?>assets/libs/datatables.net-buttons-bs4/js/buttons.bootstrap4.min.js"></script>
<script src="<?= base_url() ?>assets/libs/datatables.net-buttons/js/buttons.html5.min.js"></script>
<script src="<?= base_url() ?>assets/libs/datatables.net-buttons/js/buttons.flash.min.js"></script>
<script src="<?= base_url() ?>assets/libs/datatables.net-buttons/js/buttons.print.min.js"></script>
<script src="<?= base_url() ?>assets/libs/datatables.net-keytable/js/dataTables.keyTable.min.js"></script>
<script src="<?= base_url() ?>assets/libs/datatables.net-select/js/dataTables.select.min.js"></script>
<script src="<?= base_url() ?>assets/libs/pdfmake/build/pdfmake.min.js"></script>
<script src="<?= base_url() ?>assets/libs/pdfmake/build/vfs_fonts.js"></script>
<!-- third party js ends -->

<!-- Datatables init -->
<script src="<?= base_url() ?>assets/js/pages/datatables.init.js"></script>


</body>

</html>