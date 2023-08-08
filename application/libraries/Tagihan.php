<?php 
    Class Tagihan{
        function hitung($usaha_kategori, $harga_baku, $pajak_pabt, $kualitas, $persentasi_sda, $persentasi_kompensasi, $volume)
        {
          $jenisUsaha = $usaha_kategori;
            if (isset($jenisUsaha)) {
                $jenisUsaha = $jenisUsaha; // Ambil id jenis usaha
                if (isset($jenisUsaha) && $jenisUsaha == 1) {
                    $judul_jenisUsaha = 'Non Niaga';
                    $nilai1 = 1;
                    $nilai2 = 1.1;
                    $nilai3 = 1.2;
                    $nilai4 = 1.3;
                    $nilai5 = 1.4;
                } elseif (isset($jenisUsaha) && $jenisUsaha == 2) {
                    $judul_jenisUsaha = 'Niaga Kecil';
                    $nilai1 = 2;
                    $nilai2 = 2.2;
                    $nilai3 = 2.4;
                    $nilai4 = 2.6;
                    $nilai5 = 2.8;
                } elseif (isset($jenisUsaha) && $jenisUsaha == 3) {
                    $judul_jenisUsaha = 'Industri Kecil';
                    $nilai1 = 3;
                    $nilai2 = 3.3;
                    $nilai3 = 3.6;
                    $nilai4 = 3.9;
                    $nilai5 = 4.5;
                } elseif (isset($jenisUsaha) && $jenisUsaha == 4) {
                    $judul_jenisUsaha = 'Niaga Besar';
                    $nilai1 = 4;
                    $nilai2 = 4.4;
                    $nilai3 = 4.8;
                    $nilai4 = 5.2;
                    $nilai5 = 5.6;
                } elseif (isset($jenisUsaha) && $jenisUsaha == 5) {
                    $judul_jenisUsaha = 'Industri Besar';
                    $nilai1 = 5;
                    $nilai2 = 5.5;
                    $nilai3 = 6.0;
                    $nilai4 = 6.5;
                    $nilai5 = 7.0;
                }
            }
        
            if (isset($harga_baku) && $harga_baku != '') {
                $hargaBaku = $harga_baku; // ambil nilai harga baku
            };
            if (isset($pajak_pabt) && $pajak_pabt != '') {
                $pajakPABT = $pajak_pabt; // ambil pajak PABT
            };
            if (isset($kualitas)) {
                 $jml1A = $kualitas * $persentasi_sda;
            };
            if (isset($nilai1)) {
                  $jml1B = $nilai1 * $persentasi_kompensasi;
            };
            $fna1 = $jml1A + $jml1B; 
            if (isset($kualitas))
            {
                $jml2A = $kualitas * $persentasi_sda;
            };
            if (isset($nilai2)) 
            {
                $jml2B = $nilai2 * $persentasi_kompensasi;
            };
            $fna2 = $jml2A + $jml2B;
            if (isset($kualitas))
            {
                $jml3A = $kualitas * $persentasi_sda;
            };
            if (isset($nilai3))
            {
                $jml3B = $nilai3 * $persentasi_kompensasi;
            };
            $fna3 = $jml3A + $jml3B;
           if (isset($kualitas))
            {
             $jml4A = $kualitas * $persentasi_sda;
            }

            if (isset($nilai4))
            {
                 $jml4B = $nilai4 * $persentasi_kompensasi;
            } 
            $fna4 = $jml4A + $jml4B;
        
           if (isset($kualitas)) 
           {
             $jml5A = $kualitas * $persentasi_sda;
           }
        
           if (isset($nilai5)) {
             $jml5B = $nilai5 * $persentasi_kompensasi; 
             
            }
            $fna5 = $jml5A + $jml5B;
            // $volumeAirTanah = round($volume);
            $volumeAirTanah = $volume;
            if ($volumeAirTanah > 50) {
                $volume1 = 50;
                $nilaiSisah1 = $volumeAirTanah - $volume1;
            };
            $jmlPenagihan1 = $volume1 * $fna1 * $hargaBaku;

            if(!empty($volume1)) {
                $jmlPenagihan1 = $volume1 * $fna1 * $hargaBaku;
            } elseif(!empty($nilaiSisah1)){
                $jmlPenagihan1 = $nilaiSisah1 * $fna2 * $hargaBaku;
            } 
            else {
                $jmlPenagihan1 = $volumeAirTanah * $fna2 * $hargaBaku;
            }

            
            if ($volumeAirTanah > 500) {
                $volume2 = 450;
                $nilaiSisah2 = $volumeAirTanah - ($volume2 + $volume1);
            } 

            if(!empty($volume2)) {
                $jmlPenagihan2 = $volume2 * $fna2 * $hargaBaku;
            } elseif(!empty($nilaiSisah1)){
                $jmlPenagihan2 = $nilaiSisah1 * $fna2 * $hargaBaku;
            } 
            else {
                $jmlPenagihan2 = 0;
            }

            if ($volumeAirTanah > 1000) {
                $volume3 = 500;
                $nilaiSisah3 = $volumeAirTanah - ($volume3 + $volume2 + $volume1);
            }

            if(!empty($volume3)) {
                $jmlPenagihan3 = $volume3 * $fna3 * $hargaBaku;

            } elseif(!empty($nilaiSisah2)){
                $jmlPenagihan3 = $nilaiSisah2 * $fna3 * $hargaBaku;
            } else {
                $jmlPenagihan3 = 0;
            }

            if ($volumeAirTanah > 2500) {
                $volume4 = 1500;
                $nilaiSisah4 = $volumeAirTanah - ($volume4 + $volume3 + $volume2 + $volume1);
            }
            if(!empty($volume4)) {
                $jmlPenagihan4 = $volume4 * $fna4 * $hargaBaku;
            } elseif(!empty($nilaiSisah3)){
                $jmlPenagihan4 = $nilaiSisah3 * $fna4 * $hargaBaku;
            } else {
                $jmlPenagihan4 = 0;
            }

            if ($volumeAirTanah > 2500) {
                $nilaiSisah5 = $volumeAirTanah - ($volume4 + $volume3 + $volume2 + $volume1);
            }

            if(!empty($nilaiSisah5)) {
                $jmlPenagihan5 = $nilaiSisah5 * $fna5 * $hargaBaku;
            } else {
                $jmlPenagihan5 = 0;
            }
            if (isset($nilaiSisah1) && isset($nilaiSisah2) && isset($nilaiSisah3) && isset($nilaiSisah4) && isset($nilaiSisah5)) {
                $total = $volume1 + $volume2 + $volume3 + $volume4 + $nilaiSisah5;
            }
            $totalNPA = $jmlPenagihan1 + $jmlPenagihan2 + $jmlPenagihan3 + $jmlPenagihan4 + $jmlPenagihan5;
            $totalPajakPABT = $pajakPABT * $totalNPA;

            return ($totalPajakPABT);

        }
            
        
   
    }


?>