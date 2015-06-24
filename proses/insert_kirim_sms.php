<?php
/**
 * Created by PhpStorm.
 * User: asmunanda
 * Date: 6/13/2015
 * Time: 2:13 PM
 */
include "db_connect.php";
$notlp = $_POST['notlp'];
//var_dump($notlp);
$pesan = $_POST['pesan'];
//var_dump($pesan);
$i = 0;
$sql = "INSERT INTO t_sms values(NULL,'$pesan')";

$res = mysql_query($sql, $koneksi);
//var_dump($res);
if ($res) {
    $id_sms = mysql_insert_id($koneksi);
    foreach($notlp as $id_dosen) {
        var_dump($notlp);
        //var_dump($id_dosen);
        $sql = "INSERT INTO t_outbox_sms values(NULL,'$id_sms',NOW(),'P','$notlp[$i]')";
        $res = mysql_query($sql, $koneksi);
        $i++;
    }
    //mysql_close($link);
    //header("Location:../view_kategori.php");
} else {
    //mysql_close($link);
    var_dump($res);
    ?>
    <div class="error">Terjadi kesalahan dalam penyimpanan data sms.<br></div>
<?php
}
?>
