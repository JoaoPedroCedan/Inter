<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: access");
header("Access-Control-Allow-Methods: GET, POST, PUT, DELETE, OPTIONS");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");

require_once '../../conectiondb.php';

$data_inicial = $_GET['data_inicial'];
$data_final = $_GET['data_final'];
//$cliente = $_GET['cliente'];
//$entregas = $_GET['entrega'];

$select = $conn->prepare("SELECT entregas.*,cliente.nome as 'nome_cliente', entregador.nome as 'nome_entregador', operador.nome as 'nome_operador' FROM entregas
 INNER JOIN operador ON operador.id = entregas.id_operador
 INNER JOIN cliente ON cliente.id = entregas.id_cliente
 INNER JOIN entregador ON entregador.id = entregas.id_entregador
 where data_saida between '$data_inicial' and '$data_final'");
$select->execute();
$result = $select->fetchAll(PDO::FETCH_ASSOC);
echo json_encode($result);

?>