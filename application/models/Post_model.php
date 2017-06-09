<?php
class Post_model extends CI_Model{
	public function __construct(){
		$this->load->database();
		parent::__construct();
	}

	public function get_posts($oras = FALSE, $limit = FALSE, $offset = FALSE){
		if($limit){
			$this->db->limit($limit, $offset);
		}

		if($oras === FALSE)
		{
			$this->db->order_by('idCutremur');
			$query = $this->db->get('cutremur');
			return $query->result_array();
		}

		$query = $this->db->get_where('cutremur', array('oras' => $oras));
		return $query->row_array();
	}

	public function create_post(){

		$data = array(
		              'idCutremur' => $this->input->post('idCutremur'),	
		              'idPersoana' => $this->input->post('idPersoana'),	
		              'nume' => $this->input->post('nume'),	
		              'prenume' => $this->input->post('prenume'),
		               'about' => $this->input->post('about'),
		               'studii' => $this->input->post('studii'),
		               'varsta' => $this->input->post('varsta'),
		               'taraOrigine' => $this->input->post('taraOrigine'),
		               'nrTelefon' => $this->input->post('nrTelefon'),
		              );

		return $this->db->insert('voluntari', $data);
	}

	public function delete_post($IDCUTREMUR){
		$this->db->where('idCutremur', $IDCUTREMUR);
		$this->db->delete('cutremur');
		return true;
	}

	public function update_post(){

		$slug = url_title($this->input->post('oras'));

		$this->db->select('idCutremur');
		$query = $this->db->get_where('oras', $slug);

		$data = array(
		              'idCutremur' => $query,	
		              'magnitudine' => $this->input->post('magnitudine')
		              );
		$this->db->where('idCutremur', $query);
		return $this->db->update('cutremur', $data);
	}

	public function get_data_for_chart($idcutremur){
		$this->db->select('count(nevatamati.idpersoana), count(morti.idpersoana');
		$this->db->from('morti');
		$this->db->join('nevatamati', 'nevatamati.idcutremur = morti.idcutremur');
		$query = $this->db->get_where('idcutremur', $idcutremur);
		return $query->row_array();
	}

	function get_search() {

		$match = $this->input->post('search');
		$this->db->where('idCutremur',$match);
		$query = $this->db->get('cutremur');
		return $query->result();
	}
}