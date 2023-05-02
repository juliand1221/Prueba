<?php

$consola = isset($_POST['juego']) ? $_POST['juego'] : '';
$Valor = isset($_POST['valor']) ? $_POST['valor'] : '';

$valorCobrarCliente = '';
$valorDescuento = '';

if($consola == 'PS4' && $Valor >= 100000){
    $valorCobrarCliente = $Valor - ($Valor * 0.05);
    $valorDescuento = $Valor - $valorCobrarCliente;
}
else{
    $valorCobrarCliente = $Valor;
    $valorDescuento = 0;
}
if($consola == 'XBOX' && $Valor >= 100001 && $Valor <= 150000){
    $valorCobrarCliente = $Valor - ($Valor *0.07);
    $valorDescuento = $Valor - $valorCobrarCliente;
}else{
    $valorCobrarCliente = $Valor;
    $valorDescuento = 0;
}
if($consola == 'PC' && $Valor >= 150000){
    $valorCobrarCliente = $Valor - ($Valor *0.15);
    $valorDescuento = $Valor - $valorCobrarCliente;
}else{
    $valorCobrarCliente = $Valor;
    $valorDescuento = 0;
}
if($consola == 'OTRA' && $Valor >= 500000 && $Valor <= 1000000){
    $valorCobrarCliente = $Valor - ($Valor *0.1);
    $valorDescuento = $Valor - $valorCobrarCliente;
}else{
    $valorCobrarCliente = $Valor;
    $valorDescuento = 0;
}


try {

    $conexion = new PDO("mysql:host=localhost;port=3306;dbname=prueba_strategico", "root", "");
    $conexion->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $conexion->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_WARNING);

    $pdo = $conexion->prepare('INSERT INTO datosventa(consola, valor, valorCobrarCliente, valorDescuento) VALUES(?, ?,?,?)');
    $pdo->bindParam(1, $consola);
    $pdo->bindParam(2, $Valor);
    $pdo->bindParam(3, $valorCobrarCliente);
    $pdo->bindParam(4, $valorDescuento);
    $pdo->execute() or die(print($pdo->errorInfo()));


    echo json_encode('true');

} catch(PDOException $error) {
    echo $error->getMessage();
    die();
}

?>


