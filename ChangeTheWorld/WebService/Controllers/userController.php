<?php
require('../Models/tbl_Users.php');
require('../Models/conection.php');

$con = new Conection();

class UserController extends tbl_Users{

    public function LoginView()
    {
        require '../Views/Login.php';
    }
}

if(isset($_GET['action']) && $_GET['action']=='login'){
    $controllerInstance = new UserController();
    $controllerInstanc->LoginView();
}
?>
