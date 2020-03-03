<?php
	require_once "../config/Conexion.php";
	
	class Proceso{
	
	function __construct(){	
	}	
	
	function guardar($idSolicitud,$descripcion,$intExt,$sitio,$turno,$totalPersonas,$encargado,$departamento){
		$sql="CALL ins_Proceso('$idSolicitud','$descripcion', '$intExt','$sitio', '$turno', '$totalPersonas', '$encargado', '$departamento')";
		return ejecutarconsulta($sql);
	}
		
	}
	
?>