<?php
$host = "localhost";
$db = "spa_manicura";
$usuario = "root";
$clave = "";

$hostPDO = "mysql:host=$host;dbname=$db;charset=utf8mb4";
$miPDO = new PDO($hostPDO, $usuario, $clave, [
    PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
]);

$producto = null;

if (isset($_GET['id'])) {
    $id = (int) $_GET['id'];


    $conn = $miPDO->prepare("SELECT * FROM producto WHERE id_producto = ?");
    $conn->execute([$id]);

    $producto = $conn->fetch(PDO::FETCH_ASSOC);
}
?>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Detalle del Producto</title>
    <style>
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }
    #header{
        margin: bottom 5%;
    }
    #caja{
        margin: 0 auto;
        background-color: #fff;
        box-shadow: 0 2px 8px rgba(0,0,0,0.1);
        text-align:center;
        width: 30%;
        border-radius: 25px;
        
    }
    #caja > .añade{
        display:inline-block;
        margin-top:5%;
        padding:10px 15px; 
        background-color:pink;
        color:black; 
        text-decoration:none; 
        border-radius:6px;
    }
    #caja> .volver{
        color:black; 
        text-decoration:none;
        font-size:12px;
    }
    #footer{
        margin-top:10%;
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

<div id="caja">
    <?php if ($producto): ?>
        
        <h1><?= ($producto['nombre']) ?> - <?= ($producto['tamaño']) ?></h1>
        <br>
        <?php if (!empty($producto['imagen'])): ?>
            <img src="../img/Productos/<?= ($producto['imagen']) ?>" alt="<?= ($producto['nombre']) ?>" style="width:70%; height:180px; object-fit:cover; border-radius:6px; margin-bottom:15px;">
        <?php else: ?>
            <div class="imagen-placeholder"></div><!--por si no hay imagenes pa que muestre este con fondo gris-->
         <?php endif; ?>

        <p><?= nl2br(($producto['descripcion'])) ?></p><!--nl2br salto de linea asi como /n-->
        <p><strong>Precio:</strong> $<?= number_format($producto['precio_base'], 0, ',', '.') ?></p>
        <a class="añade" href="productos.php">Añade al carrito</a> 
        <br>       
        <a class="volver" href="productos.php">Volver a productos</a>
    <?php else: ?>
        <p>Producto no encontrado.</p>
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
