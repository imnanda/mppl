<?php
/**
 * Created by PhpStorm.
 * User: asmunanda
 * Date: 6/13/2015
 * Time: 1:36 PM
 */
$host = "localhost";
$database = "mppl";
$user = "root";
$password = "";
$koneksi=mysql_connect($host,$user,$password);
mysql_select_db($database,$koneksi);
if(!$koneksi)
    die("Error : ".mysql_error());