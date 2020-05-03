<?php

class Hello extends CI_Controller {

	public function index () {
		$this->load->model('m_mahasiswa');
		$data['mahasiswa']= $this->m_mahasiswa->get_data();

		$this->load->view('mahasiswa', $data);
	}
}

 ?>