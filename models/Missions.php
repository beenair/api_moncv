<?php

require_once('Model.php');


class Mission extends Model{

  /**
   * Fonction retournant les différentes missions des expériences pro
   */
  public function get(){

    $query= $this->pdo->prepare("SELECT * FROM missions");
    $query->execute();
    
    $result = $query->fetchAll();
    $missions = json_encode($result);

    return ($missions);

  }


}