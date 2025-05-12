<?php
if($_SERVER['REQUEST_METHOD']=='POST'){
    $nombre = isset($_REQUEST['nombre']) ? $_REQUEST['nombre'] : null;
    $direccion = isset($_REQUEST['direccion']) ? $_REQUEST['direccion'] : null;

    $host = "127.0.0.1";
    $usuario = "root";
    $clave = "";
    $Bd = "angryburguer"; 
    $hostPDO = "mysql:host=$host;dbname=$Bd;";
    $miPDO = new PDO($hostPDO, $usuario, $clave);

    $insercion = $miPDO->prepare('INSERT INTO central (nombre, direccion) VALUES (:nombre,:direccion)');
    $insercion->execute(array(
        'nombre' => $nombre,
        'direccion' => $direccion,

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
    <title>Nuevo Central</title>
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

    <h3>Central</h3>
    <br>

<form action="" method="POST">

    <ul>

        <li>
        <label for="nombre">Nombre:</label>
        <input id="nombre" name="nombre" type="text">
        </li>   
        

        <li>
        <label for="direccion">Direccion:</label>
        <input id="direccion" name="direccion" type="text">
        </li>
        <p><button type="submit">GUARDAR</button></p>
    </ul>
    
</form>
</div>
</div>
</body>
</html>