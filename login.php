<?php

session_start(); //starter session

if( isset($_SESSION['user_id']) ){
	header("Location: index.php"); //hvad brugeren skal kunne se når de er logget ind 
}

require 'database.php'; //henter database forbindelse

if(!empty($_POST['email']) && !empty($_POST['password'])):
	
	$records = $conn->prepare('SELECT id,email,password FROM user WHERE email = :email');
	$records->bindParam(':email', $_POST['email']);
	$records->execute();
	$results = $records->fetch(PDO::FETCH_ASSOC);

	$message = '';
	//bekræfter at passwordet passer 
	if(count($results) > 0 && password_verify($_POST['password'], $results['password']) ){

		$_SESSION['user_id'] = $results['id'];
		header("Location: index.php");

	} else {
		$message = 'Push the right keys and try again';
	}

endif;

?>

<!DOCTYPE html>
<html>
<head>
	<title>Login Below</title>
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>

	<div class="header">
		<a href="index.php"><h3>Welcome to a world of fun</h3></a>
	</div>


	<h1>Login</h1>
	<span>or <a href="register.php">register here</a></span>

	<form action="login.php" method="POST">
		
		<input type="text" placeholder="Enter your email" name="email">
		<input type="password" placeholder="and password" name="password">

		<input type="submit">

	</form>
    
    <?php if(!empty($message)): ?>
		<p><?= $message ?></p>
	<?php endif; ?>

</body>
</html>