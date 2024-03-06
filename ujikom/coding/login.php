<?php
include("conn.php");
$username ="";
$password ="";
$err ="";
if(isset($_POST['username'])) {
    $username = $_POST['username'];
    $password = $_POST['password'];

    if($username == '' or $password =='');
        echo "<li>Masukan Username dan Password</li>";
    }
    if(empty($err)) {
        $sql1 = "select from admin where username = '$username";
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
</head>
<link rel="stylesheet" href="style.css">
<body>
    <div id="app">
        <h1>Halaman Depan</h1>
        <form action="" method="POST">
            <input type="text" name="username" placeholder="Masukan Username.." class="input"/>
            <input type="password" name="password" placeholder="Masukan Paswword.." class="input"/>
            <input type="submit" value="login" class="input"/>                                    
        </form>
    </div>
</body>     
</html>