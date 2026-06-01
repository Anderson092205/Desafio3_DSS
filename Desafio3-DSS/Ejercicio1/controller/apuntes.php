<?php 
require_once 'model/apuntes.php';

class apuntesController {
    public $page_title;
    public $view;
    public $noteObj;

    public function __construct() {
        $this->view = 'listar_apuntes';
        $this->page_title = '';
        $this->noteObj = new Apuntes();
    }

    public function listar() {
        $this->page_title = 'Mis Apuntes';
        return $this->noteObj->obtenerApuntes();
    }

    public function editar($id = null) {
        $this->page_title = 'Editar Apunte';
        $this->view = 'editar_apunte';
        
        if(isset($_GET["id"])) $id = $_GET["id"];
        
        return $this->noteObj->ObtenerApuntePorId($id);
    }

    public function ver($id = null) {
        $this->page_title = 'Ver Info de Apunte';
        $this->view = 'ver_apunte';
        
        if(isset($_GET["id"])) $id = $_GET["id"];
        
        return $this->noteObj->ObtenerApuntePorId($id);
    }

    public function guardar() {
        $this->view = 'editar_apunte';
        $this->page_title = 'Editar Apunte';
        
        // Manejo de la subida de imagen
        $nombreArchivo = null;
        if(isset($_FILES['fotografia']) && $_FILES['fotografia']['error'] === UPLOAD_ERR_OK) {
            $carpetaDestino = 'uploads/';
            if (!is_dir($carpetaDestino)) mkdir($carpetaDestino, 0777, true);
            
            $nombreArchivo = time() . '_' . basename($_FILES['fotografia']['name']);
            move_uploaded_file($_FILES['fotografia']['tmp_name'], $carpetaDestino . $nombreArchivo);
        }

        // Guardar en el modelo
        $id = $this->noteObj->Guardar($_POST, $nombreArchivo);
        
        // Obtener datos actualizados para la vista
        $result = $this->noteObj->ObtenerApuntePorId($id);
        $_GET["response"] = true;
        
        return $result;
    }

    public function confirmarBorrado() {
        $this->page_title = 'Borrar Apunte';
        $this->view = 'confirmar_borrar_apunte';
        return $this->noteObj->ObtenerApuntePorId($_GET["id"]);
    }

    public function borrar() {
        $this->page_title = 'Listado de Apuntes';
        $this->view = 'borrar_apunte';
        return $this->noteObj->BorrarApuntePorId($_POST["id"]);
    }
}