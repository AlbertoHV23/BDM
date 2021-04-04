<?php
class tbl_Messages
{
    private $id_message;
    private $fk_sender;
    private $fk_addressee;
    private $_message;
    private $date_message;
    public function __construct($id_message, $fk_sender, $fk_addressee, $_message, $date_message)
    {
    }
}
?>