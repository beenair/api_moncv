<?php

require_once('database.php');

  class Model{
     

    protected $pdo;

    /**
     * Fonction retournant la connexion à la base de données.
     */
    public function __construct(){

      $this->pdo = getPdo();

    }

  }