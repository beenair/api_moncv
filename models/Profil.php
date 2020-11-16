<?php

require_once('Model.php');


class Profil extends Model{


  public function getProfil(){

    $query= $this->pdo->prepare("SELECT * FROM profil");
    $query->execute();
    
    $result = $query->fetchAll();
    $profil = json_encode($result);

    return $profil;

  }


}