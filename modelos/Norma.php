<?php

require_once "../config/Conexion.php";
	
class Norma{
	
	public function __construct(){
	
	
	}
	
	public function listarNorma(){
			$sql="SELECT * FROM norma WHERE condicion!=0";
			return ejecutarconsulta($sql);
	}
	
}
?>