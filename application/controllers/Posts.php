<?php
	class Posts extends CI_Controller{
		public function index(){
			$data['title'] = 'Last';

			$data['posts'] = $this->post_model->get_posts();

			$this->load->view('templates/header');
			$this->load->view('posts/index', $data);
			$this->load->view('templates/footer');

		}

		public function view($IDCUTREMUR = NULL){
			$data['post'] = $this->post_model->get_posts($IDCUTREMUR);

			if(empty($data['post'])){
				show_404();
			}

			$data['title'] = $data['post'];

			$this->load->view('templates/header');
			$this->load->view('posts/view', $data);
			$this->load->view('templates/footer');

		}

		public function create(){
			//verifica login
			if(!$this->session->userdata('logged_in')){
				redirect('users/login');
			}

			$data['title'] = 'Create Post';

			$this->form_validation->set_rules('IDCUTREMUR', 'ID', 'required');
			$this->form_validation->set_rules('MAGNITUDINE', 'MAGNITUDINE', 'required');

			if($this->form_validation->run() == FAlSE){
			
			$this->load->view('templates/header');
			$this->load->view('posts/create', $data);
			$this->load->view('templates/footer');		

			}
			else {
				$this->post_model->create_post();

				$this->sessions->set_flashdata('post_created', 'Ai creat cutremur');
				redirect('posts');
			}
		}

		public function delete($IDCUTREMUR){
			//verifica login
			if(!$this->session->userdata('logged_in')){
				redirect('users/login');
			}

			$this->post_model->delete_post($IDCUTREMUR);

			$this->sessions->set_flashdata('post_deleted', 'Ai sters');

			redirect('posts');
		}

		public function edit($IDCUTREMUR){
			//verifica login
			if(!$this->session->userdata('logged_in')){
				redirect('users/login');
			}

			$data['post'] = $this->post_model->get_posts($IDCUTREMUR);

			if(empty($data['post'])){
				show_404();
			}

			$data['title'] = 'Edit post';

			$this->load->view('templates/header');
			$this->load->view('posts/edit', $data);
			$this->load->view('templates/footer');

		}

		public function update(){
			//verifica login
			if(!$this->session->userdata('logged_in')){
				redirect('users/login');
			}
			
				$this->post_model->update_post();

				$this->sessions->set_flashdata('post_updated', 'Ai updatat');

				redirect('posts');
		}
	}