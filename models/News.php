<?php

	class News extends Model{

		public function __construct(){
			parent::__construct();
		}

		public function all(){

			$stmt=$this->db->query("SELECT id,title,DATE_FORMAT(dtime,'%H:%i:%s'),description FROM news");
			
			$data = $stmt->fetchAll();

			return $data;
		}

		public function find($id){

			$stmt=$this->db->query("SELECT title, DATE_FORMAT(dtime,'%H:%i:%s'), article FROM news WHERE id = $id");
			$data = $stmt->fetch();

			return $data;
		}
	}