<?php
if (isset($_POST['nombre']) && isset($_POST['mail']) && isset($_POST['asunto']) && isset($_POST['mensaje'])) {
    if (empty($_POST['nombre']) || empty($_POST['mail']) || empty($_POST['asunto']) || empty($_POST['mensaje'])) {
        echo ("por favor completa todos los campos e intenta de nuevo");
    } else {

        error_reporting(0);
        $nombre = $_POST['nombre'];
        $mail = $_POST['mail'];
        $asunto = "nuevo mensaje de la web de adopcion. Asunto: ";
        $asunto .= $_POST['asunto']; /*aca podriamos poner que alguien quiere adoptar una mascota*/
        $comentario = $_POST['mensaje'];

        $header = 'From: ' . $mail . "\r\n";
        $header .= "X-Mailer: PHP/" . phpversion() . " \r\n";
        $header .= "Mime-Version: 1.0 \r\n";
        $header .= "Content-Type: text/plain";

        $mensaje = "Este mensaje fue enviado por " . $nombre . " \r\n";
        $mensaje .= "Su e-mail es: " . $mail . " \r\n";
        $mensaje .= "Su mensaje es: " . $comentario . " \r\n";
        $mensaje .= "Enviado el " . date('d/m/Y', time());

        $para = "mariano.arias12@gmail.com";

        mail($para, $asunto, utf8_decode($mensaje), $header);
        echo ('<p>su mensaje fue enviado correctamente</p>');
    }
}