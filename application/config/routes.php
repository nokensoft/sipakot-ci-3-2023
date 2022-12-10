<?php
defined('BASEPATH') or exit('No direct script access allowed');

/*
| -------------------------------------------------------------------------
| URI ROUTING
| -------------------------------------------------------------------------
| This file lets you re-map URI requests to specific controller functions.
|
| Typically there is a one-to-one relationship between a URL string
| and its corresponding controller class/method. The segments in a
| URL normally follow this pattern:
|
|	example.com/class/method/id/
|
| In some instances, however, you may want to remap this relationship
| so that a different class/function is called than the one
| corresponding to the URL.
|
| Please see the user guide for complete details:
|
|	https://codeigniter.com/user_guide/general/routing.html
|
| -------------------------------------------------------------------------
| RESERVED ROUTES
| -------------------------------------------------------------------------
|
| There are three reserved routes:
|
|	$route['default_controller'] = 'welcome';
|
| This route indicates which controller class should be loaded if the
| URI contains no data. In the above example, the "welcome" class
| would be loaded.
|
|	$route['404_override'] = 'errors/page_missing';
|
| This route will tell the Router which controller/method to use if those
| provided in the URL cannot be matched to a valid route.
|
|	$route['translate_uri_dashes'] = FALSE;
|
| This is not exactly a route, but allows you to automatically route
| controller and method names that contain dashes. '-' isn't a valid
| class or method name character, so it requires translation.
| When you set this option to TRUE, it will replace ALL dashes in the
| controller and method URI segments.
|
| Examples:	my-controller/index	-> my_controller/index
|		my-controller/my-method	-> my_controller/my_method
*/


$route['default_controller'] = 'beranda';
$route['404_override'] = '';
$route['translate_uri_dashes'] = FALSE;


/** 
 * ==========================================================
 * ROLE VISITOR
 * ==========================================================
*/


// BERANDA 

$route['beranda'] = 'Beranda';





/** 
 * ==========================================================
 * ROLE ADMINISTRATOR
 * ==========================================================
*/


// MASUK
$route['admin/masuk'] = 'Login/index';
$route['admin/keluar'] = 'Login/keluar';
$route['registrasi'] = 'Registrasi';




// PROFIL
// ==========================================================

// UBAH
$route['admin/profil/ubah'] = 'admin/profilubah';

// UBAH FOTO
$route['admin/profil/ubah/foto'] = 'admin/profilubahfoto';

// UBAH KATA SANDI
$route['admin/profil/ubah/katasandi'] = 'admin/profilubahkatasandi';




// WAJIP PAJAK
// ==========================================================

// INDEX
$route['admin/wajibpajak'] = 'admin/wajibpajak';

// SORTIR
$route['admin/wajibpajak/sortir/(:any)'] = 'admin/wajib_pajak_sortir/$1';

// SORTIR DISTRIK
$route['admin/wajibpajak/sortirdistrik/(:any)'] = 'admin/wajib_pajak_sortir_distrik/$1';

// SORTIR KELURAHAN
$route['admin/wajibpajak/sortirkelurahan/(:any)'] = 'admin/wajib_pajak_sortir_kelurahan/$1';

// CETAK PDF KATEGORI
$route['admin/wajibpajak/pdf/(:any)'] = 'admin/wajib_pajak_pdf/$1';

// CETAK PDF DISTRIK
$route['admin/wajibpajak/pdfdistrik/(:any)'] = 'admin/wajib_pajak_pdf_distrik/$1';

// CETAK PDF KELURAHAN
$route['admin/wajibpajak/cetakkelurahan/kelurahan'] = 'admin/wajib_pajak_pdf_kelurahan';

// SORTIR PABT
$route['admin/wajibpajak/pabt/(:any)'] = 'admin/wajib_pajak_pabt/$1';

// SORTIR PABT PERDISTRIK
$route['admin/wajibpajak/pabt-distrik/(:any)'] = 'admin/wajib_pajak_pabt_distrik/$1';

// SORTIR PABT WAJIB PAJAK PERTAHUN
$route['admin/wajibpajak/pabt-wp/(:any)'] = 'admin/wajib_pajak_pabt_pertahun/$1';

// CETAK PDF PABT
$route['admin/wajibpajak/cetak-pabt/(:any)'] = 'admin/wajib_pajak_pabt_pdf/$1';

