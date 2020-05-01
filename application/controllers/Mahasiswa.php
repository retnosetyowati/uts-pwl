<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Mahasiswa extends CI_Controller {

	/** 
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */
	public function index()
	{
		$data['mahasiswa'] = $this->m_mahasiswa->tampil_data()->result();
		$this->load->view('templates/header');
		$this->load->view('templates/sidebar');
		$this->load->view('mahasiswa', $data);
		$this->load->view('templates/footer');
		
	}

	public function tambah_aksi(){
		$nama		= $this->input->post('nama');
		$nim		= $this->input->post('nim');
		$tgl_lahir	= $this->input->post('tgl_lahir');
		$jurusan	= $this->input->post('jurusan');

		$data = array(
			'nama'			=> $nama,
			'nim'			=> $nim,
			'tgl_lahir'		=> $tgl_lahir,
			'jurusan'		=> $jurusan,
		);

		$this->m_mahasiswa->input_data($data, 'tb_mahasiswa');
		redirect('mahasiswa/index');
	}
}
