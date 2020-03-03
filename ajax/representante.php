<?php
require_once "../modelos/Representante.php";
$representante=new Representante();
$idCliente=isset($_POST['idCliente']) ? limpiarcadena($_POST['idCliente']) : "";
$idSolicitud=isset($_POST['idSolicitud']) ? limpiarcadena($_POST['idSolicitud']) : "";
$idRepresentante=isset($_POST['idRepresentante']) ? limpiarcadena($_POST['idRepresentante']) : "";

$puesto=isset($_POST['puesto']) ? limpiarcadena($_POST['puesto']) : "";

$nombre=isset($_POST['nombre']) ? limpiarcadena($_POST['nombre']) : "";
$telefono=isset($_POST['telefono']) ? limpiarcadena($_POST['telefono']) : "";
$extension=isset($_POST['extension']) ? limpiarcadena($_POST['extension']) : "";
$correo=isset($_POST['correo']) ? limpiarcadena($_POST['correo']) : "";

$nombreII=isset($_POST['nombreII']) ? limpiarcadena($_POST['nombreII']) : "";
$telefonoII=isset($_POST['telefonoII']) ? limpiarcadena($_POST['telefonoII']) : "";
$extensionII=isset($_POST['extensionII']) ? limpiarcadena($_POST['extensionII']) : "";
$correoII=isset($_POST['correoII']) ? limpiarcadena($_POST['correoII']) : "";

$nombreIII=isset($_POST['nombreII']) ? limpiarcadena($_POST['nombreIII']) : "";
$telefonoIII=isset($_POST['telefonoIII']) ? limpiarcadena($_POST['telefonoIII']) : "";
$extensionIII=isset($_POST['extensionIII']) ? limpiarcadena($_POST['extensionIII']) : "";
$correoIII=isset($_POST['correoIII']) ? limpiarcadena($_POST['correoIII']) : "";

$puesto=isset($_POST['puesto']) ? limpiarcadena($_POST['puesto']) : "";