// CETAK PDF PABT PERDISTRIK
$route['admin/wajibpajak/cetak-pabt-perdistrik/(:any)'] = 'admin/wajib_pajak_pabt_perdistrik_pdf/$1';

// INDEX SAMPAH
$route['admin/wajibpajak/sampah'] = 'admin/wajibpajak_sampah';

// TAMBAH
$route['admin/wajibpajak/tambah'] = 'admin/wajibpajaktambah';

// UBAH
$route['admin/wajibpajak/ubah/(:any)'] = 'admin/wajibpajakubah/$1';

// UBAH FOTO PEMILIK
$route['admin/wajibpajak/ubah/foto/pemilik/(:any)'] = 'admin/wajib_pajak_ubah_foto_pemilik/$1';

// UBAH FOTO USAHA
$route['admin/wajibpajak/ubah/foto/usaha/(:any)'] = 'admin/wajib_pajak_ubah_foto_usaha/$1';

// DETAIL
$route['admin/wajibpajak/detail/(:any)'] = 'admin/wajibpajakdetail/$1';

// HAPUS
// $route['admin/wajibpajak/hapus/(:any)'] = 'admin/wajibpajakhapus/$1';
$route['admin/wajibpajak/terhapus'] = 'admin/wajib_pajak_terhapus';

// TAGIHAN
// $route['admin/wajibpajak/tagihan/(:any)'] = 'admin/wajibpajaktagihan/$1';












// PENGGUNA
// ==========================================================

// INDEX
$route['admin/pengguna'] = 'admin/pengguna';
$route['admin/pengguna/terhapus'] = 'admin/pengguna_terhapus';

// TAMBAH
$route['admin/pengguna/tambah'] = 'admin/penggunatambah';
$route['admin/pengguna/tambah/proses'] = 'C_User/proses_tambah';

// UBAH
$route['admin/pengguna/ubah/(:any)'] = 'admin/penggunaubah/$1';
$route['admin/pengguna/ubah/proses/(:any)'] = 'C_User/proses_ubah/$1';

$route['admin/pengguna/ubah/foto/(:any)'] = 'admin/penggunaubahfoto/$1';
$route['admin/pengguna/ubah/nama-pengguna/(:any)'] = 'admin/penggunaubahnamapengguna/$1';
$route['admin/pengguna/ubah/kata-sandi/(:any)'] = 'admin/penggunaubahkatasandi/$1';

// DETAIL
$route['admin/pengguna/detail/(:any)'] = 'admin/penggunadetail/$1';

// HAPUS
$route['admin/pengguna/hapus/(:any)'] = 'admin/penggunahapus/$1';
$route['admin/pengguna/hapus/proses/(:any)'] = 'C_User/proses_hapus/$1';









// TENTANG PAJAK
// ==========================================================

// DASAR PENGENAAN PAJAK
// admin > dasar pengenaan pajak
$route['admin/tentangpajak/dasarpengenaanpajak'] = 'admin/dasarpengenaanpajak';

// pelaksana > dasar pengenaan pajak
$route['pelaksana/tentangpajak/dasarpengenaanpajak'] = 'pelaksana/dasarpengenaanpajak';

// dispenda > dasar pengenaan pajak
$route['dispenda/tentangpajak/dasarpengenaanpajak'] = 'dispenda/dasarpengenaanpajak';

// wajib pajak > dasar pengenaan pajak
$route['wajibpajak/tentangpajak/dasarpengenaanpajak'] = 'wajibpajak/dasarpengenaanpajak';



// NILAI PEROLEHAN AIR
// admin > dasar nilai perolehan air
$route['admin/tentangpajak/nilaiperolehanair'] = 'admin/nilaiperolehanair';

// pelaksana > dasar nilai perolehan air
$route['pelaksana/tentangpajak/nilaiperolehanair'] = 'pelaksana/nilaiperolehanair';

// dispenda > dasar nilai perolehan air
$route['dispenda/tentangpajak/nilaiperolehanair'] = 'dispenda/nilaiperolehanair';

// wajib pajak > dasar nilai perolehan air
$route['wajibpajak/tentangpajak/nilaiperolehanair'] = 'wajibpajak/nilaiperolehanair';



// DASAR PENENTUAN NPA
// admin > dasar penentuan npa
$route['admin/tentangpajak/penentuannpa'] = 'admin/penentuannpa';

// pelaksana > dasar penentuan npa
$route['pelaksana/tentangpajak/penentuannpa'] = 'pelaksana/penentuannpa'; 

