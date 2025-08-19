<!-- Reemplaza el contenido del archivo anterior dashboard.html con este -->
<?php
$estilista="Registrar";
if ($_SERVER["REQUEST_METHOD"]==="POST"){
  if(isset($_POST['Cerrar_sesión'])){
    header("Location: ..\index.html");
  }
  if(isset($_POST['Registrar_Estilista'])){
    $estilista='Registrar Estilista';
  }
  if(isset($_POST['Registrar_Cliente'])){
    $estilista='Registrar Cliente';
  }
   if(isset($_POST['Reportes'])){
    $estilista='Registrar Reporte';
  }
}

?>
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Dashboard Admin - MediCitas</title>
  <style>
    body {
      margin: 0;
      font-family: 'Segoe UI', sans-serif;
      background-color: #f4f6f8;
    }
    .cajagrande{
      display: flex;
    }
    .sidebar {
      width: 220px;
      background-color: rgb(243, 151, 167);
      color: white;
      height: 100vh;
      padding: 20px;
    }

    .sidebar h2 {
      font-size: 22px;
      margin-bottom: 40px;
    }

    .sidebar a {
      display: block;
      color: white;
      text-decoration: none;
      margin: 15px 0;
    }

    .main {
      flex: 1;
      padding: 20px;
    }

    .header {
      display: flex;
      justify-content: space-between;
      align-items: center;
    }

    .cards {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
      gap: 20px;
      margin-top: 20px;
    }

    .card {
      background: white;
      border-radius: 12px;
      padding: 20px;
      box-shadow: 0 2px 8px rgba(0,0,0,0.1);
    }

    .card h3 {
      margin-bottom: 10px;
    }

    form {
      margin-top: 20px;
      background: white;
      padding: 20px;
      border-radius: 12px;
      box-shadow: 0 2px 8px rgba(0,0,0,0.1);
    }
     #form_select {
      margin-top: 20px;
      background: white;
      padding: 20px;
      border-radius: 12px;
      box-shadow: 0 2px 8px rgba(0,0,0,0.1);
      width: 19vh;
    }

    form label {
      display: block;
      margin-top: 10px;
    }

    form input, form select {
      width: 100%;
      padding: 10px;
      margin-top: 5px;
      border: 1px solid #ccc;
      border-radius: 8px;
    }

    form button {
      margin-top: 15px;
      padding: 10px 15px;
      background-color: pink;
      color: white;
      border: none;
      border-radius: 8px;
      cursor: pointer;
      width: 100%;

    }

    form button:hover {
      background-color: #1565c0;
  
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
<div class="cajagrande">
  <div class="sidebar">
    <h2>Lotus</h2>
    <form id="form_select" method="POST">
    <button name="Registrar_Estilista" type="submit" >Registrar Estilista</button>
    <button name="Registrar_Cliente"type="submit" >Registrar Cliente</button>
    <button name="Reportes" type="submit">Reportes</button>
    <button name="Cerrar_sesión" type="submit" >Cerrar sesión</button>
    </form>
  </div>

  <div class="main">
    <div class="header">
      <h1>Panel del Administrador</h1>
    </div>

    <div class="cards">
      <div class="card">
        <h3>Clientes registrados</h3>
        <p>NN</p>
      </div>
      <div class="card">
        <h3>Estilistas</h3>
        <p>NN</p>
      </div>
      <div class="card">
        <h3>Citas hoy</h3>
        <p>NN</p>
      </div>
      <div class="card">
        <h3>Citas canceladas</h3>
        <p>NN</p>
      </div>
    </div>
    <form method="POST">
      <h3><?php echo $estilista ?></h3>
      <?php if(!isset($_POST['Reportes'])){
      echo '
      <label>Nombre completo:</label>
      <input type="text" required />

      <label>Documento:</label>
      <input type="text" required />

      <label>Correo electrónico:</label>
      <input type="email" required />

      <label>Fecha de nacimiento:</label>
      <input type="date" required />';
      }
      else{ echo'
      <label>Nombre completo:</label>
      <input type="text" required />

      <label>Documento:</label>
      <input type="text" required />

      <label>Reporte</label>
      <input type="text" style="width: 100%; height: 100px;" placeholder="Escribe tu mensaje" required />
      '; }
      ?>

      <button name="enviar" type="submit"><?php echo $estilista ?></button>
    </form>
  </div>
</div>
</body>
</html>