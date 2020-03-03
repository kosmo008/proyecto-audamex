<?php
require_once "../config/Conexion.php";

 class Representante{

	public function __construct(){
	
	}
	
	public function insertar($nombre,$telefono,$extension,$correo,  $nombreII,$telefonoII,$extensionII,$correoII,  $nombreIII,$telefonoIII,$extensionIII,$correoIII, $idCliente,$idSolicitud){
		$sql="CALL ins_Representante('$nombre','$telefono', '$extension', '$correo','$nombreII','$telefonoII', '$extensionII', '$correoII','$nombreIII','$telefonoIII', '$extensionIII', '$correoIII','$idCliente','$idSolicitud')";
		return ejecutarConsulta($sql);
	}
	
	public function mostrar($idCliente){
		$sql="SELECT * FROM representante WHERE cliente_idCliente='$idCliente' AND condicion!=0;";
		return ejecutarconsulta($sql);
	}
	public function mostrarGG($idCliente,$puesto){
			$sql="SELECT * FROM representante WHERE puesto='$puesto' AND cliente_idCliente='$idCliente' AND condicion!=0;";
			return ejecutarconsultasimplefila($sql);	
	}
	public function existePuesto($idCliente,$puesto){
			$sql="SELECT COUNT(*) AS num FROM representante WHERE puesto='$puesto' AND cliente_idCliente='$idCliente' AND condicion!=0;";
			return ejecutarconsultasimplefila($sql);	
	}

}

?>