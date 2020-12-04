<?php

require_once('models/Formation.php');


$formation = new Formation();

$infosformation = $formation->get();

echo $infosformation ;