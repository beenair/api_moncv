<?php

require_once('Model.php');


class Hobbie extends Model{

  /**
   * Fonction retournant les différents loisirs
   */
  public function get(){

    $query= $this->pdo->prepare("SELECT * FROM hobbies");
    $query->execute();
    
    $result = $query->fetchAll();
    $hobbies = json_encode($result);

    return ($hobbies);

  }


}