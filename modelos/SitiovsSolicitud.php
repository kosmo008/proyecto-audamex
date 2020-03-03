<?php
require_once "../config/Conexion.php";
	
	class SitiovsServicio{
		function __construct(){
		
		}
		function sitiovsSolicitud($idSitio,$idSolicitud){
			$sql="INSERT INTO sitiovsSolicitud(sitio_idSitio,solicitud_idSolicitud)VALUES('$idSitio','$idSolicitud')";
			return ejecutarconsulta($sql);
		}

	}

?>