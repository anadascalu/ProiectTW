<?php
class register extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        
        $this->load->model('register_model');
    }
    

    public function register(){
        $data['title'] = 'Sign up';
        $this->load->model('register_model');

        $this->form_validation->set_rules('name', 'Name','required');
        $this->form_validation->set_rules('username', 'UserName','required|callback_check_username_exists');
        $this->form_validation->set_rules('email', 'Email','required|callback_check_email_exists');
        $this->form_validation->set_rules('password', 'Password','required');
        $this->form_validation->set_rules('password2', 'Confirm Password','matches[password]');

        if($this->form_validation->run() === FALSE){
            $this->load->view('register/register', $data);

        } else {
                // Encrypt passoword
                $enc_password = md5($this->input->post('password')); //php function

                $this->register_model->register($enc_password);

                //set message
                $this->session->set_flashdata('user_registered', 'Sunteti inregistrat');

                redirect('login/login');

            }

        }


//check if username exists
        public function check_username_exists($username){
            $this->form_validation->set_message('check_username_exists', 'Username folosit');

            if($this->register_model->check_username_exists($username)){
                return true;
            }
            else {
                return false;
            }
        }

        public function check_email_exists($email){
            $this->form_validation->set_message('check_email_exists', 'Email folosit');

            if($this->register_model->check_email_exists($email)){
                return true;
            }
            else {
                return false;
            }
        }
    }
    ?>