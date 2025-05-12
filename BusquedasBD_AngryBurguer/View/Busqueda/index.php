<?php
// ... (tu conexión a la base de datos) ...
$host = "127.0.0.1";
$usuario = "root";
$clave = "";
$Bd = "angryburguer"; 
$hostPDO="mysql:host=$host;dbname=$Bd;";
//conexion  y funciones pdo
$miPDO=new PDO($hostPDO,$usuario,$clave);
if ($_SERVER['REQUEST_METHOD'] == "POST") {
    $tabla = $_POST['tabla'];
    $id = $_POST['id'];

    // Preparar y ejecutar la consulta
    $consulta = $miPDO->prepare("SELECT * FROM $tabla WHERE id = :id");
    $consulta->bindParam(':id', $id);
    $consulta->execute();

    // Obtener el resultado
    $resultado = $consulta->fetch(PDO::FETCH_ASSOC);
}
?>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Busquedas</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }
        .navbar {
            background-color: #f5ebdc ;
            color:black;
            padding: 15px;
            position: fixed;
            top: 0;
            width: 100%;
            z-index: 1000;
        }
        .navbar form {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        .navbar label, .navbar select, .navbar input, .navbar button,  {
            margin-right: 10px;
            color:black;
            border-radius:10px;
        }
        .content {
            margin-top: 80px;   
            padding: 20px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            border-radius:10px;
        }
        table, th, td {
            border: 1px solid black;
        }
        th, td {
            padding: 10px;
            text-align: left;
        }
        tr:nth-child(even) {
            background-color: #f5ebdc;
        }
        a{
            text-decoration:none;
            color:black;
        }
        button{
            width: 10%;
            border-radius:10px;
        }
        .boton{
            background-color:red;   
            color: black;
        }
        select, #id{
            border-radius:10px;
            border: 2px solid black;
        }
    </style>
</head>
<body>

    <div class="navbar">
    <br>
        <form method="POST" action=""> 
        <label for="tabla">Selecciona una tabla:</label>
            <select name="tabla" id="tabla">
            <option value="">Elige la opcion:</option> 
                <option value="central">Central</option>
                <option value="clientes">Clientes</option>
                <option value="domicilios">Domicilios</option>
                <option value="empleados">Empleados</option>
                <option value="productos">Productos</option>
                <option value="proveedores">Proveedores</option>
            </select>
            <label for="id">Ingrese el id:</label>
            <input type="number" name="id" id="id">
            <button class="boton" type="submit">Buscar</button>
        </form>
        <br>
        <button><a href="../indexform.php">Volver </a> </button>
    </div>

        


    <div class="content">
        <?php
        if ($_SERVER['REQUEST_METHOD'] == "POST") {
            if ($resultado) {
                // Mostrar los datos del registro encontrado
                echo "<table>";
                echo "<head>
                        <tr>
                            <th>Filas</th>
                            <th>Valores</th>
                        </tr>
                    </head>";
                echo "<body>";
                foreach ($resultado as $clave => $valor) {
                    echo "<tr>
                            <td>$clave</td>
                            <td>$valor</td>
                          </tr>";
                }
                echo "</body>  
                      </table>";

            } else {
                echo "<p>No se encontró ningún registro.</p>";
            }
        }
        ?>
    </div>

    <div>
    <?php
        if ($_SERVER['REQUEST_METHOD'] == "POST") {
            if ($resultado) {
                echo "<center> <button class='boton'>  <a  href='../../Controller/modificar.php?tabla={$tabla}&id={$id}'>Modificar </a> </button>  ";
                echo "<button class='boton'> <a  href='../../Model/borrar.php?tabla={$tabla}&id={$id}'>Borrar</button></center> </a> ";
            } 
        }
        ?>
    </div>

</body>
</html>
