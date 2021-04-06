<?php
class Conection{
    private $con;
    private $dataBaseHost = "localhost";
    private $dataBaseName = "changetheworld";
    private $dataBaseUser = "root";
    private $dataBasePass = "";

    public function __construct()
    {
        $this->con = new mysqli($this->dataBaseHost,$this->dataBaseUser,$this->dataBasePass,$this->dataBaseName);
        if ($$this->con->connect_errno) {
            echo "Failed to connect to database.";
        }
    }
}
?>
