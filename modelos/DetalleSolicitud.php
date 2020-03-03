<?php
 require_once "../config/Conexion.php";
 class DetalleSolicitud{
	 function __construct(){
		 
	 }   
	 
	 function guardar($idSolicitud,$descAsesorExterno,$fechaImpSG,$descAudInter,$idioma,$equipoEspecial,$reqSeguridad,$reqCapaExtra){
		 
		$sql="CALL ins_DetalleSolicitud('$descAsesorExterno','$fechaImpSG','$descAudInter','$idioma','$equipoEspecial','$reqSeguridad','$reqCapaExtra',$idSolicitud)";
		 return ejecutarconsulta($sql);
		 
	 }
 }
 
?>
