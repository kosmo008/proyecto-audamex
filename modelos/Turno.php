<?php
require_once "../config/Conexion.php";

class Turno{
	
	function __construct(){
		
		
	}
	
	function listar(){
			$sql="SELECT * FROM turno WHERE condicion!=0;";
			return ejecutarconsulta($sql);	
	}
	
}


?>