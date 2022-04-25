<ul class="list-group">

    <li class="list-group-item bg-dark">
        <h3 class="m-0 font-weight-bold text-white">Profil Usaha</h3>
    </li>

    <li class="list-group-item text-center">
        <?php if(!empty($wajib_pajak['usaha_logo'])) { ?> 
            <img src="<?= base_url() ?>assets/images/usaha_logo/<?=$wajib_pajak['usaha_logo'] ?>" alt="" class="img img-thumbnail" width="300px">
        <?php } else { ?> 
            <img src="<?= base_url() ?>assets/images/usaha_logo/default_image.png" alt="" class="img img-thumbnail" width="300px">
        <?php }?>
    </li>

    <li class="list-group-item">
        <label>Nama Usaha : </label>
        <strong style="font-weight:bold"><?= $wajib_pajak['usaha_nama'] ?></strong>
    </li>

    <li class="list-group-item">
        <label>Kategori Usaha : </label>
        <?php
        // query komponen usaha
        $queryKomponenUsaha = $this->db->query("SELECT * FROM pajak_kk WHERE id = " . $wajib_pajak['usaha_kategori']);
        $rowKomponenUsaha = $queryKomponenUsaha->row_array();
        ?>
        <strong style="font-weight:bold"><?= $rowKomponenUsaha['kriteria'] ?></strong>
    </li>

    <li class="list-group-item">
        <label>Alamat : </label>
        <strong style="font-weight:bold"><?= $wajib_pajak['usaha_alamat'] ?></strong>
    </li>

    <li class="list-group-item">
        <label>Nomor Telepon : </label>
        <strong style="font-weight:bold"><?= $wajib_pajak['usaha_telp'] ?></strong>
    </li>

    <li class="list-group-item">
        <label>Email : </label>
        <strong style="font-weight:bold"><?= $wajib_pajak['usaha_email'] ?></strong>
    </li>

</ul>

<ul class="list-group mt-3">
    <li class="list-group-item bg-dark text-light">
        <h3 class="m-0 font-weight-bold text-white">Profil Pemilik</h3>
    </li>
    <li class="list-group-item">
        <label>Nama Lengkap : </label>
        <strong style="font-weight:bold"><?= $wajib_pajak['pemilik_nama'] ?></strong>
    </li>
    <li class="list-group-item">
        <label>Email : </label>
        <strong style="font-weight:bold"><?= $wajib_pajak['pemilik_email'] ?></strong>
    </li>
    <li class="list-group-item">
        <label>Nomor Telepon : </label>
        <strong style="font-weight:bold"><?= $wajib_pajak['pemilik_telp'] ?></strong>
    </li>
    <li class="list-group-item">
        <label>Alamat : </label>
        <strong style="font-weight:bold"><?= $wajib_pajak['pemilik_alamat'] ?></strong>
    </li>
</ul>