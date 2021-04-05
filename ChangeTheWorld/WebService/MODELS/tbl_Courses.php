<?php
class tbl_Courses
{
    private $id_course;
    private $fk_school;
    private $fk_categorie;
    private $fk_user;
    private $logo;
    private $title;
    private $average_rating;
    private $short_description;
    private $large_description;
    private $number_videos;
    private $cost;
    public function __construct(
        $id_course,
        $fk_school,
        $fk_categorie,
        $fk_user,
        $logo,
        $title,
        $average_rating,
        $short_description,
        $large_description,
        $number_videos,
        $cost
    ) {
    }
}
?>