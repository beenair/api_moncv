<?php

require_once('Model.php');


class Formation extends Model{


  public function getFormation(){

    $query= $this->pdo->prepare("SELECT * FROM formationn");
    $query->execute();
    
    $result = $query->fetchAll();
    $formation = json_encode($result);

    return $formation;

  }


}