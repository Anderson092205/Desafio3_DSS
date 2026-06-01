<?php
// Inicialización de variables para evitar errores de "undefined index"
$id = $titulo = $contenido = $prioridad = "";

if(isset($dataToView["data"])) {
    $id = $dataToView["data"]["id"] ?? "";
    $titulo = $dataToView["data"]["titulo"] ?? "";
    $contenido = $dataToView["data"]["contenido"] ?? "";
    $prioridad = $dataToView["data"]["prioridad"] ?? "Media";
}
?>

<div class="row">
    <h3><?php echo empty($id) ? 'Crear Nuevo Apunte' : 'Editar Apunte'; ?></h3>
    <hr/>

    <?php if(isset($_GET["response"]) && $_GET["response"] == true): ?>
        <div class="alert alert-success">
            Operación realizada correctamente. <a href="index.php?controller=apuntes&action=listar">Volver al listado</a>
        </div>
    <?php endif; ?>

    <form class="form" action="index.php?controller=apuntes&action=guardar" method="POST" enctype="multipart/form-data">
        <input type="hidden" name="id" value="<?php echo $id; ?>" />
        
        <div class="form-group mb-3">
            <label>Título:</label>
            <input class="form-control" type="text" name="titulo" value="<?php echo $titulo; ?>" required />
        </div>

        <div class="form-group mb-3">
            <label>Contenido:</label>
            <textarea class="form-control" name="contenido" rows="5" required><?php echo $contenido; ?></textarea>
        </div>

        <div class="form-group mb-3">
            <label>Prioridad:</label>
            <select class="form-control" name="prioridad">
                <option value="Alta" <?php echo ($prioridad == 'Alta') ? 'selected' : ''; ?>>Alta</option>
                <option value="Media" <?php echo ($prioridad == 'Media') ? 'selected' : ''; ?>>Media</option>
                <option value="Baja" <?php echo ($prioridad == 'Baja') ? 'selected' : ''; ?>>Baja</option>
            </select>
        </div>

        <div class="form-group mb-3">
            <label>Fotografía (Opcional):</label>
            
            <div id="drop-zone" class="border rounded p-4 text-center bg-light" style="border: 2px dashed #ccc !important; cursor: pointer; transition: all 0.3s ease;">
                <p class="mb-1 text-muted">
                    <svg xmlns="http://www.w3.org/2000/svg" width="48" height="48" fill="currentColor" class="bi bi-cloud-arrow-up" viewBox="0 0 16 16">
                        <path fill-rule="evenodd" d="M7.646 5.146a.5.5 0 0 1 .708 0l2 2a.5.5 0 0 1-.708.708L8.5 6.707V10.5a.5.5 0 0 1-1 0V6.707L6.354 7.854a.5.5 0 1 1-.708-.708l2-2z"/>
                        <path d="M4.406 3.342A5.53 5.53 0 0 1 8 2c2.69 0 4.923 2 5.166 4.579C14.758 6.804 16 8.137 16 9.773 16 11.569 14.502 13 12.687 13H3.781C1.708 13 0 11.366 0 9.318c0-1.763 1.266-3.223 2.942-3.593.143-.863.698-1.723 1.464-2.383zm.653.757c-.757.653-1.153 1.44-1.153 2.056v.448l-.445.049C2.064 6.805 1 7.952 1 9.318 1 10.785 2.23 12 3.781 12h8.906C13.98 12 15 10.988 15 9.773c0-1.216-1.02-2.228-2.313-2.228h-.5v-.5C12.188 4.825 10.328 3 8 3a4.53 4.53 0 0 0-2.941 1.1z"/>
                    </svg>
                </p>
                <p class="mb-0" id="drop-zone-text">Arrastra y suelta una imagen aquí o haz clic para seleccionar</p>
                <p class="mt-2 mb-0 fw-bold" id="file-info" style="display: none;"></p>
                <input type="file" id="file-input" name="fotografia" accept="image/*" style="display: none;" />
            </div>

            <?php if(!empty($dataToView["data"]["fotografia"])): ?>
                <div class="mt-2 text-center">
                    <small class="text-muted">Imagen actual: <?php echo $dataToView["data"]["fotografia"]; ?></small>
                </div>
            <?php endif; ?>
        </div>

<script>
document.addEventListener('DOMContentLoaded', function() {
    const dropZone = document.getElementById('drop-zone');
    const fileInput = document.getElementById('file-input');
    const dropZoneText = document.getElementById('drop-zone-text');
    const fileInfo = document.getElementById('file-info');

    // Hacer que toda la zona sea clickeable
    dropZone.addEventListener('click', () => fileInput.click());

    // Resaltar la zona al arrastrar encima
    ['dragenter', 'dragover'].forEach(eventName => {
        dropZone.addEventListener(eventName, preventDefaults, false);
        dropZone.addEventListener(eventName, highlight, false);
    });

    ['dragleave', 'drop'].forEach(eventName => {
        dropZone.addEventListener(eventName, preventDefaults, false);
        dropZone.addEventListener(eventName, unhighlight, false);
    });

    // Manejar archivos soltados
    dropZone.addEventListener('drop', handleDrop, false);

    // Manejar selección de archivos por clic
    fileInput.addEventListener('change', handleFiles, false);

    function preventDefaults(e) {
        e.preventDefault();
        e.stopPropagation();
    }

    function highlight(e) {
        dropZone.classList.add('bg-secondary', 'text-white');
        dropZone.classList.remove('bg-light', 'text-muted');
        dropZone.style.borderColor = '#6c757d';
    }

    function unhighlight(e) {
        dropZone.classList.remove('bg-secondary', 'text-white');
        dropZone.classList.add('bg-light', 'text-muted');
        dropZone.style.borderColor = '#ccc';
    }

    function handleDrop(e) {
        const dt = e.dataTransfer;
        const files = dt.files;
        
        if (files.length > 0) {
            fileInput.files = files; // Asignar archivos al input oculto
            updateFileInfo(files[0]);
        }
    }

    function handleFiles() {
        if (fileInput.files.length > 0) {
            updateFileInfo(fileInput.files[0]);
        }
    }

    function formatBytes(bytes, decimals = 2) {
        if (!+bytes) return '0 Bytes';
        const k = 1024;
        const dm = decimals < 0 ? 0 : decimals;
        const sizes = ['Bytes', 'KB', 'MB', 'GB', 'TB', 'PB', 'EB', 'ZB', 'YB'];
        const i = Math.floor(Math.log(bytes) / Math.log(k));
        return `${parseFloat((bytes / Math.pow(k, i)).toFixed(dm))} ${sizes[i]}`;
    }

    function updateFileInfo(file) {
        dropZoneText.style.display = 'none';
        fileInfo.style.display = 'block';
        fileInfo.innerHTML = `Archivo seleccionado: <strong>${file.name}</strong> <br> Tamaño: <span class="text-success">${formatBytes(file.size)}</span>`;
    }
});
</script>

        <button type="submit" class="btn btn-primary">Guardar Apunte</button>
        <a class="btn btn-outline-danger" href="index.php?controller=apuntes&action=listar">Cancelar</a>
    </form>
</div>