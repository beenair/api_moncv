<?php


require_once('models/Missions.php');


$mission = new Mission();

$missions = $mission->get();

echo $missions;