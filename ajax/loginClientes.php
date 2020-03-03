<?php
session_start(); 
require_once "../modelos/LoginClientes.php";

$loginClientes=new LoginClientes();

$idusuario=isset($_POST["idUsuario"])? limpiarCadena($_POST["idUsuario"]):"";

$login=isset($_POST["login"])? limpiarCadena($_POST["login"]):"";
$clave=isset($_POST["clave"])? limpiarCadena($_POST["clave"]):"";


switch ($_GET["op"]){
	 

 
	case 'verificar':
		$usuarioa=$_POST['usuarioa'];
	    $passworda=$_POST['passworda'];
        
        

	    //Hash SHA256 en la contraseña
		$clavehash=cifradoPassword($passworda);

		$rspta=$loginClientes->verificar($usuarioa, $clavehash);

		$fetch=$rspta->fetch_object();

		if (isset($fetch))
	    {
	        //Declaramos las variables de sesión
	        $_SESSION['idUsuarioExt']=$fetch->idUsuarioExt;
	        $_SESSION['usuario']=$fetch->usuario;
	        $_SESSION['permiso']="Cliente";
	        $_SESSION['cliente_idCliente']=$fetch->cliente_idCliente;
           
         
	    }
        
        $respuesta=$loginClientes->servicios($_SESSION['idUsuarioExt']);
        
        $fetcha=$respuesta->fetch_object();

		if (isset($fetcha))
	    {
	        //Declaramos las variables de sesión
            
	        //$_SESSION['idSolicitud']="hola"; 
	       // $_SESSION['idSolicitud']=$fetch->idSolicitd; 
	        
           
         
	    }
        
        
        //print_r($fetch);
        
	    echo json_encode($fetch);
	break;

	case 'salir':
		//Limpiamos las variables de sesión   
        session_unset();
        //Destruìmos la sesión
        session_destroy();
        //Redireccionamos al login
        header("Location: ../vistas/opcionesLogin.html");

	break;
}



function cifradoPassword($cadena){
	$key='Audamex10!'; 	
    //$cadena="S1st3masg3";
	$encrypted = base64_encode(mcrypt_encrypt(MCRYPT_RIJNDAEL_256, md5($key),$cadena, MCRYPT_MODE_CBC, md5(md5($key))));
	$aux=''.$encrypted;
	return $aux;
	}
	
	


?>