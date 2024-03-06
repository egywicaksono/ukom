<?php 

$host ="localhost";
$user ="root";
$pass ="";
$name ="ujian";

$conn = mysqli_connect($host,$user,$pass,$name);

if (!$conn) {
    die("gagal");
}