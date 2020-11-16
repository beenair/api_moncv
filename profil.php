<?php


require_once('models/Profil.php');


$model = new Profil();

$profil = $model->getProfil();

echo $profil;