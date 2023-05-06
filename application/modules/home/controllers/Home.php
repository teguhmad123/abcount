<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Home extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();
		$this->load->model('m_home');
	}

	public function index()
	{
		$data['poli'] = $this->m_home->get_poli();
		$this->load->view('index', $data);
	}

	public function ajax($type = null)
	{
		if ($type == 'get_parameter') {
			$data = $this->input->get(null, true);
			$bl = [];
			$btl = [];

			$bl['sdm'] = $this->m_home->get_bl_sdm($data['poli_id']); //get biaya langsung sdm

			$btl['total'] = $this->m_home->get_btl_total($data['poli_id']);
			$btl['total_cd'] = $this->m_home->get_btl_total_cd($data['poli_id']);
			$btl['total_cd_primer'] = $this->m_home->get_btl_total_cd_primer($data['poli_id']);
			$btl['total_cost_rs'] = $this->m_home->get_total_cost_rs();

			$result['wp'] = $this->m_home->get_parameter('WP')['parameter_value']; //get waktu pelayanan dlm setahun (dlm menit)
			$result['bl'] = $bl;
			$result['btl'] = $btl;
			echo json_encode([
				'result' => @$result
			]);
		}
	}

	public function save()
	{
		$data = html_escape($this->input->post(null, true));
		$this->m_home->save($data);
		redirect('home');
	}

	public function tes()
	{
		$this->m_home->tes();
	}

	public function list($cari='')
	{
		html_escape($cari);
		$data = $this->m_home->get_data_pelayanan_poli($cari);
		echo json_encode($data);
		// $this->load->view('list', $data);
	}

	public function print($cari='')
	{
		html_escape($cari);
		$data['data'] = $this->m_home->get_data_pelayanan_poli($cari);
		$this->load->view('print', $data);
	}
}
