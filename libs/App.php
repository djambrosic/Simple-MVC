<?php

class App{

	function __construct(){


		$url = isset($_GET['url']) ? $_GET['url'] : null;
		$url = rtrim($url,"/");
		$url = explode("/", $url);

		if(empty($url[0]))
		{
			require 'controllers/indexController.php';
			$controller = new Index();
			$controller->index();
			return false;
		}

		#print_r($url);

		$file = 'controllers/'.$url[0].'Controller.php';

		if(file_exists($file))
		{
			require $file;
		}
		else
		{
			echo("The file ".$file." does not exists!!!");
			return false;
		}

		$controller = new $url[0];

		if (isset($url[2])) {
			if (method_exists($controller, $url[1])) {
				$controller->{$url[1]}($url[2]);
			} else {
				echo "Eror";
			}
		} else {
			if (isset($url[1])) {
				if (method_exists($controller, $url[1])) {
					$controller->{$url[1]}();
				} else {
					echo "error";
				}
			} else {
				$controller->index();
			}
		}

	}
}