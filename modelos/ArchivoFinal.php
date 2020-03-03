<?PHP
	require_once "../config/Conexion.php";
	
	class FinalArchivo{
		
		public function __construct(){
		
		}
		public function guardar($idSolicitud,$archivoFinal){
			$sql="CALL ins_ArchivoFinal('$idSolicitud','$archivoFinal');";
			return ejecutarconsulta($sql);
		}


	}
?>