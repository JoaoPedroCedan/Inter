<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: access");
header("Access-Control-Allow-Methods: GET, POST, PUT, DELETE, OPTIONS");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");

require_once '../../conectiondb.php';

$id = $_POST['id'];
$nome = $_POST['nome'];
$telefone = $_POST['telefone'];
$cpf = $_POST['cpf'];
$cep = $_POST['cep'];
$logradouro = $_POST['logradouro'];
$numero = $_POST['numero'];
$bairro = $_POST['bairro'];
$cidade = $_POST['cidade'];;
$estado = $_POST['estado'];
$status = $_POST['status'];

$update = $conn->prepare("UPDATE cliente SET nome = '$nome', telefone ='$telefone', cpf ='$cpf', bairro ='$bairro', cep='$cep',logradouro='$logradouro',numero='$numero', cidade='$cidade', estado='$estado', is_active='$status' WHERE id = '$id'");
$update->execute();
echo json_encode('executado com sucesso')
?>