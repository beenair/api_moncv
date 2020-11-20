<?php

require_once('Model.php');


class Experience extends Model{

  /**
   * Fonction retournant le parcours professionnel
   */
  public function get(){

    $query= $this->pdo->prepare("SELECT * FROM experience");
    $query->execute();
    
    $result = $query->fetchObject();
    $experience = json_encode($result);

    return ($experience);

  }


}