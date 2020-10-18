<?php
class MailerService{
    function mail()
    {
        if (isset($_POST['name']) && isset($_POST['email']) && isset($_POST['pet'])) {
            if (empty($_POST['name']) || empty($_POST['email']) || empty($_POST['pet'])) {
                echo ("por favor completa todos los campos e intenta de nuevo");
            } else {
        
                error_reporting(0);
                $name = $_POST['name'];
                $mail = $_POST['email'];
                $pet = $_POST['pet'];
                $asunto = "nuevo mensaje de la web de adopcion para adoptar a " . $pet;
        
        
                $header = 'From: ' . $mail . "\r\n";
                $header .= "X-Mailer: PHP/" . phpversion() . " \r\n";
                $header .= "Mime-Version: 1.0 \r\n";
                $header .= "Content-Type: text/plain";
        
                $mensaje = $name . " quiere adoptar a " . $pet . ". Rapido, conmunicate con el para seguir con el proceso "." \r\n";
                $mensaje .= "Su e-mail es: " . $mail . " \r\n";
                $mensaje .= "Enviado el " . date('d/m/Y', time());
        
                $for = "mariano.arias12@gmail.com";/*aca va el mail del final user*/ 
        

                mail($for, $asunto, utf8_decode($mensaje), $header);
                echo ('<p>se ha notificado a la organizacion nos comunicaremos con usted en breve</p>');
            }
        }
    }

}
