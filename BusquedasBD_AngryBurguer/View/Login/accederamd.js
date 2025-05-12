var boton = document.getElementById("boton").addEventListener("click", pasar);

function pasar() {
  var username = document.getElementById("username");
  var password = document.getElementById("password");

  if (username.value === "usuario" && password.value === "contraseña" ) {
    // para que al cumplirse la condicion de la "contraseña" pasar a MAIN mediante:
        window.open("View/indexform.php");
  }
  
  else {
    // Credenciales incorrectas, muestra un mensaje de error
    alert("Usuario o clave incorrecta, vuelve a intentarlo");
  }
}