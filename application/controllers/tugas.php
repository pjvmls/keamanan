<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Tugas extends CI_Controller {
	public function __construct(){
		parent::__construct();
	}

	public function index(){
		$data = array();
		$data['enkripsi'] = '';
		
		if($_POST){
			$this->load->library('form_validation');
			/** Melakukan sanitasi dengan terhadap inputan inject HTML dan Javascript */
			$config_validation = array(
				array( 'field'=>'text','label'=>'text','rules'=> 'required|callback_save_content')
            );

			$this->form_validation->set_rules($config_validation);
			
			/** Kondisi memvalidasi apabila inputan dinyatakan tidak valid */
			if ($this->form_validation->run() == FALSE)
			{
				$this->session->set_flashdata('message','Maaf inputan anda tidak di izinkan');
				redirect(base_url('tugas'));
			}else{
				/** algoritma bawaan PHP >= 5.5 untuk melakukan hash yaitu menggunakan BCRYPT dan akan menghasilkan output sepanjang 60 karakter. 
				 * Sangat disarankan untuk membuat field data pada database sepanjang 255 karakter, 
				 * sebab output hasil hash dapat lebih panjang sesuai dengan algoritma yang digunakan. */
				$data['enkripsi'] = $this->security->xss_clean($this->input->post('text'));
				$data['enkripsi'] = password_hash($data['enkripsi'],PASSWORD_DEFAULT);
			}		
		}

 		$this->load->view('tugas_view',$data);	
	}


	public function save_content($str) {
		#function  XSS Clean
		if($str) {
			$filter = xss_clean($str);
			if($this->security->xss_clean($str, TRUE) === FALSE) {
				$this->form_validation->set_message("save_content", "Data tidak dizinkan");
				$permition = 'no';
				return FALSE;
			} else {
				$permition = 'yes';
				return TRUE;	
			}
		}
		return TRUE;
	}

}
