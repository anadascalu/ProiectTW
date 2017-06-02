<?php 
	class User_model extends CI_Model{
		public function register($enc_password){
			//data array
			$data = array(
			'name' => $this->input->post('name'),
			'username' => $this->input->post('username'),
			'email' => $this->input->post('email'),
			'password' => $enc_password,
			              );

			//insert
			return $this->db->insert('users', $data);
		}

		//log user in
		public function login($username, $password){
			//validare
			$this->db->where('username', $username);
			$this->db->where('password', $password);

			$result = $this->db->get('users');

			if($result->num_rows() == 1){
				return $result->row(0)->id;
			}
			else
			{
				return false;
			}
		}

		//username exists
		public function check_username_exists($username){

			$query = $this->db->get_where('users', array('username' => $username));

			if(empty($query->row_array())){
				return true;
			}
			else {
				return false;
			}
		}

		public function check_email_exists($email){

			$query = $this->db->get_where('users', array('email' => $email));

			if(empty($query->row_array())){
				return true;
			}
			else {
				return false;
			}
		}
}