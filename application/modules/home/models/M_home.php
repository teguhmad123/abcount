<?php
defined('BASEPATH') or exit('No direct script access allowed');

class M_home extends CI_Model
{
	public function get_poli()
	{
		$sql = "SELECT * FROM mst_poli";
		return $this->db->query($sql)->result_array();
	}

	public function get_bl_sdm($poli_id)
	{
		$sql = "SELECT * FROM v_bl_sdm WHERE poli_id = '$poli_id'";
		return $this->db->query($sql)->row_array()['biaya_per_menit'];
	}

	public function get_btl_total($poli_id)
	{
		$sql = "SELECT * FROM v_btl_total WHERE poli_id = '$poli_id'";
		return $this->db->query($sql)->row_array()['harga'];
	}

	public function get_btl_total_cd($poli_id)
	{
		$sql = "SELECT * FROM v_btl_total_cd WHERE poli_id = '$poli_id'";
		return $this->db->query($sql)->row_array()['total_cd'];
	}

	public function get_btl_total_cd_primer($poli_id)
	{
		$sql = "SELECT * FROM v_btl_total_cd_primer WHERE poli_id = '$poli_id'";
		return $this->db->query($sql)->row_array()['total_cd'];
	}

	public function get_total_cost_rs()
	{
		$sql = "SELECT SUM(cost_btl_rs) total_cost_rs FROM dat_aktivitas WHERE pelayanan_id IS NULL AND kategori = 'S'";
		return $this->db->query($sql)->row_array()['total_cost_rs'];
	}

	public function get_parameter($parameter_id)
	{
		$sql = "SELECT * FROM mst_parameter WHERE parameter_id = '$parameter_id'";
		return $this->db->query($sql)->row_array();
	}

	public function save($data)
	{
		$this->db->insert('mst_pelayanan', array('poli_id' => @$data['poli_id'], 'pelayanan_nm' => @$data['pelayanan_nm'], 'pelayanan_jml' => @$data['pelayanan_jml']));
		$pelayanan_id = $this->db->insert_id();

		foreach (@$data['aktivitas_nm'] as $key => $value) {
			$aktivitas = [
				'pelayanan_id' => $pelayanan_id,
				'kategori' => @$data['kategori'][$key],
				'pelayanan_nm' => @$data['aktivitas_nm'][$key],
				'waktu_pelayanan' => @$data['waktu_pelayanan'][$key],
				'waktu_primer_pelayanan' => @$data['waktu_primer_pelayanan'][$key]
			];
			$this->db->insert('dat_aktivitas', $aktivitas);
		}

		foreach (@$data['bahan_nm'] as $key => $value) {
			$bl_bahan = [
				'pelayanan_id' => $pelayanan_id,
				'bahan_nm' => @$data['bahan_nm'][$key],
				'kebutuhan' => @$data['kebutuhan'][$key],
				'bahan_harga' => @$data['bahan_harga'][$key]
			];
			$this->db->insert('bl_bahan', $bl_bahan);
		}

		foreach (@$data['bahan_nm'] as $key => $value) {
			$bl_bahan = [
				'pelayanan_id' => $pelayanan_id,
				'alat_nm' => @$data['alat_nm'][$key],
				'alat_harga' => @$data['alat_harga'][$key],
				'alat_umur' => @$data['alat_umur'][$key]
			];
			$this->db->insert('bl_alat', $bl_bahan);
		}
	}
	public function tes()
	{
		$this->db->insert('tes', array('a' => '1'));
		$insert_id = $this->db->insert_id();
		echo json_encode($insert_id);
		die;
	}

	public function get_data_pelayanan_poli($cari)
	{
		$this->db->select('a.*,b.*');
		$this->db->from('mst_pelayanan a');
		$this->db->join('mst_poli b', 'a.poli_id=b.poli_id');
		if($cari!=''){
			$this->db->like('a.pelayanan_nm',$cari,'booth');
			$this->db->or_like('b.poli_nm',$cari,'booth');
		}
		$this->db->order_by('b.poli_id','asc');
		return $this->db->get()->result_array();
	}
}