$opcion=isset($_POST['opcion']) ? limpiarcadena($_POST['opcion']) : "";

	switch($opcion){
		
		case 'insertar':
			$flag=true;
			/*Validacion de nombres*/
			if(strlen($nombre)>7){
				$nombre_usuario=$nombre;
				$permitidos = "abcdefghijklmnñopqrstuvwxyzABCDEFGHIJKLMNÑOPQRSTUVWXYZ ";
				
				for ($i=0; $i<strlen($nombre_usuario); $i++){
					if (strpos($permitidos, substr($nombre_usuario,$i,1))===false){
					$flag=false;
					echo "El nombre es invalido\n";
					break;
					}
				}
			}else{
				echo "Verifique el  nombre (Gerente general) \n";
				$flag=false;
			}
			
			
			if(strlen($nombreII)>7){
				$nombre_usuario=$nombreII;
				$permitidos = "abcdefghijklmnñopqrstuvwxyzABCDEFGHIJKLMNÑOPQRSTUVWXYZ ";
				
				for ($i=0; $i<strlen($nombre_usuario); $i++){
					if (strpos($permitidos, substr($nombre_usuario,$i,1))===false){
					$flag=false;
					echo "El nombre es invalido\n";
					break;
					}
				}
			}else{
				echo "Verifique el  nombre (Representante Legal).\n";
				$flag=false;
			}
			
			if(strlen($nombreIII)>7){
				$nombre_usuario=$nombreIII;
				$permitidos = "abcdefghijklmnñopqrstuvwxyzABCDEFGHIJKLMNÑOPQRSTUVWXYZ ";
				
				for ($i=0; $i<strlen($nombre_usuario); $i++){
					if (strpos($permitidos, substr($nombre_usuario,$i,1))===false){
					$flag=false;
					echo "El nombre es invalido\n";
					break;
					}
				}
			}else{
				echo "El nombre es invalido\n";
				$flag=false;
			}
			/*Validacion de nombres*/
			
			/*Validacion de telefono*/
			if(strlen($telefono)>7){
				$permitidos = "0123456789 ()";
				for ($i=0; $i<strlen($telefono); $i++){
					if (strpos($permitidos, substr($telefono,$i,1))===false){
					$flag=false;
					echo "Numero de telefono (Gerente general) invalido\n";
					break;
					}
				}
			}else{
				echo "Numero de telefono (Gerente general) invalido\n";
				$flag=false;
			}
			if(strlen($telefonoII)>7){
				$permitidos = "0123456789 ()";
				for ($i=0; $i<strlen($telefonoII); $i++){
					if (strpos($permitidos, substr($telefonoII,$i,1))===false){
					$flag=false;
					echo "Numero de telefono (Representante legal) invalido\n";
					break;
					}
				}
			}else{
				echo "Numero de telefono (Representante legal) invalido\n";
				$flag=false;
			}
			if(strlen($telefonoIII)>7){
				$permitidos = "0123456789 ()";
				for ($i=0; $i<strlen($telefonoIII); $i++){
					if (strpos($permitidos, substr($telefonoIII,$i,1))===false){
					$flag=false;
					echo "Numero de telefono (Representante de gestion) invalido\n";
					break;
					}
				}
			}else{
				echo "Numero de telefono (Representante de gestion) invalido\n";
				$flag=false;
			}
			/*Validacion de telefono*/
			
			/*Validacion de extension*/
			if(strlen($extension)>0){
				$permitidos = "0123456789 ()";
				for ($i=0; $i<strlen($extension); $i++){
					if (strpos($permitidos, substr($extension,$i,1))===false){
					$flag=false;
					echo "Extension 1 invalida\n";
					break;
					}
				}
			}else{
				echo "Extension 1 invalida \n";
				$flag=false;
			}
			if(strlen($extensionII)>0){
				$permitidos = "0123456789 ()";
				for ($i=0; $i<strlen($extensionII); $i++){
					if (strpos($permitidos, substr($extensionII,$i,1))===false){
					$flag=false;
					echo "Extension 2 invalida\n";
					break;
					}
				}
			}else{
				echo "Extension 2 invalida \n";
				$flag=false;
			}
			if(strlen($extensionIII)>0){
				$permitidos = "0123456789 ()";
				for ($i=0; $i<strlen($extensionIII); $i++){
					if (strpos($permitidos, substr($extensionIII,$i,1))===false){
					$flag=false;
					echo "Extension 3 invalida\n";
					break;
					}
				}
			}else{
				echo "Extension 3 invalida \n";
				$flag=false;
			}
			
			/*Validacion de extension*/
			if($flag){
		
			if(empty($idRepresentante)){
				$rspta=$representante->insertar($nombre,$telefono,$extension,$correo,  $nombreII,$telefonoII,$extensionII,$correoII,  $nombreIII,$telefonoIII,$extensionIII,$correoIII, $idCliente,$idSolicitud);
				 echo $rspta ? "Guardado" : "no se puede guardar";
			}else{
				$rspta=$representante->editar($nombre,$telefono,$extension,$correo,  $nombreII,$telefonoII,$extensionII,$correoII,  $nombreIII,$telefonoIII,$extensionIII,$correoIII, $idCliente,$idSolicitud);
				 echo $rspta? "Actualizado con exito":"No se puede actualizar";
			}
		
			}
		break;
		
		
		case "mostrarGG":
			$rspta=$representante->mostrarGG($idCliente,$puesto);
			echo json_encode($rspta);
		break;
		case "existePuesto":
			$rspta=$representante->existePuesto($idCliente,$puesto);
			echo json_encode($rspta);
		break;
		
		
		case 'mostrar':
		
			$rspta=$representante->mostrar($idCliente);
				$data="";;
				
				while($reg=$rspta->fetch_object()){
					$data=$data.$reg->puesto."//";
					$data=$data.$reg->nombre."//";
					$data=$data.$reg->telefono."//";
					$data=$data.$reg->extension."//";
					$data=$data.$reg->correo."\n";
				}
				echo $data;
		break ;
		
	}
	
?>