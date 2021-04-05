<?php
class tbl_Comments_comments_video
{
    private $id_comment_coments_video;
    private $fk_comment;
    private $fk_sender;
    private $_message;
    private $comment_date;
    public function __construct(
        $id_comment_coments_video,
        $fk_comment,
        $fk_sender,
        $_message,
        $comment_date
    ) {
    }
}
?>