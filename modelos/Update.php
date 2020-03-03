<?php
require_once "../config/Conexion.php";
class Update{
	
	function __construct(){
		
	}
	function update($idCliente,$idSolicitud){
		$sql="update solicitud set progreso=7 where cliente_idCliente='$idCliente' AND idsolicitud='$idSolicitud'";
		return ejecutarconsulta($sql);
	}
	function update2($idCliente,$idSolicitud){
		$sql="update solicitud set progreso=5 where cliente_idCliente='$idCliente' AND idsolicitud='$idSolicitud'";
		return ejecutarconsulta($sql);
	}
}
?>