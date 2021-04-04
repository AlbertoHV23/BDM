<?php
class tbl_Comments_Courses
{
    private $id_comment_course;
    private $fk_course;
    private $fk_sender;
    private $_message;
    private $comment_date;
    public function __construct($id_comment_co, $fk_course, $fk_sender, $_message, $comment_date)
    {
    }
}
?>