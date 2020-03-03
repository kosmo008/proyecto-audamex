<?php 
ob_start();
//Incluímos inicialmente la conexión a la base de datos

require "../config/Conexion.php";


Class ListarSolicitudes
{ 
	//Implementamos nuestro constructor
	public function __construct()
	{

	}

	//Implementar un método para listar los registros
	public function listar($idCliente)
	{
        $sql="SELECT * FROM solicitud WHERE cliente_idCliente='$idCliente' AND condicion!=0";
        return ejecutarConsulta($sql);		
	}
    
}

?>