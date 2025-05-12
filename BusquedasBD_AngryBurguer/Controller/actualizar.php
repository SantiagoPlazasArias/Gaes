<?php
                try {
                    $host = "127.0.0.1";
                    $usuario = "root";
                    $clave = "";
                    $base = "angryburguer"; 
                    $hostPDO="mysql:host=$host;dbname=$base;";
                    $miPDO=new PDO($hostPDO,$usuario,$clave);

                    $id = isset($_REQUEST['id'])?$_REQUEST['id']:null;
                    $tabla = isset($_REQUEST['tabla'])?$_REQUEST['tabla']:null;

                    if (!isset($_REQUEST['id'])) {
                        throw new Exception('ID de registro inválido');
                    }
                
                    // Construir la consulta UPDATE de forma segura
                    $campos = [];
                    $valores = [];
                    foreach ($_REQUEST as $campo => $valor) {
                        if ($campo !== 'tabla' && $campo !== 'id') {
                            $campos[] = "$campo = ?";
                            $valores[] = $valor;
                        }
                    }
                    $campos_str = implode(', ', $campos);
                
                    $consulta = $miPDO->prepare("UPDATE $tabla SET $campos_str WHERE id = ?");
                    $consulta->execute(array_merge($valores, [$id]));
                
                    if ($consulta->rowCount() > 0) {
                        header('Location: ../View/Busqueda/index.php');
                        exit;   

                    } else {
                        echo "No se pudo actualizar el registro. Por favor, verifica los datos.";
                    }
                    
                } catch (PDOException $e) {
                    echo "Error al actualizar el registro: " . $e->getMessage();
                    // Registrar el error en un archivo de log
                }
                
    ?>