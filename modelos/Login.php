<?php
	require_once "../config/conexion.php";
	$funcion =new Login();
	
	$rspta=$funcion->mostrar('Genaro','aa8167aea901add87f4cbb1a646028b0');
	
		
		foreach ($rspta as &$valor) {
			echo json_encode($valor);
			}
		
	class Login{
		public function __construct(){
			
		}
		
		
		public function mostrar($user,$pass){
			$sql="SELECT 
					idUsuarioExt,usuario,pasword,condicion,cliente_idCliente
				FROM usuarioEXT 
				WHERE usuario='$user' AND pasword='$pass' AND condicion != 0;";
			return ejecutarconsultasimplefila($sql);	
		}
		
		public function select(){
			$sql="SELECT * FROM Categoria where condicion=1";
			return ejecutarconsulta($sql);	
		}
		
	}
?>