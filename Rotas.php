<?php
$request = $_SERVER['REQUEST_URI'];
$request = explode('?', $request)[0];
if ($request == "/"){
require __DIR__ . "index.php";
} elseif($request == "/home"){
  require __DIR__ . "Home.php";
}
?>
