
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta content="Aplikasi Pajak Air Tanah Dinas Lingkungan Hidup dan Kebersihan Kota Jayapura" name="description" />
    <meta content="SaCode Team" name="author" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <!-- App favicon -->
    <link rel="shortcut icon" href="<?=base_url()?>assets/images/favicon-cms-hr.png">
    <title>Sortir Wajib Pajak - <?=$judul?> </title>
    <!-- CSS only -->
    <link rel="stylesheet" href="<?=base_url()?>assets/css/pdf.css">
</head>
<body>
   
    <p class="judul"> Sortir Wajib Pajak <br> Distrik <?=$judul?>
    </p>
     <div>
            <table border="1">
            <tr>
                <th>No</th>
                <th>Nama Usaha</th>
                <th>Alamat Usaha</th>
                <th>Pemilik Usaha</th>
                <th>Nomor Telepon Pemilik</th>
                <th>Email Pemilik</th>
            </tr>
            <?php $i=1;
            foreach($wajib_pajak_sortir_distrik as $pajak):
            ?>
                <tr>
                    <td class="no"><?=$i++?>.</td>
                    <td><?=$pajak["usaha_nama"]?></td>
                    <td><?=$pajak["usaha_alamat"]?></td>
                    <td><?=$pajak["pemilik_nama"]?></td>
                    <td><?=$pajak["pemilik_telp"]?></td>
                    <td><?=$pajak["pemilik_email"]?></td>
                </tr>
            <?php endforeach ?>    
        </table>   
     </div>
</body>
</html>

