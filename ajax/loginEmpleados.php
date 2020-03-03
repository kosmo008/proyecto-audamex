<?php
session_start(); 
require_once "../modelos/LoginEmpleados.php";

$loginEmpledos=new LoginEmpleados();

$idUsuarioInt=isset($_POST["idUsuarioInt"])? limpiarCadena($_POST["idUsuarioInt"]):"";

$login=isset($_POST["login"])? limpiarCadena($_POST["login"]):"";
$clave=isset($_POST["clave"])? limpiarCadena($_POST["clave"]):"";


switch ($_GET["op"]){
	


	case 'verificar':
		$usuarioa=$_POST['usuarioa'];
	    $passworda=$_POST['passworda'];
        $clavehash=cifradoPassword($passworda);
		$rspta=$loginEmpledos->verificar($usuarioa, $clavehash);
		

		$fetch=$rspta->fetch_object();

		if (isset($fetch))
	    {
	        //Declaramos las variables de sesión
	        $_SESSION['idUsuarioInt']=$fetch->idUsuarioInt;
	        $_SESSION['usuario']=$fetch->usuario;
	        

	        //Obtenemos los permisos del usuario
	    	$marcados = $loginEmpledos->listarmarcados($fetch->idUsuarioInt);

	    	//Declaramos el array para almacenar todos los permisos marcados
			$valores=array();

			//Almacenamos los permisos marcados en el array
			while ($per = $marcados->fetch_object())
				{
					array_push($valores, $per->idPermiso);
				}

			//Determinamos los accesos del usuario
			in_array(1,$valores)?$_SESSION['Recursos Humanos']=1:$_SESSION['Recursos Humanos']=0;
			in_array(2,$valores)?$_SESSION['Contabilidad']=1:$_SESSION['Contabilidad']=0;
			in_array(3,$valores)?$_SESSION['Operaciones']=1:$_SESSION['Operaciones']=0;
			//in_array(4,$valores)?$_SESSION['ventas']=1:$_SESSION['ventas']=0;
			//in_array(5,$valores)?$_SESSION['acceso']=1:$_SESSION['acceso']=0;
			//in_array(6,$valores)?$_SESSION['consultac']=1:$_SESSION['consultac']=0;
			//in_array(7,$valores)?$_SESSION['consultav']=1:$_SESSION['consultav']=0;

	    }
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