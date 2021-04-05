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

    class tbl_Sales
    {
        private $id_sale;
        private $fk_sell;
        private $fk_course;
        public function __construct($id_sale, $fk_sell, $fk_course)
        {
        }
    }

    class tbl_Purchases
    {
        private $id_purchase;
        private $fk_buyer;
        private $fk_course;
        public function __construct($id_purchase, $fk_buyer, $fk_course)
        {
        }
    }
?>