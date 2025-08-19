<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "spa_manicura";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}

$mensaje = "";
$servicios = [];

// Consulta directa siempre que cargue la página
$sql = "SELECT * FROM servicio";
$result = $conn->query($sql);

if ($result && $result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $servicios[] = $row;
    }
} else {
    $mensaje = "No hay servicios disponibles.";
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Servicios</title>
    <link rel="icon" href="/img/favicon.png" type="image/png">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            }
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
        }
        .container {
            max-width: 1200px;
            margin: auto;
        }
        .grid-servicios {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
            gap: 20px;
        }
        .servicio-card {
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 2px 8px rgba(0,0,0,0.1);
            padding: 20px;
            transition: transform 0.2s;
        }
        .servicio-card:hover {
            transform: scale(1.02);
        }
        .servicio-nombre {
            font-size: 18px;
            font-weight: bold;
            margin-bottom: 10px;
            color: #333;
        }
        .servicio-precio {
            color: #666;
            margin-bottom: 15px;
        }
        .mensaje {
            color: red;
            font-weight: bold;
            text-align: center;
        }
        .imagen-placeholder {
            width: 100%;
            height: 150px;
            background-color: #eee;
            border-radius: 6px;
            margin-bottom: 15px;
        }
        .detalle {
            margin-top: 10px;    
            display: inline-block; 
            padding: 10px 15px; 
            background-color: rgba(231, 119, 119, 0.99);
            color: black; 
            text-decoration: none; 
            border-radius: 6px;
        }
        .vermas{   
            margin-top: 10px; 
            display: inline-block; 
            padding: 10px 15px; 
            background-color:pink;
            color: black; 
            text-decoration: none; 
            border-radius: 6px;
        }
        .number {
            width: 50px;
            padding: 5px;
            text-align: center;
        }
        form {
            margin-top: 10px;
        }
    </style>
</head>

<body>

    <header id="header">
        <script>
            fetch('../nav/nav.html')
                .then(res => res.text())
                .then(data => document.getElementById('header').innerHTML = data);
        </script>
    </header>

    <section class="hero">
        <div class="container">
            <h1>Bienvenido a Lotus Dream Spa</h1>
            <p>Descubre nuestros servicios especializados.</p>
        </div>
    </section>

    <div class="container">

        <?php if (!empty($servicios)): ?>
            <div class="grid-servicios">
                <?php foreach ($servicios as $servicio): ?>
                    <div class="servicio-card">
                    <?php if (!empty($servicio['imagen'])): ?>
                        <img src="../img/Servicios/<?= ($servicio['imagen']) ?>" alt="<?= ($servicio['nombre_servicio']) ?>" style="width:100%; height:150px; object-fit:cover; border-radius:6px; margin-bottom:15px;">
                        <?php else: ?>
                            <div class="imagen-placeholder"></div><!--por si no hay imagenes pa que muestre este con fondo gris-->
                        <?php endif; ?>

                        <div class="servicio-nombre"><?= ($servicio['nombre_servicio']) ?></div>
                        <div class="servicio-precio">Precio: $<?= number_format($servicio['precio'], 0, ',', '.') ?></div>
                        <div class="servicio-nombre"><?= ($servicio['descripcion']) ?></div>

                        <form onsubmit="return boton()" method="POST">
                            <input type="hidden" name="id_servicio" value="<?= $servicio['id_servicio'] ?>">
                            
                            <label for="cantidad_<?= $servicio['id_servicio'] ?>">Cantidad:</label>
                            <input type="number" id="cantidad_<?= $servicio['id_servicio'] ?>" class="number" name="cantidad" min="1" value="0">
                            
                            <br><br>
                            <center>
                            <input type="submit" class="detalle" value="Agregar al carrito">
                            <br>
                            
                            <a class="vermas" href="detalle_servicio.php?id=<?= $servicio['id_servicio'] ?>">Ver más</a>
                            </center>
                        </form>
                    </div>
                <?php endforeach; ?>
            </div>
        <?php endif; ?>

        <?php if ($mensaje): ?>
            <p class="mensaje"><?= $mensaje ?></p>
        <?php endif; ?>
    </div>


    <footer id="footer">
        <script>
            fetch('../footer/footer.html')
                .then(res => res.text())
                .then(data => document.getElementById('footer').innerHTML = data);
        </script>
    </footer>

</body>
<script>
function boton() {
    alert("Agregado al carrito de compras");
    return false; 
  }
</script>
</html>
