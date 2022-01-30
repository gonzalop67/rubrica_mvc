<?php
    /*
    Mapear la url ingresada en el navegador,
    1-controlador
    2-método
    3-Parámetro
    Ejemplo: /articulos/actualizar/4
    */

    class Core {
        protected $controladorActual = 'usuarios';
        protected $metodoActual = 'index';
        protected $parametros = [];

        //constructor
        public function __construct()
        {

            $url = $this->getUrl();

            if (isset($url[0])) {
                //buscar en controladores si el controlador existe
                if (file_exists('../app/controladores/'.ucwords($url[0]).'.php')) {
                    //si existe se setea como controlador por defecto
                    $this->controladorActual = ucwords($url[0]);

                    //unset indice
                    unset($url[0]);
                }
            }

            //requerir el controlador
            require_once '../app/controladores/' . $this->controladorActual . '.php';
            $this->controladorActual = new $this->controladorActual;

            //chequear la segunda parte de la url que sería el método
            if (isset($url[1])) {
                if (method_exists($this->controladorActual, $url[1])) {
                    //chequeamos el método
                    $this->metodoActual = $url[1];
                    //unset indice
                    unset($url[1]);
                }   
            }

            //obtener los posibles parámetros
            $this->parametros = $url ? array_values($url) : [];

            //llamar callback con parametros array
            call_user_func_array([$this->controladorActual, $this->metodoActual], $this->parametros);
        }
 
        public function getUrl(){
            if (isset($_GET['url'])) {
                $url = rtrim($_GET['url'], '/');
                $url = filter_var($url, FILTER_SANITIZE_URL);
                $url = explode('/', $url);
                return $url;
            }
        }
    }