<?php
$host = "127.0.0.1";
$usuario = "root";
$clave = "";
$Bd = "angryburguer"; 

$id=isset($_REQUEST['id'])?$_REQUEST['id']:null;
$documento=isset($_REQUEST['Nombre'])?$_REQUEST['Nombre']:null;
$nombre=isset($_REQUEST['Documento_Identidad'])?$_REQUEST['Documento_Identidad']:null;
$apellido=isset($_REQUEST['Telefono'])?$_REQUEST['Telefono']:null;
$direccion=isset($_REQUEST['Correo'])?$_REQUEST['Correo']:null;
$telefono=isset($_REQUEST['Direccion'])?$_REQUEST['Direccion']:null;


//conexion BD

    $hostPDO="mysql:host=$host;dbname=$Bd;";
    $miPDO=new PDO($hostPDO,$usuario,$clave);

    if ($_SERVER['REQUEST_METHOD'] == 'POST') {
        $actualizar = $miPDO->prepare('UPDATE clientes SET Nombre=:Nombre, Documento_Identidad=:Documento_Identidad, , Telefono=:Telefono, Correo=:Correo, Direccion=:Direccion, WHERE id=:id');
        $actualizar->execute([':id' => $id, ':Nombre' => $Nombre, ':Documento_Identidad' => $Documento_Identidad, ':Telefono' => $Telefono, ':Correo' => $Correo, ':Direccion' => $Direccion ]);
        header('Location: ../../View/indexform.php');
    }
    else{
        $consultar=$miPDO->prepare('SELECT * FROM clientes  WHERE id=:id');
        $consultar->execute(['id'=>$id]);
    }
    $usuario=$consultar->fetch();

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Modificar Clientes</title>
    

    <style>

        .decoracion{
            margin-top:8%;
            margin-right:34%;
        }

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
    <h3><a href="">Registrate</a></h3>
    <h3><a href="">Registrate</a></h3>
    <h3><a href="">Registrate</a></h3>

    </div>

    <div class="decoracion">

    <div class="padre">

        <h3>Modificar Clientes</h3>
        <br>


    <form method="POST">
    <ul>
        <li>

        <label for="Nombre">Nombre</label>
        <input id="Nombre" name="Nombre" type="text" value="<?=$usuario['Nombre']?>">

        </li>
        
        <li>

        <label for="nombre">Documento_Identidad</label>
        <input id="nombre" name="Documento_Identidad" type="text" value="<?=$usuario['Documento_Identidad']?>">


        </li>
       
        <li>

        <label for="Telefono">Telefono:</label>
        <input id="Telefono" name="Telefono" type="text" value="<?=$usuario['Telefono']?>">

        </li>
        
<li>
        <label for="Correo">Correo:</label>
        <input id="ciudad" name="Correo" type="text" value="<?=$usuario['Correo']?>">

        </li>

        <li>

        <label for="Direccion">Direccion:</label>
        <input id="Direccion" name="Direccion" type="text" value="<?=$usuario['Direccion']?>">

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