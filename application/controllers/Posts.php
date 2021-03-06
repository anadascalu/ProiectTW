<?php
class Posts extends CI_Controller{
	public function __construct() 
	{ 
		parent::__construct(); 
		$this->load->model('Post_model'); 

        // $this->load->library('form_validation'); 

		$this->load->helper('string'); 
	} 

	public function index($offset = 0){
		//pagination config
		$config['base_url'] = base_url() . 'posts/index/';
		$config['total_rows'] = $this->db->count_all('cutremur');
		$config['per_page'] = 6;
		$config['uri_segment'] = 3;
		$config['attributes'] = array('class' => 'pagination-link');

		//init pag
		$this->pagination->initialize($config);

		$data['title'] = 'Last';

		$data['posts'] = $this->post_model->get_posts(FALSE, $config['per_page'], $offset);

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
		else {

			$data['title'] = 'Inscriere voluntari';

			$this->form_validation->set_rules('idCutremur', 'Oras', 'required');
			$this->form_validation->set_rules('idPersoana', 'Numar Voluntar', 'required');
			$this->form_validation->set_rules('nume', 'Nume', 'required');
			$this->form_validation->set_rules('prenume', 'Prenume', 'required');
			$this->form_validation->set_rules('about', 'Descriere', 'required');
			$this->form_validation->set_rules('studii', 'Ocupatia', 'required');
			$this->form_validation->set_rules('varsta', 'Varsta', 'required');
			$this->form_validation->set_rules('taraOrigine', 'Tara de origine', 'required');
			$this->form_validation->set_rules('nrTelefon', 'Numar de telefon', 'required');
			
			if($this->form_validation->run() == FAlSE){

				$this->load->view('templates/header');
				$this->load->view('posts/create', $data);
				$this->load->view('templates/footer');		

			}
			else {
				$this->post_model->create_post();

				$this->session->set_flashdata('post_created', 'Felicitari! Te-ai inscris cu succes!');
				redirect('posts/create');
			}
		}
	}

	public function delete($IDCUTREMUR){
			//verifica login
		if(!$this->session->userdata('logged_in')){
			redirect('users/login');
		}
		else {
			$this->post_model->delete_post($IDCUTREMUR);

			$this->session->set_flashdata('post_deleted', 'Ai sters cu succes datele!');

			redirect('posts');
		}
	}

	public function edit($IDCUTREMUR){
			//verifica login
		if(!$this->session->userdata('logged_in')){
			redirect('users/login');
		}
		else {

			$data['post'] = $this->post_model->get_posts($IDCUTREMUR);

			if(empty($data['post'])){
				show_404();
			}

			$data['title'] = 'Modifica datele cutremurului';

			$this->load->view('templates/header');
			$this->load->view('posts/edit', $data);
			$this->load->view('templates/footer');

		}
	}

	public function update(){
			//verifica login
		if(!$this->session->userdata('logged_in')){
			redirect('users/login');
		}
		else {
			$this->post_model->update_post();

			$this->session->set_flashdata('post_updated', 'Ai modificat cu succes!');

			redirect('posts');
		}
	}

	public function search()
	{
		$data['query'] = $this->post_model->get_search();
		$this->load->view('posts/edit', $data);
	}

}