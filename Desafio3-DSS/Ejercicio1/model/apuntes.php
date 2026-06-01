<?php 
class Apuntes {
    private $table = 'apuntes';
    private $conection;

    public function getConection(){
        $dbObj = new Db();
        $this->conection = $dbObj->conection;
    }

    public function obtenerApuntes(){
        $this->getConection();
        $stmt = $this->conection->prepare("SELECT * FROM ".$this->table);
        $stmt->execute();
        return $stmt->fetchAll();
    }

    public function ObtenerApuntePorId($id){
        if(is_null($id)) return false;
        $this->getConection();
        $stmt = $this->conection->prepare("SELECT * FROM ".$this->table. " WHERE id = ?");
        $stmt->execute([$id]);
        return $stmt->fetch();
    }

    public function Guardar($param, $nombreImagen = null){
        $this->getConection();
        
        $titulo = $param['titulo'] ?? '';
        $contenido = $param['contenido'] ?? '';
        $prioridad = $param['prioridad'] ?? 'Media';

        if(isset($param["id"]) && $param["id"] != ''){
            $sql = "UPDATE ".$this->table. " SET titulo=?, contenido=?, prioridad=?, fotografia=IFNULL(?, fotografia) WHERE id=?";
            $stmt = $this->conection->prepare($sql);
            $stmt->execute([$titulo, $contenido, $prioridad, $nombreImagen, $param["id"]]);
            return $param["id"];
        } else {
            $sql = "INSERT INTO ".$this->table. " (titulo, contenido, prioridad, fotografia) values(?, ?, ?, ?)";
            $stmt = $this->conection->prepare($sql);
            $stmt->execute([$titulo, $contenido, $prioridad, $nombreImagen]);
            return $this->conection->lastInsertId();
        } 
    }

    public function BorrarApuntePorId($id){
        $this->getConection();
        $stmt = $this->conection->prepare("DELETE FROM ".$this->table. " WHERE id = ?");
        return $stmt->execute([$id]);
    }
}