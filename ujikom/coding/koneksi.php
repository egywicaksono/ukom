<?php
$server = "localhost";
$user = "root";
$password = "";
$database = "ujian";



$connection = mysqli_connect($server, $user, $password, $database) or die(mysqli_error($connection));
?>