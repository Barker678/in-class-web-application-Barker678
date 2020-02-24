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
            $User = new User($Conn);
            $user_data = $User->loginUser($_POST['email'],$_POST['password']);
            $_SESSION['is_loggedin'] = true;
            $_SESSION['user_data'] = $user_data;
            if ($user_data) {
                header("Location: index.php?p=account");
                exit();
            }else{
                $smarty->assign('error', "incorrect Email/Password");
            }
        }
    }