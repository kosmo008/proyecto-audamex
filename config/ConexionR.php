<?php


$conexion = "";

	function conectar(){
        
        $server="localhost";
        $usuario="constr16_wp1";
        $pass="F.H0ybVBiGWRyEgxtEW87";
        $bd="constr16_SIRE_TOSAL";
        
       // echo $server." ".$usuario." ".$pass;
    
		try{
			//$cnx = mysqli_connect("localhost:3306","constr16_sire_tosal_u","z7Z-XL!-@iH7") or die('No se pudo conectar al servidor MYSQl.');
            
            $cnx= mysqli_connect($server,$usuario,$pass) or die ('error parametros');
            

			mysqli_select_db($cnx,"constr16_SIRETOSAL") or die('No existe la base de datos.');

            
            global $conexion ;
            
            $conexion = $cnx;
			return $cnx;
            
        
		}
		catch(Exeption $e){
			print_r("Error de conexión: " . $e->mysqli_error($cnx));
		}
        
        
       
	}
    
     



if (!function_exists('ejecutarConsulta'))
{
	function ejecutarConsulta($sql)
	{
		global $conexion;
		$query = $conexion->query($sql);
		return $query;
	}

	function ejecutarConsultaSimpleFila($sql)
	{
		global $conexion;
		$query = $conexion->query($sql);		
		$row = $query->fetch_assoc();
		return $row;
	}

	function ejecutarConsulta_retornarID($sql)
	{
		global $conexion;
		$query = $conexion->query($sql);		
		return $conexion->insert_id;			
	}

	function limpiarCadena($str)
	{
		global $conexion;
		$str = mysqli_real_escape_string($conexion,trim($str));
		return htmlspecialchars($str);
	}
}



















?>