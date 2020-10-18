<?php

    require_once 'php/view/pet.view.php';

    class PetController {
        
        private $view;
        
        function __construct() {
            $this->view = new PetView();
        }

        function getHome() {
            $this->view->renderHome();
        }

    }