<?php
require_once "../config/Conexion.php";

class Solicitud{
	
	public function __construct(){
	
	}
	public function progresoSolicitud($idSolicitud,$idCliente){
		$sql="SELECT progreso FROM solicitud WHERE cliente_idCliente='$idCliente' AND idSolicitud='$idSolicitud'";
		return ejecutarconsulta($sql);	
	}
	public function mostrar($idSolicitud,$idCliente){
	$sql="SELECT progreso FROM solicitud WHERE cliente_idCliente='$idCliente' AND idSolicitud='$idSolicitud'";
		return ejecutarconsulta($sql);	
	}
	
	public function actualizarProceso($idCliente,$idSolicitud){
	$sql="UPDATE solicitud SET progreso=6 WHERE cliente_idCliente='$idCliente' AND idSolicitud='$idSolicitud'";
		return ejecutarconsulta($sql);	
	}
	public function progresoIndividual($idSolicitud,$progreso){
	$sql="UPDATE solicitud SET progreso='$progreso' WHERE idSolicitud='$idSolicitud'";
		return ejecutarconsulta($sql);	
	}
	
}