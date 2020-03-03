<?php
require_once "../config/Conexion.php";

class Sitio{
	public function __construct(){
	
	}
	public function listarSelect($idCliente){
		    $sql="SELECT * FROM sitio WHERE condicion!=0 AND cliente_idCliente='$idCliente';";
			return ejecutarConsulta($sql);
	}
	public function mostrar($idCliente){
		    $sql="SELECT * FROM sitio WHERE cliente_idCliente='$idCliente' AND condicion>1;";
			return ejecutarConsultaSimplefila($sql);
	}
	public function mostrarFiscal($idCliente){
		    $sql="SELECT condicion FROM sitio WHERE cliente_idCliente='$idCliente' AND condicion>1;";
			return ejecutarConsulta($sql);
	}  	
	public function actualizar($idCliente,$idSolicitud,$razonSocial,$RFC,$correo,$pais,$estado,$alcaldia,$colonia,$numeroInterior,$numeroExterior,$CP,$calle){
		    $sql="CALL actualizarFiscales('$idCliente', '$idSolicitud', '$razonSocial','$RFC', '$correo', '$pais', '$estado', '$alcaldia', '$colonia','$numeroInterior', '$numeroExterior', '$CP','$calle');";
			return ejecutarConsulta($sql);
	}
	public function listar($idCliente){
		    $sql="SELECT * FROM sitio WHERE condicion!=0 AND cliente_idCliente=$idCliente;";
			return ejecutarConsulta($sql);
	}
	
	public function verificar($idCliente){
		    $sql="SELECT COUNT(*) AS Existe,condicion FROM sitio WHERE condicion>1 AND cliente_idCliente='$idCliente';";
			return ejecutarConsultaSimplefila($sql);
	}	
	
}
?>