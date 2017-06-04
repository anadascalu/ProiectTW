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
			$this->db->order_by('IDCUTREMUR');
			$query = $this->db->get('cutremur');
			return $query->result_array();
		}

		$query = $this->db->get_where('cutremur', array('IDCUTREMUR' => $IDCUTREMUR));
		return $query->row_array();
	}

	public function create_post(){
		$slug = url_title($this->input->post('IDCUTREMUR'));

		$data = array(
		              'IDCUTREMUR' => $slug,	
		              'MAGNITUDINE' => $this->input->post('MAGNITUDINE')
		              );

		return $this->db->insert('cutremur', $data);
	}

	public function delete_post($IDCUTREMUR){
		$this->db->where('IDCUTREMUR', $IDCUTREMUR);
		$this->db->delete('cutremur');
		return true;
	}

	public function update_post(){

		$slug = url_title($this->input->post('IDCUTREMUR'));

		$data = array(
		              'IDCUTREMUR' => $slug,	
		              'MAGNITUDINE' => $this->input->post('MAGNITUDINE')
		              );
		$this->db->where('IDCUTREMUR', $this->input->post('IDCUTREMUR'));
		return $this->db->update('cutremur', $data);
	}

	public function get_data_for_chart($idcutremur){
		$this->db->select('count(nevatamati.idpersoana), count(morti.idpersoana');
		$this->db->from('morti');
		$this->db->join('nevatamati', 'nevatamati.idcutremur = morti.idcutremur');
		$query = $this->db->get_where('idcutremur', $idcutremur);
		return $query->row_array();
	}

}