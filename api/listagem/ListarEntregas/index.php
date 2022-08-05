<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: access");
header("Access-Control-Allow-Methods: GET, POST, PUT, DELETE, OPTIONS");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");

require_once '../../conectiondb.php';

$tabela = 'entregas';
#pedido é o numero da nota fiscal

if(isset($_GET['nome_cliente'])){
    $query = $_GET['nome_cliente'];
    $select = $conn->prepare("SELECT entregas.id,entregas.quantidade,entregas.descricao,entregas.pedido,entregador.nome as 'nome_entregador',cliente.nome as 'nome_cliente',operador.nome as 'nome_operador',data_entrada,data_saida,status FROM entregas INNER JOIN cliente ON entregas.id_cliente = cliente.id INNER JOIN entregador on entregas.id_entregador = entregador.id INNER JOIN operador on entregas.id_operador = operador.id where cliente.nome like '%$query%'");
    $select->execute();
    $result = $select->fetchAll(PDO::FETCH_ASSOC);
    echo json_encode($result);
    
} if(isset($_GET['id'])){
    $query = $_GET['id'];
    $select = $conn->prepare("SELECT entregas.id,entregas.quantidade,entregas.descricao,entregas.pedido,entregador.nome as 'nome_entregador',cliente.nome as 'nome_cliente',operador.nome as 'nome_operador',data_entrada,data_saida,status FROM entregas INNER JOIN cliente ON entregas.id_cliente = cliente.id INNER JOIN entregador on entregas.id_entregador = entregador.id INNER JOIN operador on entregas.id_operador = operador.id where entregas.id like '%$query%'");
    $select->execute();
    $result = $select->fetchAll(PDO::FETCH_ASSOC);
    echo json_encode($result);
}


if(isset($_GET['default'])){
    $select = $conn->prepare("SELECT entregas.id,entregas.quantidade,entregas.descricao,entregas.pedido,cliente.cep,cliente.numero,entregador.nome as 'nome_entregador',cliente.nome as 'nome_cliente',operador.nome as 'nome_operador',data_entrada,data_saida,status FROM entregas INNER JOIN cliente ON entregas.id_cliente = cliente.id INNER JOIN entregador on entregas.id_entregador = entregador.id INNER JOIN operador on entregas.id_operador = operador.id ORDER BY id ASC");
    $select->execute();
    $result = $select->fetchAll(PDO::FETCH_ASSOC);
    echo json_encode($result);
}

if(isset($_GET['quantidade'])){
    $select = $conn->prepare("SELECT status FROM entregas where status = 'SAIU PARA ENTREGA'");
    $select->execute();
    $result1 = $select->rowCount();


    $select2 = $conn->prepare("SELECT status from entregas where status = 'ENTREGUE'");
    $select2->execute();
    $result2 = $select2->rowCount();


    $select3 = $conn->prepare("SELECT status from entregas ");
    $select3->execute();
    $result3 = $select3->rowCount();

    $array = Array(
        "0"=>Array (
            "saiu_para_entrega"=>"$result1",
            "entregues"=>"$result2",
            "todos"=>"$result3"
        )
    );
    echo json_encode($array);


}
?>