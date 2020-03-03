<?php
	require_once "../modelos/Solicitud.php";
	$solicitud=new Solicitud();
	session_start();
	$idCliente= isset($_POST['idCliente']) ? limpiarcadena($_POST['idCliente']) : "";
	$idSolicitud=isset($_POST['idSolicitud']) ? limpiarcadena($_POST['idSolicitud']):"";
	$opcion=isset($_POST['opcion'])?limpiarcadena($_POST['opcion']):"";
	$progreso=isset($_POST['progreso'])?limpiarcadena($_POST['progreso']):"";

	
	switch($opcion){
		
		case 'progresoSolicitud':
			$rspta=$solicitud->progresoSolicitud($idSolicitud,$idCliente);
			$_SESSION['progresoSolicitud']=$rspta;
			echo json_encode($rspta);
		break;
		
		case "mostrar":
			$rspta=$solicitud->mostrar($idSolicitud,$idCliente);
			$result;
			while($reg=$rspta->fetch_object()){
				$result=$reg->progreso;
			}
			echo $result;
		break;
		
		case 'actualizarProceso':
			$rspta=$solicitud->actualizarProceso($idCliente,$idSolicitud);
			echo $rspta;
		break;
		
		case 'progresoIndividual':
			$rspta=$solicitud->progresoIndividual($idSolicitud,$progreso);
			echo $rspta;
		break;
		
	}
?>