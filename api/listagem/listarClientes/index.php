<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: access");
header("Access-Control-Allow-Methods: GET, POST, PUT, DELETE, OPTIONS");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");

require_once '../../conectiondb.php';

$tabela = "cliente";

//Ordenando por ordem (ordering)
if(isset($_GET['ordering'])){
    $query = $_GET['ordering'];

//Ordenando por nome crescente
    if($query == 'nome'){
        $select = $conn->prepare("SELECT * FROM $tabela ORDER BY nome ASC");
        $select->execute();
        $result = $select->fetchAll(PDO::FETCH_ASSOC);
        echo json_encode($result);
    }
//Ordenando por nome decrescente
    if($query == '-nome')
    {
        $select = $conn->prepare("SELECT * FROM $tabela ORDER BY nome DESC");
        $select->execute();
        $result = $select->fetchAll(PDO::FETCH_ASSOC);
        echo json_encode($result);
    }
//Ordenando por ativo
    if($query == 'status')
    {
        $select = $conn->prepare("SELECT * FROM $tabela WHERE is_active = '1'");
        $select->execute();
        $result = $select->fetchAll(PDO::FETCH_ASSOC);
        echo json_encode($result);
    }
//Ordernando por inativo
    if($query == '-status')
    {
        $select = $conn->prepare("SELECT * FROM $tabela WHERE is_active = '0'");
        $select->execute();
        $result = $select->fetchAll(PDO::FETCH_ASSOC);
        echo json_encode($result);
    }
    
//Realizando Buscas

    // Buscando por nome
}if(isset($_GET['nome'])){
    $query = $_GET['nome'];
    $select = $conn->prepare("SELECT * FROM $tabela WHERE nome like '%$query%'");
    $select->execute();
    $result = $select->fetchAll(PDO::FETCH_ASSOC);
    echo json_encode($result);

// Buscando por cpf
}if(isset($_GET['cpf'])){
    $query = $_GET['cpf'];
    $select = $conn->prepare("SELECT * FROM $tabela WHERE cpf = '$query'");
    $select->execute();
    $result = $select->fetchAll(PDO::FETCH_ASSOC);
    echo json_encode($result);

// Buscando por id    
}if(isset($_GET['id'])){
    $query = $_GET['id'];
    $select = $conn->prepare("SELECT * FROM $tabela WHERE id = '$query'");
    $select->execute();
    $result = $select->fetchAll(PDO::FETCH_ASSOC);
    echo json_encode($result);

//Busca vazia (nula)
}if(isset($_GET['default'])){
    $select = $conn->prepare("SELECT * FROM $tabela ORDER BY id ASC");
    $select->execute();
    $result = $select->fetchAll(PDO::FETCH_ASSOC);
    echo json_encode($result);
}
