<?php 
//Incluímos inicialmente la conexión a la base de datos
require "../config/Conexion.php";

Class Norma
{
	//Implementamos nuestro constructor
	public function __construct()
	{

	}

	
	//Implementar un método para listar los registros
	public function listar()
	{
		$sql="SELECT * FROM normas WHERE condicion !=0";
       
		return ejecutarConsulta($sql);		
	}

}

?>