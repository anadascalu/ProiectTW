<?php
class register_model extends CI_Model
{
    function __construct()
    {
        // Call the Model constructor
        parent::__construct();
    }
    
    public function register($enc_password){
            //data array
            $data = array(
            'username' => $this->input->post('username'),
            'email' => $this->input->post('email'),
            'password' => $enc_password,
                          );

            //insert
            return $this->db->insert('users', $data);
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
?>
