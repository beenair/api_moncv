<?php

require_once('Model.php');


class Formation extends Model{

  /**
   * Fonction retournant les formations suivies et diplomes obtenus
   */
  public function get(){

    $query= $this->pdo->prepare("SELECT * FROM formation");
    $query->execute();
    
    $result = $query->fetchObject();
    $formation = json_encode($result);

    return $formation;

  }


}