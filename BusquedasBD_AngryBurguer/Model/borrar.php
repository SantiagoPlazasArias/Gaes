<?php 
$host = '127.0.0.1';
$Bd = 'angryburguer';
$usuario = 'root';
$clave ='';

$hostPDO="mysql:host=$host;dbname=$Bd;";
//conexion  y funciones pdo
$miPDO=new PDO($hostPDO,$usuario,$clave);

$id = isset($_REQUEST['id'])?$_REQUEST['id']:null;
$tabla =isset($_REQUEST['tabla'])?$_REQUEST['tabla']:null;

if ($_SERVER['REQUEST_METHOD'] == "GET") {
    $consulta = $miPDO->prepare("DELETE FROM $tabla WHERE id = :id");
    $consulta->bindParam(':id', $id);
    $consulta->execute();
    
    // Verificar si la eliminación fue exitosa
    if ($consulta->rowCount() > 0) {
        echo "<script>alert('Registro eliminado correctamente')</script>";
        header('Location: ../vista/index.php');
        exit;
        
    } else {
        echo "No se pudo eliminar el registro.";
    }
    
}



?>