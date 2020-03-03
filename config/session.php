<?php
require_once "Conexion.php";
session_start();
$opcion=isset($_POST['opcion'])?limpiarcadena($_POST['opcion']):"";
$progreso=isset($_POST['progreso'])?limpiarcadena($_POST['progreso']):"";

switch($opcion){
	case 'verificar':
	$rs;
	$progreso=isset($_SESSION['progresoSolicitud']) ? $_SESSION['progresoSolicitud']=$progreso : $_SESSION['progresoSolicitud']=$progreso;
	isset($_SESSION['progresoSolicitud'])? $rs="".$_SESSION['progresoSolicitud'] : $rs="no se puede crear";
	echo $rs;


	break;
	
	
}
?>