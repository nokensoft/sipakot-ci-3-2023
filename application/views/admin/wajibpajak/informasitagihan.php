

                                                                            <table class="table table-bordered">
                                                                                <thead>
                                                                                    <tr>
                                                                                        <td>
                                                                                            <img src="<?= base_url() ?>assets/images/logo-kota-jayapura-700-dark.png" height="100" alt="">
                                                                                        </td>
                                                                                        <td class="text-center text-uppercase">
                                                                                            <h1>Informasi Tagihan Air Tanah</h1>
                                                                                        </td>
                                                                                    </tr>
                                                                                </thead>
                                                                                <tbody>
                                                                                    <tr>
                                                                                        <td>
                                                                                            Kepada Yth, <br>
                                                                                            <strong>Pimpinan Mega Waena Departement Store </strong>
                                                                                        </td>
                                                                                        <td>
                                                                                            ID Pelanggan : PABT / ... / DLHK / 2020 <br>
                                                                                            Tagihan Bulan : Desember <br>
                                                                                            Volume Penggunaan :
                                                                                            <?php echo volume_air($rowStatus['volume']); ?> <br>
                                                                                            Harga Baku :
                                                                                            <?php
                                                                                            $hargaBaku = 1200; // Harga baku sementara
                                                                                            echo rupiah($hargaBaku);
                                                                                            ?> <br>
                                                                                            Pajak PABT : <?= $pajak_pabt['isi'] * 100 ?>%
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td colspan="2">


                                                                                            <!-- ==========================================
                                                                                                START 0 - 50
                                                                                                ========================================== -->



                                                                                            <!-- start table  -->
                                                                                            <table class="table table-bordered">
                                                                                                <tbody class="bg-light text-dark">
                                                                                                    <tr>
                                                                                                        <td class="bg-dark text-light text-center align-middle">Volume Range</td>
                                                                                                        <td class="bg-dark text-light text-center">Volume (M³)</td>
                                                                                                        <td class="bg-dark text-light text-center">FNA</td>
                                                                                                        <td class="bg-dark text-light text-center">Harga Baku</td>
                                                                                                        <td class="bg-dark text-light text-center">Jumlah</td>
                                                                                                        <td rowspan="9" class="text-center font-weight-bold">
                                                                                                            Mengetahui,
                                                                                                            KEPALA DLHK KOTA JAYAPURA
                                                                                                            <br>
                                                                                                            <br>
                                                                                                            <br>
                                                                                                            <br>
                                                                                                            <br>
                                                                                                            <br>
                                                                                                            <br>
                                                                                                            <br>
                                                                                                            ALEX DEU, S.Pd.,M.Pd
                                                                                                            <br>
                                                                                                            PEMBINA TK.1
                                                                                                            <br>
                                                                                                            NIP. 129660921199002 1002
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                    <tr>
                                                                                                        <td class="bg-light text-dark text-center align-middle">Vol 0-50 M³</td>
                                                                                                        <td class="bg-light text-dark text-center">
                                                                                                            <?php
                                                                                                            echo $rowStatus['volume'];
                                                                                                            echo '<br>';
                                                                                                            echo '<br>';

                                                                                                            if ($rowStatus['volume'] > 50) {
                                                                                                                $volume1 = 50;
                                                                                                                $nilaiSisah1 = $rowStatus['volume'] - $volume1;
                                                                                                                echo 'Volume 1 : ' . $volume1;
                                                                                                                echo '<br>';
                                                                                                                echo 'Nilai Sisah 1 : ' . $nilaiSisah1;
                                                                                                                echo '<br>';
                                                                                                                echo '<br>';
                                                                                                            }

                                                                                                            ?>
                                                                                                        </td>
                                                                                                        <td class="bg-light text-dark text-center">
                                                                                                            <?php
                                                                                                            echo $jml1;
                                                                                                            ?>
                                                                                                        </td>
                                                                                                        <td class="bg-light text-dark text-center">
                                                                                                            <?php
                                                                                                            echo rupiah($hargaBaku);
                                                                                                            ?>
                                                                                                        </td>
                                                                                                        <td class="bg-light text-dark text-center">
                                                                                                            <?php
                                                                                                            $jmlPenagihan1 = $volume1 * $jml1 * $hargaBaku;
                                                                                                            echo rupiah($jmlPenagihan1);
                                                                                                            ?>
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                    <tr>
                                                                                                        <td class="bg-light text-dark text-center align-middle">Vol 51-500 M³</td>
                                                                                                        <td class="bg-light text-dark text-center">
                                                                                                            <?php


                                                                                                            if ($rowStatus['volume'] > 500) {
                                                                                                                $volume2 = 450;
                                                                                                                $nilaiSisah2 = $rowStatus['volume'] - ($volume2 + $volume1);
                                                                                                                echo 'Volume 2 : ' . $volume2;
                                                                                                                echo '<br>';
                                                                                                                echo 'Nilai Sisah 2 : ' . $nilaiSisah2;
                                                                                                                echo '<br>';
                                                                                                                echo '<br>';
                                                                                                            } else {
                                                                                                                if (isset($nilaiSisah1)) {
                                                                                                                    echo $volume2 = 0;
                                                                                                                }
                                                                                                            }
                                                                                                            ?>
                                                                                                        </td>
                                                                                                        <td class="bg-light text-dark text-center">
                                                                                                            <?php
                                                                                                            echo $jml2;
                                                                                                            ?>
                                                                                                        </td>
                                                                                                        <td class="bg-light text-dark text-center">
                                                                                                            <?php
                                                                                                            echo rupiah($hargaBaku);
                                                                                                            ?>
                                                                                                        </td>
                                                                                                        <td class="bg-light text-dark text-center">
                                                                                                            <?php
                                                                                                            $jmlPenagihan2 = $volume2 * $jml2 * $hargaBaku;
                                                                                                            echo rupiah($jmlPenagihan2);
                                                                                                            ?>
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                    <tr>
                                                                                                        <td class="bg-light text-dark text-center align-middle">Vol 501-1000 M³</td>
                                                                                                        <td class="bg-light text-dark text-center">
                                                                                                            <?php


                                                                                                            if ($rowStatus['volume'] > 1000) {
                                                                                                                $volume3 = 500;
                                                                                                                $nilaiSisah3 = $rowStatus['volume'] - ($volume3 + $volume2 + $volume1);
                                                                                                                echo 'Volume 3 : ' . $volume3;
                                                                                                                echo '<br>';
                                                                                                                echo 'Nilai Sisah 3 : ' . $nilaiSisah3;
                                                                                                                echo '<br>';
                                                                                                                echo '<br>';
                                                                                                            } else {
                                                                                                                if (isset($nilaiSisah2)) {
                                                                                                                    echo $volume3 = 0;
                                                                                                                }
                                                                                                            }
                                                                                                            ?>
                                                                                                        </td>
                                                                                                        <td class="bg-light text-dark text-center">
                                                                                                            <?php
                                                                                                            echo $jml3;
                                                                                                            ?>
                                                                                                        </td>
                                                                                                        <td class="bg-light text-dark text-center">
                                                                                                            <?php
                                                                                                            echo rupiah($hargaBaku);
                                                                                                            ?>
                                                                                                        </td>
                                                                                                        <td class="bg-light text-dark text-center">
                                                                                                            <?php
                                                                                                            $volumee3 = $volume3;
                                                                                                            $jmlPenagihan3 = $volumee3 * $jml3 * $hargaBaku;
                                                                                                            echo rupiah($jmlPenagihan3);
                                                                                                            ?>
                                                                                                        </td>
                                                                                                    </tr>

                                                                                                    <tr>
                                                                                                        <td class="bg-light text-dark text-center align-middle">Vol 1001-2500 M³</td>
                                                                                                        <td class="bg-light text-dark text-center">
                                                                                                            <?php



                                                                                                            if ($rowStatus['volume'] > 2500) {
                                                                                                                $volume4 = 1500;
                                                                                                                $nilaiSisah4 = $rowStatus['volume'] - ($volume4 + $volume3 + $volume2 + $volume1);
                                                                                                                echo 'Volume 4 : ' . $volume4;
                                                                                                                echo '<br>';
                                                                                                                echo 'Nilai Sisah 4 : ' . $nilaiSisah4;
                                                                                                                echo '<br>';
                                                                                                                echo '<br>';
                                                                                                            } else {
                                                                                                                if (isset($nilaiSisah3)) {
                                                                                                                    echo $volume4 = 0;
                                                                                                                }
                                                                                                            }

                                                                                                            ?>
                                                                                                        </td>
                                                                                                        <td class="bg-light text-dark text-center">
                                                                                                            <?php
                                                                                                            echo $jml4;
                                                                                                            ?>
                                                                                                        </td>
                                                                                                        <td class="bg-light text-dark text-center">
                                                                                                            <?php
                                                                                                            echo rupiah($hargaBaku);
                                                                                                            ?>
                                                                                                        </td>
                                                                                                        <td class="bg-light text-dark text-center">
                                                                                                            <?php
                                                                                                            $volumee4 = $volume4;
                                                                                                            $jmlPenagihan4 = $volumee4 * $jml4 * $hargaBaku;
                                                                                                            echo rupiah($jmlPenagihan4);
                                                                                                            ?>
                                                                                                        </td>
                                                                                                    </tr>



                                                                                                    <tr>
                                                                                                        <td class="bg-light text-dark text-center align-middle">Vol &gt;2500 M³</td>
                                                                                                        <td class="bg-light text-dark text-center">
                                                                                                            <?php



                                                                                                            if ($rowStatus['volume'] > 2500) {
                                                                                                                $volume5 = 500;
                                                                                                                $nilaiSisah5 = $rowStatus['volume'] - ($volume5 + $volume4 + $volume3 + $volume2 + $volume1);
                                                                                                                echo 'Volume 5 : ' . $volume5;
                                                                                                                echo '<br>';
                                                                                                                echo 'Nilai Sisah 5 : ' . $nilaiSisah5;
                                                                                                                echo '<br>';
                                                                                                                echo '<br>';
                                                                                                            } else {
                                                                                                                if (isset($nilaiSisah4)) {
                                                                                                                    echo $volume5 = 0;
                                                                                                                }
                                                                                                            }

                                                                                                            ?>
                                                                                                        </td>
                                                                                                        <td class="bg-light text-dark text-center">
                                                                                                            <?php
                                                                                                            echo $jml5;
                                                                                                            ?>
                                                                                                        </td>
                                                                                                        <td class="bg-light text-dark text-center">
                                                                                                            <?php
                                                                                                            echo rupiah($hargaBaku);
                                                                                                            ?>
                                                                                                        </td>
                                                                                                        <td class="bg-light text-dark text-center">
                                                                                                            <?php
                                                                                                            $volumee5 = 500;
                                                                                                            $jmlPenagihan5 = $nilaiSisah5 * $jml5 * $hargaBaku;
                                                                                                            echo rupiah($jmlPenagihan5);
                                                                                                            ?>
                                                                                                        </td>
                                                                                                    </tr>


                                                                                                    <tr>
                                                                                                        <td class="bg-soft-dark text-dark text-center align-middle"></td>
                                                                                                        <td class="bg-soft-dark text-dark text-center">
                                                                                                            <?php


                                                                                                            if (isset($nilaiSisah1) && isset($nilaiSisah2) && isset($nilaiSisah3) && isset($nilaiSisah4) && isset($nilaiSisah5)) {

                                                                                                                $total = $volume1 + $volume2 + $volume3 + $volume4 + $nilaiSisah5;
                                                                                                                echo $total;
                                                                                                            }

                                                                                                            ?>
                                                                                                        </td>
                                                                                                        <td class="bg-soft-dark text-dark text-center"></td>
                                                                                                        <td class="bg-soft-dark text-dark text-center"></td>
                                                                                                        <td class="bg-soft-dark text-dark text-center"></td>
                                                                                                    </tr>


                                                                                                    <tr>
                                                                                                        <td class="bg-soft-dark text-dark text-center align-middle">NPA</td>
                                                                                                        <td class="bg-soft-dark text-dark text-center"></td>
                                                                                                        <td class="bg-soft-dark text-dark text-center"></td>
                                                                                                        <td class="bg-soft-dark text-dark text-center"></td>
                                                                                                        <td class="bg-soft-dark text-dark text-center">
                                                                                                            <?php
                                                                                                            $totalNPA = $jmlPenagihan1 + $jmlPenagihan2 + $jmlPenagihan3 + $jmlPenagihan4 + $jmlPenagihan5;
                                                                                                            echo rupiah($totalNPA);
                                                                                                            ?>
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                    <tr>
                                                                                                        <td class="bg-soft-dark text-dark text-center align-middle">PAJAK PABT</td>
                                                                                                        <td class="bg-soft-dark text-dark text-center"></td>
                                                                                                        <td class="bg-soft-dark text-dark text-center"></td>
                                                                                                        <td class="bg-soft-dark text-dark text-center"><?= $pajak_pabt['isi'] * 100 ?>%</td>
                                                                                                        <td class="bg-soft-dark text-dark text-center">
                                                                                                            <?php
                                                                                                            $pajakPABT = $pajak_pabt['isi'];
                                                                                                            $totalPajakPABT = $pajakPABT * $totalNPA;
                                                                                                            echo rupiah($totalPajakPABT);
                                                                                                            ?>
                                                                                                        </td>
                                                                                                    </tr>


                                                                                                </tbody>
                                                                                            </table>
                                                                                            <!-- end table  -->

                                                            

                                                                                            <!-- ==========================================
                                                                                                END 0 - 50
                                                                                                ========================================== -->



                                                                                        </td>
                                                                                    </tr>
                                                                                </tbody>
                                                                            </table>