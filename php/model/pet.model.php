<?php

    require_once 'php/model/connection.model.php';

    class PetModel {

        private $db;

        function __construct() {
            $connection = new Connection();
            $this->db = $connection->getConnection();
        }

        function getPets() {
            $query = $this->db->prepare('SELECT * FROM pet');
            $query->execute();
            return $query->fetchAll(PDO::FETCH_OBJ);
        }

        function getPet($id_pet = null) {
            $query = $this->db->prepare('SELECT * FROM pet WHERE id=?');
            $query->execute(array($id_pet));
            return $query->fetchAll(PDO::FETCH_OBJ);
        }

        function deletePet($id)
        {
            $query = $this->db->prepare('DELETE FROM pet WHERE id=?');
            $query->execute(array($id));
        }
        
    }