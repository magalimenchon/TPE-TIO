<?php

    require_once 'php/view/pet.view.php';
    require_once 'php/model/pet.model.php';

    class PetController {
        
        private $view;
        private $model;
        
        function __construct() {
            $this->view = new PetView();
            $this->model = new PetModel();
        }

        function getHome() {
            $pets = $this->model->getPets();
            $this->view->renderHome($pets);
        }
        
        function getInfo($params = null) {
            $pet_id = $params[':ID'];
            $pets = $this->model->getPets();
            $pet = $this->model->getPet($pet_id);
            $this->view->renderInfo($pets, $pet);
        }

    }