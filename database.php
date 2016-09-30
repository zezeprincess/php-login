<?php
//forbindelse til databasen
$server = 'localhost';
$username = 'patricia_gambula';
$password = 'Gambula1';
$database = 'patricia_loginsystem';

try{
	$conn = new PDO("mysql:host=$server;dbname=$database;", $username, $password);
} catch(PDOException $e){
	die( "Connection failed: " . $e->getMessage());
}