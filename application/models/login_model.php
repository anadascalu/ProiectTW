<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class login_model extends CI_Model
{
     function __construct()
     {
          // Call the Model constructor
          parent::__construct();
     }

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

}?>