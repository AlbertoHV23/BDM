<?php
function connect() {
    $databasehost = "localhost";
    $databasename = "midb";
    $databaseuser = "root";
    $databasepass = "";

    $mysqli = new mysqli($databasehost, $databaseuser, $databasepass, $databasename);
    if ($mysqli->connect_errno) {
        echo "Problema con la conexion a la base de datos";
    }
    return $mysqli;
}

function disconnect() {

}

?>
