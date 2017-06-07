<?php
class Post_model extends CI_Model{
	public function __construct(){
		$this->load->database();
		parent::__construct();
	}

	public function get_posts($IDCUTREMUR = FALSE, $limit = FALSE, $offset = FALSE){
		if($limit){
			$this->db->limit($limit, $offset);
		}

		if($IDCUTREMUR === FALSE)
		{
			$this->db->order_by('idCutremur');
			$query = $this->db->get('cutremur');
			return $query->result_array();
		}

		$query = $this->db->get_where('cutremur', array('idCutremur' => $IDCUTREMUR));
		return $query->row_array();
	}

	public function create_post(){
		$slug = url_title($this->input->post('idCutremur'));

		$data = array(
		              'idCutremur' => $slug,	
		              'magnitudine' => $this->input->post('magnitudine')
		              );

		return $this->db->insert('cutremur', $data);
	}

	public function delete_post($IDCUTREMUR){
		$this->db->where('idCutremur', $IDCUTREMUR);
		$this->db->delete('cutremur');
		return true;
	}

	public function update_post(){

		$slug = url_title($this->input->post('idCutremur'));

		$data = array(
		              'idCutremur' => $slug,	
		              'magnitudine' => $this->input->post('magnitudine')
		              );
		$this->db->where('idCutremur', $this->input->post('idCutremur'));
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