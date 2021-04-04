 <?php
    class tbl_Categories
    {
        private $id_categorie;
        private $name_categorie;
        public function __construct($id_categorie, $name_categorie)
        {
        }
    }

    class tbl_Users
    {
        private $id_user;
        private $role_user;
        private $photo;
        private $username;
        private $name_user;
        private $last_name;
        private $description_user;
        private $email;
        private $password_user;
        private $registered_date;
        private $date_of_last_change;
        public function __construct(
            $id_user,
            $role_user,
            $photo,
            $username,
            $name_user,
            $last_name,
            $description_user,
            $email,
            $password_user,
            $registered_date,
            $date_of_last_change
        ) {
        }
    }

    class tbl_Schools
    {
        private $id_school;
        private $fk_user;
        private $logo;
        private $name_school;
        public function __construct($id_school, $fk_user, $logo, $name_school)
        {
        }
    }

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

    class tbl_Videos
    {
        private $id_video;
        private $fk_course;
        private $title;
        private $short_description;
        private $content;
        private $viewed;
        private $level_;
        public function __construct($id_video, $fk_course, $title, $short_descriptio, $content, $viewed, $level_,)
        {
        }
    }

    class tbl_Resources{

    }
?>