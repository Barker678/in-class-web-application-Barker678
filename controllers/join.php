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
            $to = $_POST['email'];
            $subject = 'Welcome to StudentRecipes!';
            $headers = "from: S196143@uos.ac.uk\r\n";
            $headers .= "Reply-To: S196143@uos.ac.uk\r\n";
            $headers .= "MIME-Version: 1.0\r\n";
            $headers .= "Content-Type: text/html: charset=ISO-8859-1\r\n";
            $message = '<html><body>';
            $message .= '<img src="./images/banner_1.jpg"';
            $message .= '<h1>Welcome to StudentRecipes!</h1>';
            $message .= '<p>You have succesfully registered an account with us!</p>';
            $message .= '</body></html>';
            mail($to, $subject, $message, $headers);
            header("location:index.php?p=login");
            exit();
        }else{
            $smarty->assign('error', "An error occured, please try again later.");
        }
    }
