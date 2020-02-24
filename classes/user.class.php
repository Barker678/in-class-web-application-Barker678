<?php
class User {
    protected $Conn;
    public function __construct($Conn){
        $this->Conn = $Conn;
    } public function creatUser($user_data) {
        $sec_password = password_hash($user_data['password'], PASSWORD_DEFAULT);
        $query = "INSERT INTO users (user_email, user_pass, user_name) VALUES
        (:user_email,:user_pass,:user_name)";
        $stmt = $this->Conn->prepare($query);
        return $stmt->execute(array(
            'user_email' => $user_data['email'],
            'user_pass' => $sec_password,
            'user_name' => $user_data['fullname']
        ));
    }
    public function loginUser($email, $password){
        $query = "SELECT * FROM users WHERE user_email = :user_email";
        $stmt = $this->Conn->prepare($query);
        $stmt->execute(array(':user_email' => $email));
        $attempt = $stmt->fetch();
        if($attempt && password_verify($password, $attempt['user_pass'])) {
            return $attempt;
        }else{
            return false
        }
    }
}
?>