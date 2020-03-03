<?php
require_once "../config/Conexion.php";

Class Cliente{
	public function __construct(){
	
	}
	
	public function mostrar($idCliente){
		$sql="SELECT * FROM cliente WHERE idCliente='$idCliente'";
		return ejecutarconsultasimplefila($sql);
	}

}


?>