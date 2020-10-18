<?php

    require_once 'RouterClass.php';
    require_once 'php/controller/pet.controller.php';

    define('BASE_URL','//'.$_SERVER['SERVER_NAME'].':'.$_SERVER['SERVER_PORT'].dirname($_SERVER['PHP_SELF']).'/');

    $r = new Router();

    $r->addRoute('home', 'GET', 'PetController', 'getHome');
    
    $r->addRoute('info/:ID', 'GET', 'PetController', 'getInfo');

    $r->setDefaultRoute('PetController', 'getHome');
    
    $r->route($_GET['action'], $_SERVER['REQUEST_METHOD']);

