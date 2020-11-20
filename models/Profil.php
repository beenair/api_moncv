<?php

require_once('Model.php');


class Profil extends Model{

  /**
   * Fonction retournant les informations relatives au profil
   */
  public function get(){

    $query= $this->pdo->prepare("SELECT * FROM profil");
    $query->execute();
    
    $result = $query->fetchAll();
    $profil = json_encode($result);


    return $profil;

  }


}