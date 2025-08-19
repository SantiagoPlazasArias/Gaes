<?php
$host = "localhost";
$db = "spa_manicura";
$usuario = "root";
$clave = "";

$hostPDO = "mysql:host=$host;dbname=$db;charset=utf8mb4";
$miPDO = new PDO($hostPDO, $usuario, $clave, [
    PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
]);

$servicio = null;


if (isset($_GET['id'])) {
    $id = (int) $_GET['id'];

    $conn = $miPDO->prepare("SELECT * FROM servicio WHERE id_servicio = ?");
    $conn->execute([$id]);

    $servicio = $conn->fetch(PDO::FETCH_ASSOC);

}
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Detalle del Servicio</title>
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
    fetch('../nav/nav.html')//Hace una petición HTTP para obtener el archivo nav.html
      .then(res => res.text()) //	Cuando la respuesta llega, convierte la respuesta en texto (porque por defecto es un "stream" o flujo de datos).
      .then(data => document.getElementById('header').innerHTML = data);// Una vez que el texto está disponible, data tendrá el HTML como string, y aquí lo insertas dentro del elemento con id header.
      //Entonces, el código busca el contenido de nav/nav.html y lo pega dentro del <div id="header"></div> del index.

  </script>
    </header>

<div id="caja">
    <?php if ($servicio): ?>

        <h2><?= ($servicio['nombre_servicio']) ?></h2>
        <br>
            <?php if (!empty($servicio['imagen'])): ?><!--empty es para evaluar que sea vacio y si lo es entonces entra, pero como es con ! es inversa--> 
                <img src="../img/Servicios/<?= ($servicio['imagen']) ?>" alt="<?= ($servicio['nombre_servicio']) ?>" style="width:70%; height:180px; object-fit:cover; border-radius:6px; margin-bottom:15px;">
            <?php else: ?>
                <div class="imagen-placeholder">hola</div><!--por si no hay imagenes pa que muestre este con fondo gris-->
            <?php endif; ?>

        <p><strong>Precio:</strong> $<?= number_format($servicio['precio'], 0, ',', '.') ?></p>
        <a class="añade" href="servicios.php">Añade al carrito</a> 
        <br>       
        <a class="volver" href="servicios.php">Volver a servicios</a>
    <?php else: ?>
        <p>Servicio no encontrado.</p>
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
