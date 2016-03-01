
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Index</title>
</head>
<body>
<h1>Dobrodosli na stranicu vijesti</h1>

<div>
	<table border = 1>
		<?php
		
			foreach ($this->allNews as $key => $value) {
				echo '<tr>';
				echo '<td>'.$value['title'].'</td>';
				echo '<td>'.$value[2].'</td>';
				echo '<td>'.$value['description'].'</td>';
				echo '<td><a href="'.URL.'index/detail/'.$value['id'].'">Detalji</a></td>';
				echo '</tr>';
			}

		?>
	</table>

	
</div>

</body>
</html>