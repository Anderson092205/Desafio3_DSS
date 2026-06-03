<?php
   $host = "localhost";
   $user = "root"; //Cambiar por el usuario de la base de datos en su servidor
   $pass = ""; //Cambiar por la contraseña de la base de datos en su servidor
   $db = "prensa";
   //Establecer conexión con el servidor MySQL
   $cn = new mysqli($host, $user, $pass, $db);
   $cn->set_charset("utf8"); // Establecer charset para no necesitar utf8_encode
   if($cn->connect_errno){
      printf("Falló la conexión: %s\n", $cn->connect_error);
      exit(0);
   }
   $tipo = isset($_GET['content']) ? (int)$_GET['content'] : 0;
   if($tipo != 0){
      $info = ""; // Inicializar para evitar warnings si no hay resultados
      $qr  = "SELECT titulonoticia, textonoticia, imgnoticia FROM noticia ";
      $qr .= "WHERE idnota = $tipo";
      $rs = $cn->query($qr);
      while($row = $rs->fetch_object()){
         $info  = "<div id=\"titulo\">\n<h2>{$row->titulonoticia}</h2>\n</div>\n";
         $info .= "<div id=\"texto\">\n<p>\n{$row->textonoticia}\n";
         $info .= "<img src=\"{$row->imgnoticia}\n\" />\n";
         $info .= "</p>\n</div>\n";
      }
      echo $info; // Imprimir directamente ya que se configuró el charset a UTF-8
   }
?>
