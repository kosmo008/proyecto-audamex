<?php
require_once "../config/Conexion.php";
class Solicitudvsservicios{
	public function __construct(){
		
	}               
	public function guardar($idSolicitud,$idNorma,$idServicio,$desc_alcance_SGI){
	$sql="CALL ins_servsnor('$idSolicitud','$idServicio','$idNorma','$desc_alcance_SGI');";
	return ejecutarconsulta($sql);
	}	
	
}
?>