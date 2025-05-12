<?php
$host = "127.0.0.1";
$usuario = "root";
$clave = "";
$Bd = "angryburguer"; 

    $id=isset($_REQUEST['id'])?$_REQUEST['id']:null;
    $nombre_prod=isset($_REQUEST['nombre_prod'])?$_REQUEST['nombre_prod']:null;
    $id_proveedor=isset($_REQUEST['id_proveedor'])?$_REQUEST['id_proveedor']:null;
    $precio=isset($_REQUEST['precio'])?$_REQUEST['precio']:null;


//conexion BD

    $hostPDO="mysql:host=$host;dbname=$Bd;";
    $miPDO=new PDO($hostPDO,$usuario,$clave);

    if ($_SERVER['REQUEST_METHOD'] == 'POST') {
        $actualizar = $miPDO->prepare('UPDATE central SET nombre_prod=:nombre_prod, id_proveedor=:id_proveedor, precio=:precio WHERE id=:id');
        $actualizar->execute([':id' => $id, ':nombre_prod' => $nombre_prod, ':id_proveedor' => $id_proveedor, ':precio=>@precio' ]);
        header('Location: ../../View/indexform.php');
    }
    else{
        $consultar=$miPDO->prepare('SELECT * FROM productos  WHERE id=:id');
        $consultar->execute(['id'=>$id]);
    }
    $usuario=$consultar->fetch();

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Modificar Productos</title>
    

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

    <h3><a href="indexform.php">Regresar</a></h3>


    </div>

    <div class="decoracion">

    <div class="padre">

        <h3>Modificar Productos</h3>
        <br>


    <form method="POST">
    <ul>
        <li>

        <label for="nombre_prod">Nombre_prod:</label>
        <input id="nombre_prod" name="nombre_prod" type="text" value="<?=$usuario['nombre_prod']?>">

        </li>
       
        <li>

        <label for="id_proveedor"> Id_proveedor:</label>
        <input id="id_proveedor" name="id_proveedor" type="text" value="<?=$usuario['id_proveedor']?>">

        </li>

         <li>

        <label for="precio"> Precio:</label>
        <input id="precio" name="precio" type="text" value="<?=$usuario['precio']?>">

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