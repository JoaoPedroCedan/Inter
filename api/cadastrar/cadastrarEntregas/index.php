<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: access");
header("Access-Control-Allow-Methods: GET, POST, PUT, DELETE, OPTIONS");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");

require_once '../../conectiondb.php';

$quantidade = $_POST['quantidade'];
$descricao = $_POST['descricao'];
$pedido = $_POST['pedido'];
$nome_cliente = $_POST['nome_cliente'];
$nome_entregador = $_POST['nome_entregador'];
$nome_operador = $_POST['nome_operador'];
$status = $_POST['status'];
$insert = $conn->prepare("INSERT INTO entregas (quantidade,descricao,pedido,id_cliente,id_entregador,id_operador,status) values ('$quantidade','$descricao','$pedido','$nome_cliente','$nome_entregador','$nome_operador','$status')");
if($insert->execute()){
    echo json_encode('efetuado com sucesso') ;  
}
?>