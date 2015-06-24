<?php
include "db_connect.php";
/**
 * This example shows making an SMTP connection with authentication.
 */

//SMTP needs accurate times, and the PHP time zone MUST be set
//This should be done in your php.ini, but this is how to do it if you don't have access to that
date_default_timezone_set('Etc/UTC');

require 'PHPMailerAutoload.php';

$res = mysql_query("SELECT * FROM t_outbox_email WHERE status_email = 'p'");
if ($res === false) {
    die(mysql_error());
}
$i = 1;
while ($data = mysql_fetch_array($res)) {

    $data['email'];
//Create a new PHPMailer instance
$mail = new PHPMailer;
//Tell PHPMailer to use SMTP
$mail->isSMTP();
//Enable SMTP debugging
// 0 = off (for production use)
// 1 = client messages
// 2 = client and server messages
$mail->SMTPDebug = 2;
//Ask for HTML-friendly debug output
$mail->Debugoutput = 'html';
//Set the hostname of the mail server
$mail->Host = "smtp.mandrillapp.com";
//Set the SMTP port number - likely to be 25, 465 or 587
$mail->Port = 587;
//Whether to use SMTP authentication
$mail->SMTPAuth = true;
//Username to use for SMTP authentication
$mail->Username = "asmunanda.imams@gmail.com";
//Password to use for SMTP authentication
$mail->Password = "Z1WQ-YK4VOG4b7Mco9S2Cw";
//Set who the message is to be sent from
$mail->setFrom('if@unikom.ac.id', 'Prodi T.Infoematika');
//Set an alternative reply-to address
$mail->addReplyTo('noreply@if.unikom.ac.id', 'No Reply');
//Set who the message is to be sent to
$mail->addAddress($data['email'], 'John Doe');
//Set the subject line
$mail->Subject = 'PHPMailer SMTP test';
//Read an HTML message body from an external file, convert referenced images to embedded,
//convert HTML into a basic plain-text alternative body
$mail->msgHTML(file_get_contents('contents.html'), dirname(__FILE__));
//Replace the plain text body with one created manually
$mail->AltBody = 'This is a plain-text message body';
//Attach an image file
$mail->addAttachment('images/phpmailer_mini.png');

//send the message, check for errors
if ($mail->send()) {
    $res2 = mysql_query("UPDATE t_outbox_email SET status_email = 't' WHERE status_email = 'p'");
    //header("Location:../status.php"); hapus aja :v
    if ($res2 === false) { //ieu
        die(mysql_error());
    }
    echo "Message sent!";
} else {
    echo "Mailer Error: " . $mail->ErrorInfo;
}
    $i++;
}