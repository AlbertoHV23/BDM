<?php
class tbl_Resources
{
    private $id_resource;
    private $fk_video;
    private $fk_user;
    private $note;
    private $categorie;
    public function __construct($id_resource, $fk_video, $fk_user, $note, $categorie)
    {
    }
}
?>