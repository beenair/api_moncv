<?php


require_once('models/Hobbies.php');


$hobbie = new Hobbie();

$hobbies = $hobbie->get();

echo $hobbies;