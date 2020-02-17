<?php
if($_POST){
    if($_POST['email']){
        $error = "Email not set";
    }
    if($error){
        $smarty->assign('error', $error)
    } else{

    }
}