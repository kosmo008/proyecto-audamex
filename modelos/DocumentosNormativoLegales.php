<?php
	require_once "../config/Conexion.php";

	class DocumentosNormativoLegales{

		function __construct(){
			
		}
		function guardar($nombre,$idCliente,$descripcion,$referencia){
			$sql="INSERT INTO documentosnormativolegales(nombre,cliente_idCliente,Descripcion,referencia,condicion)
			values('$nombre','$idCliente','$descripcion','$referencia',1)";
			return ejecutarconsulta($sql);
		}
	
	}
	
?>