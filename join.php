<?php
if($_POST){
    if(!$_POST['email']){
        $error = "email not set";
    }
    if($error) {
        $smarty->assign('error', $error);
    }else{
        
    }
}