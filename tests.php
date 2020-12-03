<?php

  function testLog(){

    $fichierLog = fopen('test.log','a+');

    $compteur = 0;

    while ($compteur <= 10) {
      fwrite($fichierLog, "Le total n'est pas atteint \n");
      $compteur++;
    }
    fwrite($fichierLog, "Le total est atteint \n");


    fclose($fichierLog);

  }


  testLog();


?>


<!DOCTYPE html>
<html lang="fr">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Test</title>
</head>
<body>


  
</body>
</html>


