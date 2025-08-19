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
$productos = [];

// Carga directa de productos al entrar a la página
$sql = "SELECT * FROM producto";
$result = $conn->query($sql);

if ($result && $result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $productos[] = $row;
    }
} else {
    $mensaje = "No hay productos disponibles.";
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Productos</title>
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
        .detalle, .vermas {
            margin-top: 10px;    
            display: inline-block; 
            padding: 10px 15px; 
            background-color: pink;
            color: black; 
            text-decoration: none; 
            border-radius: 6px;
        }
        .vermas {
            background-color: rgba(231, 119, 119, 0.99);
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
        <p>Descubre nuestros productos de excelente calidad.</p>
    </div>
</section>

<div class="container">

    <?php if (!empty($productos)): ?>
        <div class="grid-servicios">
            <?php foreach ($productos as $producto): ?>
                <div class="servicio-card">
                        <?php if (!empty($producto['imagen'])): ?>
                        <img src="../img/Productos/<?= ($producto['imagen']) ?>" alt="<?= ($producto['nombre']) ?>" style="width:100%; height:150px; object-fit:cover; border-radius:6px; margin-bottom:15px;">
                        <?php else: ?>
                            <div class="imagen-placeholder"></div><!--por si no hay imagenes pa que muestre este con fondo gris-->
                        <?php endif; ?>
                    <div class="servicio-nombre"><?= ($producto['nombre']) ?></div>
                    <div class="servicio-nombre"><?= ($producto['tamaño']) ?></div>
                    <div class="servicio-nombre"><?= ($producto['descripcion']) ?></div>
                    <div class="servicio-precio">Precio: $<?= number_format($producto['precio_base'], 0, ',', '.') ?></div>

                    <form onsubmit="return boton()" method="POST">
                        <input type="hidden" name="id_producto" value="<?= $producto['id_producto'] ?>">
                        
                        <label for="cantidad_<?= $producto['id_producto'] ?>">Cantidad:</label>
                        <input type="number" id="cantidad_<?= $producto['id_producto'] ?>" class="number" name="cantidad" min="1" value="0">
                        
                        <br><br>
                        <center>
                        <input type="submit" class="detalle" value="Agregar al carrito">
                        <br>
                        <a class="vermas" href="detalle_producto.php?id=<?= $producto['id_producto'] ?>">Ver más</a>
                        </center>
                    </form>
                </div>
<script>
      function boton() {
    alert("Agregado al carrito de compras");
    return false; 
  }
</script>
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
</html>
