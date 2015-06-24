<?php
/**
 * Created by PhpStorm.
 * User: Jhoony
 * Date: 16-Jun-15
 * Time: 8:01 AM
 */
$notlp = $_POST['notpl'];
$pesan = $_POST['pesan'];
foreach ($_POST['notpl'] as $notlp)
{
    mysqli_query("INSERT INTO t_outbox VALUES ($notlp, $pesan, 'Pending')");
}