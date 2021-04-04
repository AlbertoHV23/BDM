<?php
class tbl_Comments_videos
{
    private $id_comment_video;
    private $fk_video;
    private $fk_sender;
    private $_message;
    private $comment_date;
    public function __construct($id_comment_video, $fk_video, $fk_sender, $_message, $comment_date)
    {
    }
}
?>