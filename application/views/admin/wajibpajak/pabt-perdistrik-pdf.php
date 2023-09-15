
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
    <title>Data PABT Wajib Pajak Distirk <?= $distrik?> Tahun <?=$tahun?>   </title>
    <!-- CSS only -->
    <link rel="stylesheet" href="<?=base_url()?>assets/css/pdf.css">
    <style>
        .font-weight-bold
        {
            font-weight:bold;
            border: 1px solid black;
        }
        table {
    border: 1px solid black;
    border-collapse: collapse;
    width: 100%;
    font-size: 10px;
  }
  .field-data{
    border: 1px solid black;
  }
  .center{
    text-align: center;
  }
    </style>
</head>
<body>
   <div class="judul">
        <h1> Data PABT Wajib Pajak  </h1>
        <h3> Distrik <?= $distrik?> Tahun <?=$tahun?> </h3>
    </div>
    <br><br>
        <!-- start table  -->
        <table>
                <tr>
                    <td class="font-weight-bold">No</td>
                    <td class="font-weight-bold">Nama Usaha</td>
                    <th class="font-weight-bold">Alamat Usaha</th>
                    <th class="font-weight-bold">Pemilik Usaha</th>
                    <?php foreach($bulan as $b):?>
                        <th class="font-weight-bold"><?=$b['bulan']?></th>
                    <?php endforeach;?>
                    <th class="font-weight-bold">Total PABT</th>
                    

                </tr>
                <?php  $totalPabt = 0; $no = 1; $totalSemuaPabt = 0;
                    foreach ($wajib_pajak as $l) { ?>
                        <tr>
                            <td class="field-data">
                                <?=$no; ?>
                            </td>
                            <td class="field-data">
                                <?= $l['usaha_nama'];?>
                            </td> 
                            <td class="field-data"><?= $l['usaha_alamat']?> </td>
                            <td class="field-data"><?= $l['pemilik_nama']?> </td>                                                                             
                            <?php foreach($bulan as $b):?>
                                <td class="field-data">
                                    <?php
                                       error_reporting(0);
                                       $id_wp = $l['id_wp'];
                                       $id_bulan  = $b['id'];
                                       $queryPabt = $this->db->query("SELECT * FROM tagihan WHERE id_wp = '$id_wp' AND tahun = '$tahun' AND id_bulan = '$id_bulan' ")->result_array();
                                    ?>
                                        <?php if($queryPabt[0]['total_pabt'] == null){
                                        echo '-';
                                        }else{
                                         echo tanpa_rupiah($queryPabt[0]['total_pabt']);
                                        }; 
                                        
                                        $totalPabt = $queryPabt[0]['total_pabt'] + $totalPabt;
                             
                                        ?>
                                    </td>
                            <?php endforeach;?>   
                            <?php   $totalSemuaPabt = $totalSemuaPabt + $totalPabt; ?>
                                 <td class="field-data" ><?php echo tanpa_rupiah($totalPabt);  $totalPabt = 0; ?></td>      
                             
                                </tr>
                    <?php $no++;} ?>
                    <tr>
                        <td class="field-data center" colspan="4"> Total</td>
                        <?php foreach($bulan as $b):?>
                                    <?php  $id_bulan  = $b['id'];
                                        $queryTotal = $this->db->query("SELECT sum(total_pabt) as total FROM tagihan, wajib_pajak WHERE wajib_pajak.id_wp = tagihan.id_wp  AND tagihan.tahun = '$tahun' AND tagihan.id_bulan = '$id_bulan'")->result_array();
                               
                                   
                                    ?>

                            <td class="field-data"><?php echo tanpa_rupiah($queryTotal[0]['total']);      ?></td> 
                        <?php endforeach;?>       
                                <td class="field-data" ><?php echo tanpa_rupiah( $totalSemuaPabt);?></td> 
                   </tr>
        </table>
        <!-- end table  -->
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
</body>
</html>

