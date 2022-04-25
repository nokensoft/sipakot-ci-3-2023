<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
</head>
<body>
    <div class="container my-5">
        <h1>Daftar</h1>
        <?= $this->session->userdata('message') ?>

        <?= form_open_multipart('Auth/daftar'); ?>

            <div class="form-group">
                <label for="nama_lengkap">Nama Lengkap</label>
                <input type="text" name="nama_lengkap" value="<?= set_value('nama_lengkap') ?>" placeholder="Tulis nama lengkap di sini" class="form-control">
                <?= form_error('nama_lengkap', '<small class="text-danger">', '</small>'); ?>
            </div>

            <div class="form-group">
                <label for="nama_pengguna">Nama Pengguna</label>
                <input type="text" name="nama_pengguna" value="<?= set_value('nama_pengguna') ?>" placeholder="Tulis nama pengguna di sini" class="form-control">
                <?= form_error('nama_pengguna', '<small class="text-danger">', '</small>'); ?>
            </div>

            <div class="form-group">
                <label for="kata_sandi1">Kata Sandi</label>
                <input type="password" name="kata_sandi1" value="" placeholder="Tulis kata sandi di sini" class="form-control">
                <?= form_error('kata_sandi1', '<small class="text-danger">', '</small>'); ?>
            </div>

            <div class="form-group">
                <label for="kata_sandi2">Konfirmasi Kata Sandi</label>
                <input type="password" name="kata_sandi2" value="" placeholder="Tulis kata sandi di sini" class="form-control">
            </div>

            <div class="form-group">
                <hr>
                <input type="submit" value="Kirim" class="btn btn-primary">
            </div>

        <?= form_close() ?>
    </div>
</body>
</html>