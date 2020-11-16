<?php


  function getPdo(){

    $pdo = new PDO('mysql:host=localhost;dbname=moncv', 'root', 'root');

    return $pdo;

  }