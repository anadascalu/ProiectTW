<?php
	class Post_model extends CI_Model{
		public function __construct(){
			$this->load->database();
		}

		public function get_posts($IDCUTREMUR = FALSE){
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

	}