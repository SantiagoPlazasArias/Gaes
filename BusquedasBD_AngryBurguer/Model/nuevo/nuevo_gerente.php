<?php
if($_SERVER['REQUEST_METHOD']=='POST'){
    $Nombre = isset($_REQUEST['Nombre']) ? $_REQUEST['Nombre'] : null;
    $Documento_identidad = isset($_REQUEST['Documento_identidad']) ? $_REQUEST['Documento_identidad'] : null;
    $Numero_sucursal = isset($_REQUEST['Numero_sucursal']) ? $_REQUEST['Numero_sucursal'] : null;
    $Experiencia_laboral = isset($_REQUEST['Experiencia_laboral']) ? $_REQUEST['Experiencia_laboral'] : null;


    $host = "127.0.0.1";
    $usuario = "root";
    $clave = "";
    $Bd = "angryburguer"; 
    $hostPDO = "mysql:host=$host;dbname=$Bd;";
    $miPDO = new PDO($hostPDO, $usuario, $clave);

    $insercion = $miPDO->prepare('INSERT INTO gerente_sucursal (Nombre, Documento_identidad, Numero_sucursal, Experiencia_laboral) VALUES (:Nombre,:Documento_identidad, :Numero_sucursal, :Experiencia_laboral)');
    $insercion->execute(array(
        'Nombre' => $Nombre,
        'Documento_identidad' => $Documento_identidad,
        'Numero_sucursal' => $Numero_sucursal,
        'Experiencia_laboral' => $Experiencia_laboral,

    ));
    header('Location:../../View/indexform.php');
    exit;
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nuevo Gerente</title>
    <style>
        body{ 
    margin: 0;
    background-color: #F8C794;
   /*background-color: url(https://images2.alphacoders.com/135/thumb-1920-1353005.png) no-repeat center center fixed;
   -webkit-background-size: cover;
   -moz-background-size: cover;
   -o-background-size: cover;
   background-size: cover;*/
    display: flex;
    justify-content: flex-end;
   
   
    
}
.nav_bar {
   width: 100%;
   height: auto;
   background-color: transparent;
   position: fixed;
   display: flex;
   justify-content: flex-end;
   background-color: #D8AE7E;
   
   
 }
 h3 {
   margin: 2%;
 }
 a {
   text-decoration: none; /*para quitar la barra de abajo del link*/
   color: white;
}
.decoracion{
   margin-top: 10%;
   width: 35%;
   height: 85%;
   background-color: #FFE0B5;
   display: flex;
   justify-content: center;
   padding: 1%;
   box-sizing: border-box;
   border-radius: 40px;
   margin-right: 2%;
}
.padre{
   padding: 4%;
   width: 100%;
   height: 50%px;
   background-color: #FFF2D7;
   text-align: center;
   margin:2% 2% 2%;
   border-radius: 40px; ;
   box-sizing: border-box; /* para que el padding se acople con el tamaño del contenedor y no lo vuelva mas grande*/
}

label{
  display: flex;
  flex-direction: column; /*para poner el label encima del input que queden en columna*/
}

ul{
   margin-left: -13%;
}

ul li{
   list-style: none;
   margin: 3% 0% 0%;
}
input{
   border-radius: 200px;
}

li input{ /*Entre el li y el input*/
   margin: 2% 0% 0%;
}

#boton{
   margin-top: 5%;
}

    </style>
</head>
<body>
<div class="decoracion">

<div class="padre">


    <h3>gerente</h3>
    <br>

<form action="" method="POST">

    <ul>

        <li>
        <label for="Nombre">Nombre:</label>
        <input id="Nombre" name="Nombre" type="text">
        </li>   
        

        <li>
        <label for="Documento_identidad">Documento identidad:</label>
        <input id="Direccion" name="Documento_identidad" type="text">
        </li>

        <li>
        <label for="Numero_sucursal">Numero sucursal:</label>
        <input id="Numero_sucursal" name="Numero_sucursal" type="text">
        </li>

        <li>
        <label for="Experiencia_laboral">Experiencia laboral:</label>
        <input id="Experiencia_laboral" name="Experiencia_laboral" type="text">
        </li>
        <p><button type="submit">GUARDAR</button></p>
    </ul>
    
</form>
</div>
</div>
</body>
</html>