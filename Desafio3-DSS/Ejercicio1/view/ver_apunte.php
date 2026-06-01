<?php
$id = $dataToView["data"]["id"] ?? "";
$titulo = $dataToView["data"]["titulo"] ?? "";
$contenido = $dataToView["data"]["contenido"] ?? "";
$prioridad = $dataToView["data"]["prioridad"] ?? "Media";
$fotografia = $dataToView["data"]["fotografia"] ?? "";
?>

<div class="row">
    <div class="col-md-8 mx-auto">
        <div class="card shadow-sm border-0">
            <?php if(!empty($fotografia)): ?>
                <div class="bg-light text-center" style="padding: 20px; border-bottom: 1px solid #eaeaea;">
                    <img src="uploads/<?php echo htmlspecialchars($fotografia); ?>" class="img-fluid rounded" alt="Fotografía del apunte" style="max-height: 250px; object-fit: contain; box-shadow: 0 4px 6px rgba(0,0,0,0.1);">
                </div>
            <?php else: ?>
                <div class="card-img-top bg-light d-flex align-items-center justify-content-center" style="height: 200px;">
                    <div class="text-center text-muted">
                        <i class="bi bi-image" style="font-size: 3rem;"></i>
                        <p class="mt-2 mb-0">Sin imagen adjunta</p>
                    </div>
                </div>
            <?php endif; ?>
            
            <div class="card-body p-4">
                <div class="d-flex justify-content-between align-items-center mb-3">
                    <h2 class="card-title mb-0 text-primary"><?php echo htmlspecialchars($titulo); ?></h2>
                    <span class="badge bg-<?php echo ($prioridad == 'Alta') ? 'danger' : (($prioridad == 'Media') ? 'warning text-dark' : 'success'); ?> fs-6 px-3 py-2">
                        Prioridad <?php echo htmlspecialchars($prioridad); ?>
                    </span>
                </div>

                <hr class="my-4">

                <h5 class="text-muted mb-3">Contenido del apunte:</h5>
                <div class="card-text" style="font-size: 1.15em; line-height: 1.7; color: #444; background: #fdfdfd; padding: 20px; border-radius: 8px; border-left: 4px solid #0d6efd;">
                    <?php echo nl2br(htmlspecialchars($contenido)); ?>
                </div>

                <div class="d-flex justify-content-between mt-5">
                    <a href="index.php?controller=apuntes&action=listar" class="btn btn-outline-secondary px-4">
                        <i class="bi bi-arrow-left"></i> Volver al listado
                    </a>
                    <div>
                        <a href="index.php?controller=apuntes&action=editar&id=<?php echo htmlspecialchars($id); ?>" class="btn btn-primary px-4">
                            <i class="bi bi-pencil"></i> Editar Apunte
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
