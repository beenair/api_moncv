<?php

require_once('models/Formation.php');


$formation = new Formation();

$infosformation = $formation->get();

return $infosformation ;