<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: access");
header("Access-Control-Allow-Methods: GET, POST, PUT, DELETE, OPTIONS");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");

require_once '../../conectiondb.php';

$id = $_POST['id'];
$nome = $_POST['nome'];
$login = $_POST['login'];
$cpf = $_POST['cpf'];
$senha = $_POST['senha'];
$data_admissao = $_POST['data_cadastro'];
$is_active = $_POST['is_active'];

$update = $conn->prepare("UPDATE operador SET nome = '$nome',login='$login',cpf = '$cpf',senha = '$senha', data_cadastro = '$data_admissao',is_active = '$is_active' WHERE id = '$id'");
$update->execute();
echo json_encode('executado com sucesso');
?>