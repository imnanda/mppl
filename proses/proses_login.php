<?php
/**
 * Created by PhpStorm.
 * User: Jhoony
 * Date: 23-Jun-15
 * Time: 10:14 AM
 */
include 'db_connect.php';

$username = $_POST['username'];
$password = $_POST['password'];

$sql = "SELECT username, password FROM t_user  WHERE username = '$username' AND password = '$password'";

$result = mysqli_query($sql, $koneksi);
var_dump($koneksi);
if (mysqli_num_rows($result) == NULL)
{
    redirect('../login.php');
}
else
{
    $_SESSION['username'] = $user["username"];
    $_SESSION['login'] = true;
    redirect('../index.php');
}