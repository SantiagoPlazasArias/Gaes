

<?php

$host = "127.0.0.1";
$usuario = "root";
$clave = "";
$base = "angryburguer"; 


$tabla = $_GET['tabla'];
$id = $_GET['id'];


$hostPDO="mysql:host=$host;dbname=$base;";
$miPDO=new PDO($hostPDO,$usuario,$clave);
// Consulta para obtener los datos del registro
$consulta = $miPDO->prepare("SELECT * FROM $tabla WHERE id = :id");
$consulta->bindParam(':id', $id);
$consulta->execute();
$registro = $consulta->fetch(PDO::FETCH_ASSOC);

?>

<!DOCTYPE html>
<html lang="es">
<head>
<style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f7f7f7;
        }
        .navbar {
            background-color: #f5ebdc;
            color: black;
            padding: 15px;
            text-align: center;
            position: fixed;
            top: 0;
            width: 100%;
            z-index: 1000;
        }
        .content {
            margin-top: 80px;   
            padding: 20px;
        }
        h1 {
            text-align: center;
            color: #333;
        }
        form {
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }
        label {
            display: block;
            margin-bottom: 8px;
            color: #333;
        }
        input[type="text"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 2px solid #ccc;
            border-radius: 10px;
        }
        button {
            width: 100%;
            padding: 10px;
            background-color: red;
            color: white;
            border: none;
            border-radius: 10px;
            cursor: pointer;
            border: 2px solid black ;
        }
        button:hover {
            background-color: #ff4d4d;
        }
    </style>
    </head>
<body>
    <h1>Modificar Registro</h1>
    <form method="GET" action="actualizar.php">
        <input type="hidden" name="tabla" value="<?php echo $tabla; ?>">
        <input type="hidden" name="id" value="<?php echo $id; ?>">
        <?php
        foreach ($registro as $campo => $valor) {
            echo "<label for='$campo'>$campo:</label>";
            echo "<input type='text' name='$campo' value='$valor'><br>";
        }
        ?>
        <button type="submit">Guardar Cambios</button>
    </form>
</body>
</html>