<?php
require('../Models/tbl_Users.php');
require('../Models/conection.php');

$con = new Conection();

class UsuerController extends tbl_Users{

    public function LoginView()
    {
        require '../Views/Login.php';
    }
}

if(isset($_GET['action']) && $_GET['action']=='login'){
    $controllerInstance = new UsuerController();
    $controllerInstanc->LoginView();
}
?>
