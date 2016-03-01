<?php
	
	class Index extends Controller
	{
		function __construct()
		{
			parent::__construct();
		}

		public function index(){
			
			require "models/News.php";

			$model = new News();
			
			$data = $model->all();

			$this->view->allNews = $data;	
			$this->view->render('indexView');		
		}

		public function detail($id){

			require "models/News.php";

			$model = new News();

			$data = $model->find($id);
			$this->view->article = $data;
			$this->view->render('articleView');
		}
		
	}

?>