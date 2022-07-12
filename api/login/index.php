<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: access");
header("Access-Control-Allow-Methods: GET, POST, PUT, DELETE, OPTIONS");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");

require_once '../conectiondb.php';
$data = json_decode(file_get_contents("php://input"));

$usuario = $data->usuario;
$senha = $data->senha;

$select = $conn->prepare("SELECT * FROM administrador where BINARY login = '$usuario' AND senha = '$senha'");
$select->bindValue('usuario', $usuario);
$select->bindValue('senha', $senha);
$select->execute();
$result = $select->fetchAll(PDO::FETCH_ASSOC);
echo json_encode($result);



?> 