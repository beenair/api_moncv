<?php


require_once('models/Profil.php');


$profil = new Profil();

$infosprofil = $profil->get();

return $infosprofil;