<?php
class tbl_Ratings
{
    private $id_rating;
    private $fk_user;
    private $fk_course;
    private $points;
    public function __construct($id_rating, $fk_user, $fk_course, $points)
    {
    }
}
?>