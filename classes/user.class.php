<?php
class User {
    protected $Conn;
    public function __construct($Conn){
        $this->Conn = $Conn;
    }
}
?>