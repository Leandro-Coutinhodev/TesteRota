<?php
// Obtenha a URL solicitada
$request = $_SERVER['REQUEST_URI'];

// Remova qualquer parâmetro de consulta da URL
$request = explode('?', $request)[0];

// Defina suas rotas
switch ($request) {
    case '/' :
        require __DIR__ . '/index.php';
        break;
    case '/home' :
        require __DIR__ . '/Home.php';
        break;
    default:
        http_response_code(404);
        //require __DIR__ . '/404.php';
        break;
}

?>
