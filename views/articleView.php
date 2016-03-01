<!DOCTYPE html>
<html lang="en">
<head>
	<title>Vijest</title>
</head>
<body>
	<h1>VIJEST</h1>

	<?php
	echo '<a href="'.URL.'index">Home</a></td>';
	?>

	<h3>
		<?php 
		print($this->article['title']." ".$this->article[1]); 
		?>
	</h3>

	<p>
		<?php
		print($this->article['article']);
		?>
	</p>

</body>
</html>