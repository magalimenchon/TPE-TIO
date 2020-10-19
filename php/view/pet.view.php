<?php

    require_once 'libs/Smarty.class.php';
    
    class PetView {

        private $title;
        private $smarty;

        function __construct() {
            $this->title = 'Adoptame.com';
            $this->smarty = new Smarty();
        }

        function renderHome($pets) {
            $this->smarty->assign('title', $this->title);
            $this->smarty->assign('pets', $pets);
            $this->smarty->display('templates/index.tpl');
        }

        function renderInfo($pets, $pet) {
            $this->smarty->assign('title', $this->title);
            $this->smarty->assign('pets', $pets);
            $this->smarty->assign('petDB', $pet);
            $this->smarty->display('templates/index.info.tpl');
        }

        function renderAbout() {
            $this->smarty->assign('title', 'About');
            $this->smarty->display('templates/about.tpl');
        }

        function showHomeLocation(){
            header('Location:'.BASE_URL);
        }
        
    }