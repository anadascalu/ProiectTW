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

			$data['title'] = 'Create Post';

			$this->form_validation->set_rules('IDCUTREMUR', 'ID', 'required');
			$this->form_validation->set_rules('MAGNITUDINE', 'MAGNITUDINE', 'required');

			if($this->form_validation->run() === FAlSE){
			
			$this->load->view('templates/header');
			$this->load->view('posts/create', $data);
			$this->load->view('templates/footer');		

			}
			else {
				$this->post_model->create_post();
				redirect('posts');
			}
		}

		public function delete($IDCUTREMUR){
			$this->post_model->delete_post($IDCUTREMUR);
			redirect('posts');
		}

		public function edit($IDCUTREMUR){
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
				$this->post_model->update_post();
				redirect('posts');
		}
	}