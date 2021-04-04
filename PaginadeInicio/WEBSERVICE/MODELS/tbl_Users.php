<?php
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
?>