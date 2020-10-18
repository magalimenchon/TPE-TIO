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

    }