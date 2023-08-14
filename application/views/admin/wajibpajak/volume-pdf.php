
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
    <title> <?=$judul2?> </title>
    <!-- CSS only -->
    <link rel="stylesheet" href="<?=base_url()?>assets/css/pdf.css">
</head>
<body>
   <div class="judul">
        <h3> <?=$judul?> </h3>
    </div>
    <br><br>
     <div>
            <table border="1">
            <tr>
                <th>No</th>
                <th>Nama Usaha</th>
                <th>Alamat Usaha</th>
                <th>Pemilik Usaha</th>
                <th>Volume</th>
                <th>Jumlah Kamar (Usaha Kos)</th>
            </tr>
            <?php $i=1; foreach($wp as $data): ?>
                <tr>
                    <td class="no"><?=$i++?>.</td>
                    <td><?=$data["usaha_nama"]?></td>
                    <td><?=$data["usaha_alamat"]?></td>
                    <td><?=$data["pemilik_nama"]?></td>
                    <td><?=volume_air($data["volume"])?></td>
                    <td><?=$data["usaha_kos_jml_kmr"]?></td>
                   
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

