<?php
session_start();

function is_login()
{
    if($_SESSION['login'] == true)
    {
        return true;
    }
    else
    {
        return false;
    }
}
