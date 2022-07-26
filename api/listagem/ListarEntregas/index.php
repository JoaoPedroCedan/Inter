<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: access");
header("Access-Control-Allow-Methods: GET, POST, PUT, DELETE, OPTIONS");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");

require_once '../../conectiondb.php';

$tabela = 'entregas';
#pedido é o numero da nota fiscal

if(isset($_GET['ordering'])){
    if(isset($_GET['nome'])){
        $query = $_GET['nome'];
        $select = $conn->prepare("SELECT entregas.id,entregas.quantidade,entregas.descricao,entregas.pedido,entregador.nome as 'nome_entregador',cliente.nome as 'nome_cliente',operador.nome as 'nome_operador',data_entrada,data_saida,status FROM entregas INNER JOIN cliente ON entregas.id_cliente = cliente.id INNER JOIN entregador on entregas.id_entregador = entregador.id INNER JOIN operador on entregas.id_operador = operador.id where cliente.nome like '%$query%'");
        $select->execute();
        $result = $select->fetchAll(PDO::FETCH_ASSOC);
        echo json_encode($result);
        
    } if(isset($_GET['pedido'])){
        $query = $_GET['pedido'];
        $select = $conn->prepare("SELECT entregas.id,entregas.quantidade,entregas.descricao,entregas.pedido,entregador.nome as 'nome_entregador',cliente.nome as 'nome_cliente',operador.nome as 'nome_operador',data_entrada,data_saida,status FROM entregas INNER JOIN cliente ON entregas.id_cliente = cliente.id INNER JOIN entregador on entregas.id_entregador = entregador.id INNER JOIN operador on entregas.id_operador = operador.id where entregas.pedido like '%$query%'");
        $select->execute();
        $result = $select->fetchAll(PDO::FETCH_ASSOC);
        echo json_encode($result);
    }
}

if(isset($_GET['default'])){
    $select = $conn->prepare();
    $select->execute();
    $result = $select->fetchAll(PDO::FETCH_ASSOC);
    echo json_encode($result);
}

?>