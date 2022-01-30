<?php
    class Usuarios extends Controlador{
        public function __construct()
        {
            $this->usuarioModelo = $this->modelo('Usuario');
        }

        public function index(){
            $usuarios = $this->usuarioModelo->obtenerUsuarios();

            $datos = [
                'titulo' => 'Usuarios',
                'usuarios' => $usuarios
            ];

            $this->vista('usuarios/login', $datos);
        }

        public function actualizar($num_registro){
            echo $num_registro;
        }
    }