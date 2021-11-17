<!DOCTYPE html>
<html lang="en">
	<head>
		<title></title>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link href="css/style.css" rel="stylesheet">
	</head>
	<body>
		<h3>
			<?php 
				if($this->session->flashdata('message') == TRUE){
					echo $this->session->flashdata('message');
				}
			?>
		</h3>
		<?=form_open('',"method='post'")?>
			<input type="text" name="text" id="text">
			<?php echo form_error('text');  ?>
			<button type="submit">Encrypt</button>
		</form><br>
		Encryption : <?=html_escape($enkripsi)?>
	</body>
</html>