// dispenda > dasar penentuan npa
$route['dispenda/tentangpajak/penentuannpa'] = 'dispenda/penentuannpa'; 

// wajibpajak > dasar penentuan npa
$route['wajibpajak/tentangpajak/penentuannpa'] = 'wajibpajak/penentuannpa'; 









// TAGIHAN
// ==========================================================


// data tagihan wajibpajak 
$route['admin/wajibpajak/tagihan'] = 'admin/tagihan'; // halaman tagihan


// data tagihan (new)
$route['admin/wajibpajak/tagihan/new/(:any)'] = 'admin/wajibpajak_tagihan_new/$1';

// buat tagihan
$route['admin/wajibpajak/tagihan/buat/(:any)'] = 'admin/wajibpajak_buat_tagihan'; // halaman sunting tagihan

// sunting tagihan
$route['admin/wajibpajak/tagihan/sunting/(:any)'] = 'admin/sunting_tagihan'; // halaman sunting tagihan


//  tagihan fna
$route['admin/wajibpajak/tagihan/fna/(:any)'] = 'admin/tagihan_fna'; // halaman faktor nilai air

//  tagihan info
$route['admin/wajibpajak/tagihan/info/(:any)'] = 'admin/tagihan_info'; // halaman faktor nilai air

//  tagihan cetak
$route['admin/wajibpajak/tagihan/cetak/(:any)'] = 'admin/tagihan_cetak'; // halaman faktor nilai air

// hapus tagihan
$route['admin/wajibpajak/tagihan/hapus/(:any)'] = 'C_tagihan/hapus_tagihan'; // halaman sunting tagihan

// data tagihan wajibpajak 
// $route['admin/wajibpajak/tagihan/cetak/(:any)'] = 'admin/cetaktagihan'; // halaman cetak tagihan


// data tagihan wajibpajak 
$route['admin/wajibpajak/informasi/tagihan'] = 'admin/informasitagihan'; // halaman cetak tagihan





// BERITA

// Berita
$route['admin/berita'] = 'admin/berita'; // halaman dasar pengenaan pajak

// TAMBAH
$route['admin/berita/tambah'] = 'admin/beritatambah';
$route['admin/berita/tambah/proses'] = 'C_Berita/proses_tambah';

// UBAH
$route['admin/berita/ubah/(:any)'] = 'admin/beritaubah/$1';
$route['admin/berita/ubah/proses/(:any)'] = 'C_Berita/proses_ubah/$1';



// HAPUS
$route['admin/berita/hapus/proses/(:any)'] = 'C_berita/hapus/$1';





// PENGATURAN

// Informasi situs
$route['admin/pengaturan/informasisitus'] = 'admin/informasisitus'; // halaman dasar pengenaan pajak

// Logo
$route['admin/pengaturan/logo'] = 'admin/logo'; // halaman dasar pengenaan pajak

// Tampilan
$route['admin/pengaturan/tampilan'] = 'admin/tampilan'; // halaman dasar pengenaan pajak

// Halaman depan
$route['admin/pengaturan/halamandepan'] = 'admin/halamandepan'; // halaman dasar pengenaan pajak





/** 
 * ==========================================================
 * END ROLE ADMINISTRATOR
 * ==========================================================
*/































/*
| -------------------------------------------------------------------------
| ROLE PELAKSANA
| -------------------------------------------------------------------------
*/

// DASBOR
// ==========================================================

$route['pelaksana/dasbor'] = 'pelaksana/dasbor'; 







// PROFIL
// ==========================================================
$route['pelaksana/profil'] = 'pelaksana/profil'; 

// UBAH
$route['pelaksana/profil/ubah'] = 'pelaksana/profilubah';

// UBAH FOTO
$route['pelaksana/profil/ubah/foto'] = 'pelaksana/profilubahfoto';




// WAJIB PAJAK
// ==========================================================
$route['pelaksana/wajibpajak'] = 'pelaksana/wajibpajak'; 
$route['pelaksana/wajibpajak/detail/(:any)'] = 'pelaksana/wajibpajakdetail/$1'; // detail wajib pajak




// TAGIHAN
// ==========================================================
$route['pelaksana/wajibpajak/tagihan/new/(:any)'] = 'pelaksana/wajibpajak_tagihan_new'; 

// buat tagihan
$route['pelaksana/wajibpajak/tagihan/buat/(:any)'] = 'pelaksana/wajibpajak_buat_tagihan'; // halaman sunting tagihan

