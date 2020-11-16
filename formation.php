<?php

require_once('models/Formation.php');


$model = new Formation();

$formations = $model->getFormation();

echo $formations;