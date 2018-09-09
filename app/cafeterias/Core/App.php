<?php

namespace cafeterias\Core;

/**
 * Class App
 * @package cafeterias\Core
 *
 * Maneja el funcionamiento b醩ico de la aplicaci贸n.
 */
class App
{
    private static $rootPath;
    private static $appPath;
    private static $publicPath;
    private static $viewsPath;
    private static $urlPath;

    /** @var Request La petici贸n del usuario. */
    protected $request;

    /**
     * App constructor.
     * @param $rootPath
     */
    public function __construct($rootPath)
    {
        self::$rootPath = $rootPath;
        self::$appPath = $rootPath . '/app';
        self::$publicPath = $rootPath . '/public_html';
        self::$viewsPath = $rootPath . '/views';

        self::$urlPath = $_SERVER['REQUEST_SCHEME'] . "://" . $_SERVER['SERVER_NAME'] .  $_SERVER['SCRIPT_NAME'];

        self::$urlPath = substr(self::$urlPath, 0, -9);
    }

    /**
     * Arranca la aplicaci贸n.
     */
    public function run()
    {
        // Obtenemos la petici贸n.
        $this->request = new Request();

        // Verificamos si la ruta existe.
        if(Route::exists($this->request->getMethod(), $this->request->getRequestedUrl())) {
           
            $controller = Route::getController($this->request->getMethod(), $this->request->getRequestedUrl());
            
            $this->executeController($controller);
       
            } else {
                
            throw new \Exception("No existe la ruta especificada.");
            // Opcionalmente, podemos directamente llamar a una p醙ina que muestre un error 404 o una p醙ina
            // template que diga que el recurso no se encontr贸.
        }
    }

    /**
     * Instancia el controller y ejecuta el m茅todo.
     *
     * @param string $controller El controller y su m茅todo.
     */
    public function executeController($controller)
    {
        // $controller = "HomeController@index";
        $controllerData = explode('@', $controller);
        $controllerName = $controllerData[0];
        $controllerMethod = $controllerData[1];

        // $controllerName = "HomeController";
        // Le agregamos el namespace a la clase.
        $controllerName = "\\cafeterias\\Controllers\\" . $controllerName;
        // Esto nos deja, ej:
        // \cafeterias\Controllers\HomeController

        // Instanciamos el controller.
        // Ej: new \cafeterias\Controllers\HomeController
        $controllerObject = new $controllerName;

        // Ejecutamos su m茅todo.
        $controllerObject->{$controllerMethod}();
    }

    /**
     * Redirecciona al $path indicado.
     *
     * @param string $path
     */
    public static function redirect($path = '')
    {
        header('Location: ' . self::getUrlPath() . $path);
        exit;
    }

    /**
     * Retorna una url absoluta para el $path indicado.
     *
     * @param string $path
     * @return string
     */
    public static function urlTo($path = '')
    {
        // Quitamos la barra de inicio de la ruta, de estar presente.
        if(strpos($path, '/') === 0) {
            $path = substr($path, 1);
        }

        return self::$urlPath . $path;
    }

    /**
     * @return mixed
     */
    public static function getRootPath()
    {
        return self::$rootPath;
    }

    /**
     * @return string
     */
    public static function getAppPath()
    {
        return self::$appPath;
    }

    /**
     * @return string
     */
    public static function getPublicPath()
    {
        return self::$publicPath;
    }

    /**
     * @return string
     */
    public static function getViewsPath()
    {
        return self::$viewsPath;
    }

    /**
     * @return mixed
     */
    public static function getUrlPath()
    {
        return self::$urlPath;
    }
}