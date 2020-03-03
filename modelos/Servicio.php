<?php
require_once "../config/Conexion.php";

	class Servicios{
	
			public function __construct(){
			}
			
			public function listaServicio(){
				$sql="SELECT * FROM servicio WHERE condicion!=0";
				return ejecutarconsulta($sql);
			}
			public function listaDinamica(){
				$sql="SELECT * FROM servicio WHERE condicion!=0";
				return ejecutarconsulta($sql);
			}
			
}

?>