// sunting tagihan
$route['pelaksana/wajibpajak/tagihan/sunting/(:any)'] = 'pelaksana/sunting_tagihan'; // halaman sunting tagihan


//  tagihan fna
$route['pelaksana/wajibpajak/tagihan/fna/(:any)'] = 'pelaksana/tagihan_fna'; // halaman faktor nilai air

//  tagihan info
$route['pelaksana/wajibpajak/tagihan/info/(:any)'] = 'pelaksana/tagihan_info'; // halaman faktor nilai air

//  tagihan cetak
$route['pelaksana/wajibpajak/tagihan/cetak/(:any)'] = 'pelaksana/tagihan_cetak'; // halaman faktor nilai air

// hapus tagihan
$route['pelaksana/wajibpajak/tagihan/hapus/(:any)'] = 'C_tagihan/hapus_tagihan'; // halaman sunting tagihan






// TENTANG PAJAK 











/** 
 * ==========================================================
 * END ROLE PELAKSANA
 * ==========================================================
*/































/*
| -------------------------------------------------------------------------
| ROLE WAJIB PAJAK
| -------------------------------------------------------------------------
*/


// MASUK (login)
$route['wajibpajak/masuk'] = 'Loginwajibpajak/index'; 

// KELUAR (logout)
$route['wajibpajak/keluar'] = 'Loginwajibpajak/keluar'; 





// PROFIL
// ==========================================================

// Profil
$route['wajibpajak/profil'] = 'wajibpajak/profil';

// Ubah
$route['wajibpajak/profil/ubah'] = 'wajibpajak/profil_ubah';

// Ubah Foto
$route['wajibpajak/profil/ubah/foto'] = 'wajibpajak/profil_ubah_foto';





// PROFIL USAHA
// ==========================================================

// Profil
$route['wajibpajak/profil-usaha'] = 'wajibpajak/profil_usaha';

// Ubah
$route['wajibpajak/profil-usaha/ubah'] = 'wajibpajak/profil_usaha_ubah';

// Ubah Foto
$route['wajibpajak/profil-usaha/ubah/logo'] = 'wajibpajak/profil_usaha_ubah_logo';





// TAGIHAN
// ==========================================================

// TAGIHAN
$route['wajibpajak/tagihan'] = 'wajibpajak/wajibpajak_tagihan_new'; // halaman tagihan

// INFO TAGIHAN
$route['wajibpajak/tagihan/info/(:any)'] = 'wajibpajak/tagihan_info/$1'; // halaman tagihan

// CETAK TAGIHAN
$route['wajibpajak/tagihan/cetak/(:any)'] = 'wajibpajak/tagihan_cetak/$1'; // halaman tagihan


// BUKTI PEMBAYARAN
$route['wajibpajak/tagihan/unggah-bukti-pembayaran'] = 'wajibpajak/unggah_bukti_pembayaran'; // halaman tagihan






/*
| -------------------------------------------------------------------------
| END ROLE WAJIB PAJAK
| -------------------------------------------------------------------------
*/






/*
| -------------------------------------------------------------------------
| ROLE DISPENDA
| -------------------------------------------------------------------------
*/




// dispenda

$route['dispenda/wajibpajak/semua'] = 'dispenda/wajibpajak'; // halaman dasbor dispenda

// wajibpajak baru
$route['dispenda/wajibpajak/baru'] = 'dispenda/wajibpajakbaru'; // form ubah wajib pajak

// wajibpajak tagihan
$route['dispenda/wajibpajak/tagihan/(:any)'] = 'dispenda/wajibpajaktagihan/$1'; // form data tagihan 

// wajibpajak ubah
$route['dispenda/wajibpajak/ubah/(:any)'] = 'dispenda/wajibpajakubah/$1'; // form ubah wajib pajak

// wajibpajak detail
$route['dispenda/wajibpajak/detail/(:any)'] = 'dispenda/wajibpajakdetail/$1'; // form detail wajib pajak 

// TAGIHAN

// data tagihan wajibpajak 
$route['dispenda/wajibpajak/tagihan'] = 'wajibpajak/tagihan'; // halaman tagihan


// data tagihan wajibpajak 
$route['dispenda/wajibpajak/tagihan/cetak'] = 'wajibpajak/cetaktagihan'; // halaman cetak tagihan























// $route['berita/(:any)'] 		= 'berita/url/$1';
// $route['laman/(:any)'] 			= 'laman/url/$1';
