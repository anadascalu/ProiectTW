<?php
	
		class Export extends CI_Controller{

			public function csv_morti($value=''){
				$filename = "CSV_FILE_".date("YmdH_i_s").'.csv';

				header('Content-type:text/csv');
				header('Content-Disposition: attachment;filename='.$filename);
				header('Cache-Control: no-store, no-chache, must-revalidate');
				header('Cache-Control: post-check=0, pre-check=0');
				header('Pragma: no-chache');
				header('Expires: 0');

				$handle = fopen('php://output', 'w');

				fputcsv($handle, array(
				        'idCutremur',
				        'idPersoana',
				        'nume',
				        'prenume',
				        'dataNastere'));

				$this->db->select('*');
				$this->db->from('morti');
				$data['exp'] = $this->db->get()->result_array();

				foreach($data['exp'] as $key => $row)
				{
					fputcsv($handle, $row);
				}
				fclose($handle);
				exit;
			}


			public function csv_raniti($value=''){
				$filename = "CSV_FILE_".date("YmdH_i_s").'.csv';

				header('Content-type:text/csv');
				header('Content-Disposition: attachment;filename='.$filename);
				header('Cache-Control: no-store, no-chache, must-revalidate');
				header('Cache-Control: post-check=0, pre-check=0');
				header('Pragma: no-chache');
				header('Expires: 0');

				$handle = fopen('php://output', 'w');

				fputcsv($handle, array(
				        'idCutremur',
				        'idPersoana',
				        'nume',
				        'prenume',
				        'dataNastere'));

				$this->db->select('*');
				$this->db->from('raniti');
				$data['exp'] = $this->db->get()->result_array();

				foreach($data['exp'] as $key => $row)
				{
					fputcsv($handle, $row);
				}
				fclose($handle);
				exit;
			}


			public function csv_nevatamati($value=''){
				$filename = "CSV_FILE_".date("YmdH_i_s").'.csv';

				header('Content-type:text/csv');
				header('Content-Disposition: attachment;filename='.$filename);
				header('Cache-Control: no-store, no-chache, must-revalidate');
				header('Cache-Control: post-check=0, pre-check=0');
				header('Pragma: no-chache');
				header('Expires: 0');

				$handle = fopen('php://output', 'w');

				fputcsv($handle, array(
				        'idCutremur',
				        'idPersoana',
				        'nume',
				        'prenume',
				        'dataNastere'));

				$this->db->select('*');
				$this->db->from('nevatamati');
				$data['exp'] = $this->db->get()->result_array();

				foreach($data['exp'] as $key => $row)
				{
					fputcsv($handle, $row);
				}
				fclose($handle);
				exit;
			}
		}