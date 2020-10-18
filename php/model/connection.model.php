<?php

    class Connection {

        private $db;

        function __construct() {
            $host = 'host=localhost;';
            $dbname = 'dbname=db_adoptame;charset=utf8';
            $user = 'root';
            $password = '';
            try {
                $pdo = new PDO( 'mysql:'.$host.$dbname, $user, $password );
            //    echo 'Successful connection.';
            } catch ( PDOException $exc ) {
            //    echo 'Connection error: '.$exc ->getMessage();
            }
            $this->db = $pdo;
        }

        function getConnection() {
            return $this->db;
        }
    }