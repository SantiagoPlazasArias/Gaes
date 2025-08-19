<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="/img/favicon.png" type="image/png">
    <title>Inicio Sesion</title>
   <style>
        .cajaprincipal{
            
            background-color: antiquewhite;
            text-align: center;/*centrar inputs*/
            margin: 0 auto;/*centrar toda la caja completa*/
            margin-bottom:10%;
            padding:4%;
            width: 20%;
            border: 2px solid #ccc; /* borde suave */
            border-radius: 15px; /* bordes redondeados */
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1); /* sombra sutil */
        }
        #email, #password{
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
        .cajaprincipal input[type="button"] {
            width: 100%;
            padding: 0.75rem;
            background-color: pink;
            border: none;
            border-radius: 8px;
            font-size: 1rem;
            cursor: pointer;
            transition: background-color 0.3s;
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
        #accede{
            width: 50%;
            padding: 0.75rem;
            background-color: pink;
            border: none;
            border-radius: 8px;
            font-size: 1rem;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        #accede:hover {
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
    <form action="" id="inicioSesion" method="post">
        <div class="cajaprincipal">
            <p style="margin-bottom:10px;">Inicia Sesion</p>
            <input type="email" name="email" id="email" required placeholder="Introduce tu email" >
            <input type="password" name="password" id="password" required placeholder="Introduce tu contraseña"> 
            <a href="../errores/500.html">Olvide mi contraseña</a>
            <br>
            <button id="accede" type="submit">Acceder</button>
            
            <br><br>
            <a href="registro.php">Registrate</a>
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
        document.getElementById('inicioSesion').addEventListener('submit', function boton() {
        var email = document.getElementById('email').value;
        var password = document.getElementById('password').value;

        if (email === 'admin@lotus.com' && password === '123') {
            window.location.href = '../dashboard/index.html';
            alert('Inicio de sesión exitoso');
        } else {
            alert('Usuario o contraseña incorrectos');
        }
        });
    </script>
</html>