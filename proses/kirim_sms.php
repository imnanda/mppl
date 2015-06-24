<?php
/**
 * Created by PhpStorm.
 * User: asmunanda
 * Date: 6/13/2015
 * Time: 2:13 PM
 */
include "db_connect.php";
koneksi_db();
$pesan = $_POST['pesan'];

foreach ($_POST['notpl'] as $notlp)
{
    $sql = "INSERT INTO t_outbox VALUES('$notlp', '$pesan', 'Pending')";
    mysql_query($sql);
    echo $pesan;
    echo $notlp;
    echo $sql;
}
