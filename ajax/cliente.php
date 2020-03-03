<?PHP
require_once "../modelos/Cliente.php";
$cliente=new Cliente();
	$idCliente=isset($_POST['idCliente'])?limpiarcadena($_POST['idCliente']):"";
	$opcion=isset($_POST['opcion'])?limpiarcadena($_POST['opcion']):"";
	
	switch($opcion){
		
		case 'mostrar':
				$rspta=$cliente->mostrar($idCliente);
			    echo json_encode($rspta);
		break;
		
		
	}
?>