<?php
/**
 * Created by PhpStorm.
 * User: asmunanda
 * Date: 6/22/2015
 * Time: 10:22 AM
 */
include "db_connect.php";
//$nama = $_POST['nama'];
$judul = $_POST['judul'];
$pesan = $_POST['pesan'];
$email = $_POST['email'];

var_dump($judul);
var_dump($pesan);
var_dump($email);


$i = 0;
$sql = "INSERT INTO t_email values(NULL,'$pesan','$judul')";
$res = mysql_query($sql, $koneksi);
var_dump($res);
if ($res) {
    $id_email = mysql_insert_id($koneksi);
    foreach($email as $id_dosen) {
        var_dump($email);
        //var_dump($id_dosen);
        $sql = "INSERT INTO t_outbox_email values(NULL,'$id_email',NOW(),'P','$email[$i]')";
        $res = mysql_query($sql, $koneksi);
        $i++;
        header("Location:../status_email.php");
    }
    //mysql_close($link);
    //header("Location:../view_kategori.php");
} else {
    //mysql_close($link);
    var_dump($res);
    ?>
    <div class="error">Terjadi kesalahan dalam penyimpanan data Email.<br></div>
<?php
}
?>