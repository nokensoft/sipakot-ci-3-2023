
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
    <title>Data Wajib Pajak - <?=$judul?> </title>
    <!-- CSS only -->
    <link rel="stylesheet" href="<?=base_url()?>assets/css/pdf.css">
</head>
<body>
    <div class="judul">
        <h1> Data Wajib Pajak  </h1>
        <h3> <?=$judul?> </h3>
    </div>
    <br><br><br>
    </p>
     <div>
            <table border="1">
            <tr>
                <th>No</th>
                <th>Nama Usaha</th>
                <th>Alamat Usaha</th>
                <th>Pemilik Usaha</th>
                <th>Email Pemilik</th>
            </tr>
            <?php $i=1;
            foreach($wajib_pajak_sortir as $pajak):
            ?>
                <tr>
                    <td class="no"><?=$i++?>.</td>
                    <td><?=$pajak["usaha_nama"]?></td>
                    <td><?=$pajak["usaha_alamat"]?></td>
                    <td><?=$pajak["pemilik_nama"]?></td>
                    <td><?=$pajak["pemilik_email"]?></td>
                </tr>
            <?php endforeach ?>    
        </table>   
        <div class="ttd" style="text-align: center; margin-left:500px">
                <br>
            <div>Mengetahui, 
            <br>
            Kepala Dinas Lingkungan Hidup dan Kebersihan Kota Jayapura
            </div>
            <img  width="30%" src="<?=base_url('assets/images/info_tagihan/stempel_ttd.png')?>" alt="">
            <div style="font-weight:bold">
                Ir. DOLFINA JECE MANO, M.Si <br>
                Pembina Tk. 1 <br>
                NIP. 19671223 199503 2 001
            </div>

        </div> 
     </div>
</body>
</html>

