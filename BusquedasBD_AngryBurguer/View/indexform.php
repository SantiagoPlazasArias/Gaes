<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>interfaz formularios</title>
    <style>
        /* Estilos generales */
        @import url('https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,400;0,500;0,600;0,700;0,800;1,200&display=swap');

        body {
            font-family: 'Poppins', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
            
        }
        h1{
            color:white;
            text-align:center;
        }
        /* Estilo para la navbar */
        .navbar {
            background-color: #333;
            overflow: hidden;
        }
        .central1{
            margin-left:450px;
        }
        
        .navbar a {
            display: block;
            color: white;
            float:left;
           margin-right:30px;
            text-decoration: none;
            margin-top: 0px;
            text-align:center;
        }
        ul {
            list-style-type: none; /* Quita los marcadores */
            padding: 0; 
            padding-bottom:20px;
        }

        .navbar a:hover {
            background-color: #575757;
        }


        /* Contenedor principal */
        .container {
            padding: 20px;
        }

        /* Estilo para la tabla */
        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }

        th, td {
            padding: 12px;
            border: 1px solid #ddd;
            text-align: left;
        }

        th {
            background-color: #333;
            color: white;
        }

        tr:hover {
            background-color: #ddd;
        }

       
       
    </style>
</head>
<body>

    <!-- Navbar -->
    <nav class="navbar">
    <div class="container-fluid">
        <h1>Formularios</h1>
        
            
        </button>
    
            
                <ul class="navbar-nav">
                <li class="nav-item">
                        <a href="../View/Busqueda/index.php" class="navlink">Busqueda</a>
                    </li>
                    <li class="nav-item">
                        <a class="navlink central1" href="?section=central">Central</a>
                    </li>
                    <li class="nav-item">
                        <a class="navlink" href="?section=domicilios">Domicilios</a>
                    </li>
                    <li class="nav-item">
                        <a class="navlink" href="?section=productos">Productos</a>
                        </li>
                    <li class="nav-item">
                        <a class="navlink" href="?section=clientes">clientes</a>
                    
                    </li>
                    <li class="nav-item">
                        <a class="navlink" href="?section=empleados">empleados</a>
                    
                    </li>
                    
                    

                </ul>
            </div>
                
    </nav>

    <!-- Contenido de la tabla -->
    <div class="container">
        <?php
        // Verificar qué sección se ha seleccionado
        if (isset($_GET['section'])) {
            $section = $_GET['section'];

            // Conectar con la base de datos



            $host = "127.0.0.1";
            $usuario = "root";
            $clave = "";
            $base = "angryburguer"; 

                try {
                    $conex = new PDO("mysql:host=$host;dbname=$base;", $usuario, $clave);
                    $conex->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

                    // Dependiendo de la sección, se ejecuta una consulta diferente
                    if ($section == 'central') {
                        // Tabla de la sección "Central"
                        $consulta = $conex->prepare('SELECT id, Nombre, Direccion FROM central;');
                        echo"<button> <a href='../Model/nuevo/nuevo_central.php'>Nuevo Central</a></button>";
                    } elseif ($section == 'domicilios') {
                        
                        $consulta = $conex->prepare('SELECT id, Nombre, Documento_Identidad, Telefono, Correo, Direccion, Cobertura FROM domicilios;');
                        echo"<button> <a href='../Model/nuevo/nuevo_dom.php'>Nuevo Domicilio</a></button>";
                    } elseif ($section == 'productos') {
                        
                        $consulta = $conex->prepare('SELECT id, nombre_prod, id_proveedor, precio FROM productos;');
                        echo"<button> <a href='../Model/nuevo/productos.php'>Nuevo Producto</a></button>";
                    } elseif ($section == 'clientes') {
                        
                        $consulta = $conex->prepare('SELECT id, Nombre, Documento_Identidad, Telefono, Correo, Direccion FROM clientes;');
                        echo"<button> <a href='../Model/nuevo/nuevo_clientes.php'>Nuevo Cliente</a></button>";
                    }
                    elseif ($section == 'empleados') {
                        
                        $consulta = $conex->prepare('SELECT id, Nombre, Documento_Identidad, Numero_Sucursal, Experiencia_Laboral FROM empleados;');
                        echo"<button> <a href='../Model/nuevo/empleados.php'>Nuevo Empleado</a></button>";
                    }
$consulta->execute();
                                    $resultados = $consulta->fetchAll(PDO::FETCH_ASSOC);
                    
                                    // para immprimir la tabla
                                    echo "<table class='table'>";
                                    echo "<th><tr>";
                    
                                    //para imprimir los encabezados de la tabla basados en los resultados
                                    if (!empty($resultados)) {//usamos empty para verificar q la variable resultados no este vacia
                                        foreach (array_keys($resultados[0]) as $header) {
                                            echo "<th>" . ucfirst($header) . "</th>";//el ucfirst se usa para volver mayuscula la primera letra
                                        }
                                    }
                    
                                    echo "</tr></thead><tbody>";
                    
                                   // Imprimir las filas de la tabla
                                    foreach ($resultados as $fila) {
                                        echo "<tr>";
                                        foreach ($fila as $columna) {
                                            echo "<td>" . $columna . "</td>";
                                        }
                                        if ($section == 'central') {//section== central es el valor que el section reciba al oprimir el link central si es cierto esto se redireccionara
                                            $archivoModificar = '../Controller/modificar-tablas/modificarCentral.php';
                                        } elseif ($section == 'domicilios') {//section== domicilios es el valor que el section reciba al oprimir el link domicilios
                                            $archivoModificar = '../Controller/modificar-tablas/modificarDomicilios.php';
                                        } elseif ($section == 'productos') {
                                            $archivoModificar = '../Controller/modificar-tablas/modificarProductos.php';
                                        } elseif ($section == 'clientes') {
                                            $archivoModificar = '../Controller/modificar-tablas/modificarClientes.php';
                                        } elseif ($section == 'empleados') {
                                            $archivoModificar = '../Controller/modificar-tablas/modificarEmpleados.php';
                                        }
                                    
                                        // Botón "Modificar" con redirección personalizada por sección
                                        echo "<td><a href='$archivoModificar?id=" . $fila['id'] . "' class='modificar-btn'>Modificar</a></td>";
                                        echo "</tr>";
                                    }
                    
                    
                                    echo "</tbody></table>";
                    
                                } catch (PDOException $e) {
                                    echo "Error: " . $e->getMessage();
                                }
                            }
                            ?>
                        </div>
                    
                        
                    </body>
                    </html>
                    