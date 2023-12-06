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

	}

	public function geoDistrik_get()
	{
		$data = [
			[
				"id_distrik" => "abepura",
				"nama_distrik" => "Abepura",
				"jumlah_penduduk" => $this->M_distrik->totalDistrikAbepura(),
				"json_map"	=> "assets/data/9471020/9471020.json"
			],
			[
				"id_distrik" => "heram",
				"nama_distrik" => "Heram",
				"jumlah_penduduk" => $this->M_distrik->totalDistrikHeram(),
				"json_map"	=> "assets/data/9471021/9471021.json"


			],
			[
				"id_distrik" => "jprutara",
				"nama_distrik" => "Jayapura Utara",
				"jumlah_penduduk" => $this->M_distrik->totalDistrikJprutara(),
				"json_map"	=> "assets/data/9471040/9471040.json"
			],
			[
				"id_distrik" => "jprselatan",
				"nama_distrik" => "Jayapura Selatan",
				"jumlah_penduduk" => $this->M_distrik->totalDistrikJprselatan(),
				"json_map"	=> "assets/data/9471030/9471030.json"
			],
			[
				"id_distrik" => "muaratami",
				"nama_distrik" => "Muara Tami",
				"jumlah_penduduk" => $this->M_distrik->totalDistrikMuaratami(),
				"json_map"	=> "assets/data/9471010/9471010.json"
			],
			

		];
		$this->response([
			'status' => true,
			'data' => $data
		], RestController::HTTP_OK);
	}


}
