<?php

    require_once 'libs/Smarty.class.php';
    
    class PetView {

        private $title;
        private $smarty;

        function __construct() {
            $this->title = 'Adoptame.com';
            $this->smarty = new Smarty();
        }

        function renderHome() {
            $this->smarty->assign('title', $this->title);
            $this->smarty->display('templates/index.tpl');
        }

        function showHomeLocation(){
            header('Location:'.BASE_URL);
        }
        
    }