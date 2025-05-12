<?php
$host = "127.0.0.1";
$usuario = "root";
$clave = "";
$Bd = "angryburguer"; 

$id=isset($_REQUEST['id'])?$_REQUEST['id']:null;
$documento = isset($_REQUEST['documento']) ? $_REQUEST['documento'] : null;
$nombre = isset($_REQUEST['nombre']) ? $_REQUEST['nombre'] : null;
$apellido = isset($_REQUEST['apellido']) ? $_REQUEST['apellido'] : null;
$experiencia = isset($_REQUEST['experiencia']) ? $_REQUEST['experiencia'] : null;
$sucursal = isset($_REQUEST['sucursal']) ? $_REQUEST['sucursal'] : null;
$labor = isset($_REQUEST['labor']) ? $_REQUEST['labor'] : null;


//conexion BD

    $hostPDO="mysql:host=$host;dbname=$Bd;";
    $miPDO=new PDO($hostPDO,$usuario,$clave);

    if ($_SERVER['REQUEST_METHOD'] == 'POST') {
        $actualizar = $miPDO->prepare('UPDATE empleados SET :documento, :nombre, :apellido, :experiencia, :sucursal, :labor WHERE id=:id');
        $actualizar->execute([':id' => $id, ':documento' => $documento, ':nombre' => $nombre, ':apellido' => $apellido, ':experiencia' => $experiencia, ':sucursal' => $sucursal, ':labor' => $labor]);
        header('Location: ../../View/indexform.php');
    }
    else{
        $consultar=$miPDO->prepare('SELECT * FROM empresa  WHERE id=:id');
        $consultar->execute(['id'=>$id]);
    }
    $usuario=$consultar->fetch();

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>modificar Empleados</title>

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

    <div class="nav_bar">

    <h3><a href="">Registrate</a></h3>
    

    </div>

    <div class="decoracion">

    <div class="padre">

        <h3>Modificar Empleados</h3>
        <br>


    <form method="POST">
    <ul>
        <li>

        <label for="documento">Documento:</label>
        <input id="documento" name="documento" type="text" value="<?=$usuario['documento']?>">

        </li>
        
        <li>

        <label for="nombre">Nombre:</label>
        <input id="nombre" name="nombre" type="text" value="<?=$usuario['nombre']?>">


        </li>
       
        <li>

        <label for="apellido">Apellido:</label>
        <input id="apellido" name="apellido" type="text" value="<?=$usuario['apellido']?>">

        </li>
        
        <li>

        <label for="experiencia">experiencia:</label>
        <input id="experiencia" name="experiencia" type="text" value="<?=$usuario['experiencia']?>">

        </li>
        
        <li>

        <label for="sucursal">Telefono:</label>
        <input id="sucursal" name="sucursal" type="text" value="<?=$usuario['sucursal']?>">

        </li>

        <input type="hidden" name="id" value="<?=$id?>">
        <br>
        <input type="submit" value="Modificar">   

    </ul>
     

    </form>
    </div>
    </div>
</body>
</html>