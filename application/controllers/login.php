<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class login extends CI_Controller
{

 public function __construct()
 {
  parent::__construct();

  $this->load->helper('html');

  $this->load->model('login_model');
}

public function login(){
      $data['title'] = 'Sign in';

      $this->form_validation->set_rules('username', 'Username','required');
      $this->form_validation->set_rules('password', 'Password','required');

      if($this->form_validation->run() === FALSE){
        $this->load->view('login/login', $data);

      } else {
        //get username
        $username = $this->input->post('username');
        //encrypt pass
        $password = md5($this->input->post('password'));

        //user
        $user_id = $this->login_model->login($username, $password);

        if($user_id){
          //create session
          $user_data = array(
                         'username' => $username,
                         'logged_in' =>true  
                             );

          $this->session->set_userdata($user_data);


          //set message
        $this->session->set_flashdata('user_loggedin', 'Sunteti logat');

        redirect('home');

        }
        else {
          //set message
        $this->session->set_flashdata('login_failed', 'Login invalid');

        redirect('login/login');
        }

      }
    }


public function logout(){
            //unset user data
  $this->session->unset_userdata('logged_in');
  $this->session->unset_userdata('user_id');
  $this->session->unset_userdata('username');

  $this->session->set_flashdata('user_loggedout', 'Te-ai delogat');

  redirect('login/login');

}


}?>