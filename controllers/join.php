<?php
if($_POST){
    if($_POST['email']){
        $error = "Email not set";
    }
    if($error){
        $smarty->assign('error', $error);
    }
    else if($_POST['password'] !=$_POST['confirmPassword']) {
        $error = "Password and confirm password must match";
        }
    }else if(strlen($_POST['password']) < 8) {
        $error = "Password must be at least 8 characters in length";
    }
    else if(!filter_var($_POST['email'],FILTER_VALIDATE_EMAIL)) {
        $error = "email is not valid";
    }
    if($error) {
        $smarty->assign('error', $error);
    }else{
        $user = new User($Conn);
        $attempt = $user->createUser($_POST);

        if($attempt) {
            header("location:index.php?p=login");
            exit();
        }else{
            $smarty->assign('error', "An error occured, please try again later.");
        }
    }
