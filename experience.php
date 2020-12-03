<?php


require_once('models/Experience.php');


$experience = new Experience();

$infosexperience = $experience->get();

echo $infosexperience;