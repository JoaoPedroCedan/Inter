<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: access");
header("Access-Control-Allow-Methods: GET, POST, PUT, DELETE, OPTIONS");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");

require_once '../../conectiondb.php';

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

$insert = $conn->prepare("INSERT INTO cliente 
(nome,telefone,cpf,bairro,cep,logradouro,numero,cidade,estado,is_active) 
values 
('$nome','$telefone', '$cpf', '$cep', '$logradouro', '$numero', '$bairro', '$cidade', '$estado', '$status')");
if($insert->execute()){
    echo json_encode('efeutado com sucesso') ;
};



?>