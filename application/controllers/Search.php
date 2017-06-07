<?php
class Search extends CI_Controller{

	public function __construct() 
	{ 
		parent::__construct(); 
		$this->load->model('Search_model'); 

        // $this->load->library('form_validation'); 

		$this->load->helper('string'); 
	} 

	public function index(){
		$data['title'] = 'Code';

		$this->load->view('templates/header');
		$this->load->view('search/index', $data);
		$this->load->view('templates/footer');
	}

	public function search(){
		$data['title'] = 'Results';
		$nume = $this->input->post('nume');
		$prenume = $this->input->post('prenume');
		$oras = $this->input->post('oras');


		$data['search_results_morti'] = $this->Search_model->getSearchResults_morti($nume, $prenume, $oras);
		$data['search_results_nevatamati'] = $this->Search_model->getSearchResults_nevatamati($nume, $prenume, $oras);
		$data['search_results_raniti'] = $this->Search_model->getSearchResults_raniti($nume, $prenume, $oras);

		$this->load->view('templates/header');
		$this->load->view('search/result_search', $data);
		$this->load->view('templates/footer');

	}

}

?>