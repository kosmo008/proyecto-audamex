<?php
require_once "../modelos/Update.php";
$update= new Update();
$idCliente=isset($_POST['idCliente'])?limpiarcadena($_POST['idCliente']):"";
$idSolicitud=isset($_POST['idSolicitud'])?limpiarcadena($_POST['idSolicitud']):"";
$opcion=isset($_POST['opcion'])?limpiarcadena($_POST['opcion']):"";

switch($opcion){
	case 'update':
		$rspta=$update->update($idCliente,$idSolicitud);
		echo $rspta;
	break;
	case 'update2':
		$rspta=$update->update2($idCliente,$idSolicitud);
		echo $rspta;
	break;
	
}

?>