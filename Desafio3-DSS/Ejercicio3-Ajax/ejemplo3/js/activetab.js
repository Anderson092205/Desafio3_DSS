function makeactive(tab) { 
   // Quitar la clase active de todas las pestañas (originales y nuevas)
   if(document.getElementById("tab1")) document.getElementById("tab1").className = ""; 
   if(document.getElementById("tab2")) document.getElementById("tab2").className = ""; 
   if(document.getElementById("tab3")) document.getElementById("tab3").className = ""; 
   if(document.getElementById("tabe1")) document.getElementById("tabe1").className = ""; 
   if(document.getElementById("tabe2")) document.getElementById("tabe2").className = ""; 
   if(document.getElementById("tabe4")) document.getElementById("tabe4").className = ""; 
   
   // Poner la clase active en la pestaña seleccionada
   document.getElementById("tab" + tab).className = "active"; 
   
   // Si es una pestaña original del Ejemplo 3 (1, 2 o 3), usar AJAX (AHAH)
   if (tab === 1 || tab === 2 || tab === 3) {
       callAHAH('content.php?content=' + tab, 'content', 'Esperando para cargar el contenido de la pestaña ' + tab + '. Espere, por favor...', 'Error'); 
   } 
   // Si es una pestaña de los otros ejemplos, usar un iframe para no romper sus scripts
   else if (tab === 'e1') {
       document.getElementById('content').innerHTML = '<iframe src="../ejemplo1/dynamicform.html"></iframe>';
   } else if (tab === 'e2') {
       document.getElementById('content').innerHTML = '<iframe src="../ejemplo2/prevlinks.html"></iframe>';
   } else if (tab === 'e4') {
       document.getElementById('content').innerHTML = '<iframe src="../ejemplo4/registroempleado.php"></iframe>';
   }
}
