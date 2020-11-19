<?php


  function getPdo(){

    $pdo = new PDO('mysql:host=localhost;dbname=moncv', 'cv', 'cv');

    return $pdo;

  }