<?php
class Search_model extends CI_Model{

	public function __construct(){
		$this->load->database();
		parent::__construct();
	}

	public function getSearchResults_morti($nume, $prenume, $oras){
		$this->db->select('morti.nume, morti.prenume, , cutremur.oras');
		$this->db->from('morti');
		$this->db->join('cutremur', 'cutremur.idCutremur=morti.idCutremur');
		$this->db->where('morti.nume', $nume)->where('morti.prenume', $prenume)->where('cutremur.oras', $oras);
		$query = $this->db->get();
		if ($query->num_rows() > 0)
		{	

			return $query->result();
		}
		else {
			return;
		}
	}

	public function getSearchResults_nevatamati($nume, $prenume, $oras){
		$this->db->select('nevatamati.nume, nevatamati.prenume, cutremur.oras');
		$this->db->from('nevatamati');
		$this->db->join('cutremur', 'cutremur.idCutremur=nevatamati.idCutremur');
		$this->db->where('nevatamati.nume', $nume)->where('nevatamati.prenume', $prenume)->where('cutremur.oras', $oras);
		$query = $this->db->get();
		if ($query->num_rows() > 0)
		{	

			return $query->result();
		}
		else {
			return;
		}
	}

	public function getSearchResults_raniti($nume, $prenume, $oras){
		$this->db->select('raniti.nume, raniti.prenume, cutremur.oras');
		$this->db->from('raniti');
		$this->db->join('cutremur', 'cutremur.idCutremur=raniti.idCutremur');
		$this->db->where('raniti.nume', $nume)->where('raniti.prenume', $prenume)->where('cutremur.oras', $oras);
		$query = $this->db->get();
		if ($query->num_rows() > 0)
		{	

			return $query->result();
		}
		else {
			return;
		}
	}
}

?>