<?php
session_start();

// Antes que nada, requerimos el autoload.
require __DIR__ . '/../autoload.php';

// Guardamos la ruta absoluta de base del proyecto.
$rootPath = realpath(__DIR__ . '/../');
echo($rootPath);
// Normalizamos las \ a /
$rootPath = str_replace('\\', '/', $rootPath);

// Requerimos las rutas de la aplicación.
require $rootPath . '/app/routes.php';

// Instanciamos nuestra App.
$app = new \cafeterias\Core\App($rootPath);

// Arrancamos la App.
$app->run();