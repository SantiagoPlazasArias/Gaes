<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="/img/favicon.png" type="image/png">
    <title>Registrate</title>
   <style>
        .cajaprincipal{
            
            background-color: antiquewhite;
            text-align: center;/*centrar inputs*/
            margin: 0 auto;/*centrar toda la caja completa*/
            margin-top: 2%;
            padding:2%;
            width: 20%;
            border: 2px solid #ccc; /* borde suave */
            border-radius: 15px; /* bordes redondeados */
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1); /* sombra sutil */
            margin-bottom:5%;
        }
        #email, #password, #edad, #nombre, #apellido{
            max-width: 100%;/*no se salga los inputs de la caja*/
            border-style: solid;
            border-radius: 40%;
            padding: 5px;
            width: 90%;
            border: none;
            border-radius: 8px;
            font-size: 1rem;
            cursor: pointer;
            transition: background-color 0.3s;
            margin-bottom: 10%;
        }
        #crea{
            width: 100%;
            padding: 0.75rem;
            background-color: pink;
            border: none;
            border-radius: 8px;
            font-size: 1rem;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        #crea:hover {
            background-color: aliceblue;
            
        }
        .cajaprincipal a{
            text-decoration: none;
            color: black;
            margin: 10%; 
            font-size: 12px;
            margin-bottom: 10%;
        }
        .cajaprincipal p{
            font-size: 1.5em;
        }
        button{
            width: 5%;
            padding: 0.75rem;
            background-color: pink;
            border: none;
            border-radius: 8px;
            font-size: 1rem;
            cursor: pointer;
            transition: background-color 0.3s;
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


    <button onclick="window.history.back()">Volver</button>
    <form onsubmit="return boton()"  action="" id="registroForm" method="post">
        <div class="cajaprincipal">
            <p>Registrate</p>
            <span>Introduce tu Nombre</span>
            <input type="text" name="nombre" id="nombre" required placeholder="">
            <span>Introduce tu Apellido</span>
            <input type="text" name="apellido" id="apellido"required placeholder="">
            <span >Fecha de Nacimiento</span>
            <input type="date" name="edad" id="edad"required placeholder="">
            <span>Introduce tu email</span>
            <input type="email" name="email" id="email" required placeholder="" >
            <span>Introduce tu contraseña</span>
            <input type="password" name="password" id="password" required placeholder=""> 
            
            <br>
            <button id="crea" type="submit">Crea tu Cuenta</button>
        </div>
    </form>
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
    alert("Gracias por registrarte");
    window.location.href = "../index.html";
    return false; 
  }
    </script>
</html>