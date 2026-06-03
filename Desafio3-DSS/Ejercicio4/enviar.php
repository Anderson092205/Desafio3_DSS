<?php
//Import PHPMailer classes into the global namespace
//These must be at the top of your script, not inside a function
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;

// Cargar el autoloader de Composer
require 'vendor/autoload.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $to = $_POST['to'] ?? '';
    $to_multiple = $_POST['to_multiple'] ?? '';
    $subject = $_POST['subject'] ?? '';
    $message = $_POST['message'] ?? '';
    
    //Crear nuevas instancia
    $mail = new PHPMailer(true);

    try {
        //Server settings
        $mail->SMTPDebug = 0; // Ocultar salida de depuración en producción
        $mail->isSMTP();
        $mail->Host       = 'smtp.gmail.com';
        $mail->SMTPAuth   = true;
        
        // ¡REEMPLAZA ESTAS CREDENCIALES POR LAS TUYAS!
        $mail->Username   = 'cuentix.1@gmail.com'; // Usuario SMTP 
        $mail->Password   = 'gvmmffwqlqburpmp'; // Contraseña de aplicación SMTP
        
        $mail->SMTPSecure = PHPMailer::ENCRYPTION_SMTPS;
        $mail->Port       = 465;

        //Recipients
        $mail->setFrom($mail->Username, 'Mi Aplicacion');
        
        // Añadir el destinatario principal
        if (!empty($to)) {
            $mail->addAddress(trim($to));
        }
        
        // Añadir los destinatarios múltiples
        if (!empty($to_multiple)) {
            $destinatarios = explode(',', $to_multiple);
            foreach ($destinatarios as $destinatario) {
                $emailLimpio = trim($destinatario);
                if (!empty($emailLimpio)) {
                    $mail->addAddress($emailLimpio);
                }
            }
        }
        //Attachments
        if (isset($_FILES['anexo']) && $_FILES['anexo']['error'] == UPLOAD_ERR_OK) {
            $mail->addAttachment($_FILES['anexo']['tmp_name'], $_FILES['anexo']['name']);
        }

        //Content
        $mail->isHTML(true); // Cambiado a true para soportar la firma en HTML
        $mail->Subject = $subject;
        
        // Se agrega la firma/mensaje solicitado al final del correo
        $firma = "<br><br><hr><p><em>Reciba este mensaje, Hola desde php mailer para la materia de DSS 02 labortaorio y desarrollado por Anderson Moran y Brandon Salvador</em></p>";
        $mail->Body    = nl2br(htmlspecialchars($message)) . $firma;
        $mail->AltBody = $message . "\n\nReciba este mensaje, Hola desde php mailer para la materia de DSS 02 labortaorio y desarrollado por Anderson Moran y Brandon Salvador";

        $mail->send();
        // Mensaje de éxito en pantalla
        echo '<!DOCTYPE html><html lang="es"><head><meta charset="UTF-8"><title>Enviado</title><style>body{font-family:Arial,sans-serif;background-color:#f6f8fc;display:flex;justify-content:center;align-items:center;height:100vh;} .msg{background:white;padding:30px;border-radius:8px;box-shadow:0 4px 15px rgba(0,0,0,0.1);text-align:center;max-width:400px;line-height:1.5;} a{display:inline-block;margin-top:20px;text-decoration:none;background-color:#0b57d0;color:white;padding:10px 20px;border-radius:20px;}</style></head><body><div class="msg"><h2>Mensaje enviado con éxito!</h2><a href="enviar.html">Volver al Formulario</a></div></body></html>';
    } catch (Exception $e) {
        echo '<!DOCTYPE html><html lang="es"><head><meta charset="UTF-8"><title>Error</title><style>body{font-family:Arial,sans-serif;background-color:#f6f8fc;display:flex;justify-content:center;align-items:center;height:100vh;} .msg{background:white;padding:30px;border-radius:8px;box-shadow:0 4px 15px rgba(0,0,0,0.1);text-align:center;color:red;} a{display:inline-block;margin-top:20px;text-decoration:none;background-color:#0b57d0;color:white;padding:10px 20px;border-radius:20px;}</style></head><body><div class="msg"><h2>Error al enviar:</h2><p>' . $mail->ErrorInfo . '</p><a href="enviar.html">Volver</a></div></body></html>';
    }
} else {
    header("Location: enviar.html");
    exit;
}
