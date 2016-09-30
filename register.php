<?php

session_start();

if( isset($_SESSION['user_id']) ){
	header("Location: index.php");
}

require 'database.php'; //henter database forbindelse

$message = '';

if(!empty($_POST['email']) && !empty($_POST['password'])):
	
	// hvis emaill ikke er tom og hvis password ikk er tom skal brugeren oprettes i databasen
	$sql = "INSERT INTO user (email, password) VALUES (:email, :password)"; //indsæt brugerens email og password i tabellen user
	$stmt = $conn->prepare($sql);

	$stmt->bindParam(':email', $_POST['email']);
	$stmt->bindParam(':password', password_hash($_POST['password'], PASSWORD_BCRYPT));

	if( $stmt->execute() ):
		$message = 'Fantastic! You just created a user';
	else:
		$message = 'Hey ho, you did something wrong, try again';
	endif;

endif;

?>

<!DOCTYPE html>
<html>
<head>
	<title>Register Below</title>
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>

	<div class="header">
		<a href="index.php"><h3>Welcome to a world of fun</h3></a>
	</div>


	<h1>Register</h1>
	<span>or <a href="login.php">login here</a></span>

	<form action="register.php" method="POST">
		
		<input type="text" placeholder="Enter your email" name="email">
		<input type="password" placeholder="and password" name="password">
		<input type="password" placeholder="confirm password" name="confirm_password">
		<input type="submit">

	</form>
    
    <?php if(!empty($message)): ?>
		<p><?= $message ?></p>
	<?php endif; ?>

</body>
</html>