<?php
defined('BASEPATH') or exit('No direct script access allowed');
require APPPATH . "libraries/format.php";
require APPPATH . "libraries/RestController.php";

use chriskacerguis\RestServer\RestController;

class Api extends RestController
{
	public function __construct()
	{
		parent::__construct();
		$this->load->library('form_validation');
		$this->load->model('M_distrik');
		$this->load->library('encryption');
	}

	public function geoDistrik_get()
	{
		// $data = [
		// 	[
		// 		"id_distrik" => "abepura",
		// 		"nama_distrik" => "Abepura",
		// 		"jumlah_penduduk" => $this->M_distrik->totalDistrikAbepura(),
		// 		"json_map"	=> "assets/data/9471020/9471020.json"
		// 	],
		// 	[
		// 		"id_distrik" => "heram",
		// 		"nama_distrik" => "Heram",
		// 		"jumlah_penduduk" => $this->M_distrik->totalDistrikHeram(),
		// 		"json_map"	=> "assets/data/9471021/9471021.json"


		// 	],
		// 	[
		// 		"id_distrik" => "jprutara",
		// 		"nama_distrik" => "Jayapura Utara",
		// 		"jumlah_penduduk" => $this->M_distrik->totalDistrikJprutara(),
		// 		"json_map"	=> "assets/data/9471040/9471040.json"
		// 	],
		// 	[
		// 		"id_distrik" => "jprselatan",
		// 		"nama_distrik" => "Jayapura Selatan",
		// 		"jumlah_penduduk" => $this->M_distrik->totalDistrikJprselatan(),
		// 		"json_map"	=> "assets/data/9471030/9471030.json"
		// 	],
		// 	[
		// 		"id_distrik" => "muaratami",
		// 		"nama_distrik" => "Muara Tami",
		// 		"jumlah_penduduk" => $this->M_distrik->totalDistrikMuaratami(),
		// 		"json_map"	=> "assets/data/9471010/9471010.json"
		// 	],


		// ];
		// $this->response([
		// 	'status' => true,
		// 	'data' => $data
		// ], RestController::HTTP_OK);

		$query = "SELECT distrik.id, distrik.nama_distrik, ST_AsGeoJSON(distrik.peta_distrik) AS geojson FROM distrik";
		$districts =  $this->db->query($query)->result_array();
		$properties['type'] = 'Feature';

		foreach ($districts as $d) {
			$properties['properties']['kode_kec'] =  $d['id'];
			$properties['properties']['nama'] =  $d['nama_distrik'];
			$properties['geometry'] = json_decode($d['geojson']);
			$features[] = $properties;
		}
		$this->response([
			'type' => 'FeatureCollection',
			'features' => $features,
		], RestController::HTTP_OK);
	}

	public function wajibPajak_get()
	{
		$query = "SELECT * FROM `wajib_pajak` WHERE `longitude` IS NOT NULL AND `latitude` IS NOT NULL";
		$wajibpajak =  $this->db->query($query)->result_array();
		$i = 0;

		foreach ($wajibpajak as $wj) {
			$data['id'] = $wj['id_wp'];
			$data['lat'] = $wj['latitude'];
			$data['long'] = $wj['longitude'];
			$data['name'] = $wj['usaha_nama'];
			++$i;
			$all[$i] = $data;
		};

		$this->response([
			$all
		], RestController::HTTP_OK);
	}
}
