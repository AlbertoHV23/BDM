<?php
class tbl_Comments_comments_course
{
    private $id_comment_coments_course;
    private $fk_comment;
    private $fk_sender;
    private $_message;
    private $comment_date;
    public function __construct(
        $id_comment_com,
        $fk_comment,
        $fk_sender,
        $_message,
        $comment_date
    ) {
    }
}
?>