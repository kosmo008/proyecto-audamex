<?php 
//Incluímos inicialmente la conexión a la base de datos
require "../config/Conexion.php";

	class Form_step{
		
		public function __construct(){
			
		}
		
		public function actualizarFiscales($idCliente,$idDireccion,$razonSocial,$RFC,$pais,$estado,$alcaldia,$colonia,$numeroInterior,$numeroExterior,$codigoPostal,$calle,$correo){
			$sql=" CALL actualizarFiscales('$idCliente','$idDireccion','$razonSocial','$RFC','$pais','$estado','$alcaldia','$colonia','$numeroInterior','$numeroExterior','$codigoPostal','$calle','$correo')";
			
			/*	$sql="UPDATE ProgresoF5,Cliente, Direccion
					SET 
						ProgresoF5.actualizarFiscales=1,
						Cliente.razonSocial='$razonSocial',
						Cliente.RFC='$RFC', 
						Cliente.correo='$correo',
						
						Direccion.pais='$pais',
						Direccion.estado='$estado',
						Direccion.alcaldia='$alcaldia',
						Direccion.colonia='$colonia',
						Direccion.noInterior='$numeroInterior',
						Direccion.noExterior='$numeroExterior', 
						Direccion.cp='$codigoPostal',
						Direccion.calle='$calle'
						
					WHERE
					Cliente.idCliente='$idCliente' AND ProgresoF5.idCliente='$idCliente' AND direccion.cliente_idCliene='$idCliente';";
						
						*/
						
					return ejecutarconsulta($sql);
		}
		
		public function mostrar($idCliente){
				$sql="SELECT  ProgresoF5.ActualizarFiscales AS ProgresoF5,
							  
							  Cliente.razonSocial AS RazonSocial,
							  Cliente.RFC AS RFC, 
							  Cliente.correo AS Correo,  
							  
							  Direccion.idDireccion AS DireccionID,
							  Direccion.pais AS Pais, 
							  Direccion.estado AS Estado,
							  Direccion.alcaldia AS Alcaldia,
							  Direccion.colonia AS Colonia,
							  Direccion.noInterior AS NumeroInterior,
							  Direccion.noExterior NumeroExterior,  
							  Direccion.CP AS CodigoPostal, 
							  Direccion.calle AS Calle    
							  
							  FROM Cliente LEFT JOIN Direccion ON Direccion.Cliente_idCliente=Cliente.idCliente LEFT JOIN ProgresoF5 ON ProgresoF5.idCliente=Cliente.idCliente  
						where Cliente.idCliente=236 AND Direccion.fiscal=1 order by Cliente.idCliente ;"; 
				return ejecutarconsultasimplefila($sql);	
		}
		
		
		public function progresof5($idCliente){
				$sql="select * from";
			
		}
		
		
		
	}
?>