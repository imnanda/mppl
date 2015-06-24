<?php
/**
 * Created by PhpStorm.
 * User: asmunanda
 * Date: 6/23/2015
 * Time: 3:21 AM
 */
include "db_connect.php";
$nama = $_POST['nama'];
$status = $_POST['status'];
$email = $_POST['email'];
$notlp = $_POST['tlp'];
$sql = "INSERT INTO t_dosen values(NULL,'$nama','$notlp','$email','$status')";
$res = mysql_query($sql, $koneksi);
if ($res)
{
    header("Location:../index.php");
}
else
{
    echo "data gagal di masukan";
}