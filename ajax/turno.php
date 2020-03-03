<?php
require_once "../modelos/Turno.php";
$turno= new Turno();

$opcion=$_POST['opcion'] ? limpiarcadena ($_POST['opcion']) :"";

switch($opcion){
	
	case 'listar':
		$rspta=$turno->listar();
		
		while ($reg = $rspta->fetch_object()){
					echo $reg->idTurno;
					echo $reg->descripcion;
					echo $reg->condicion;
			
			}
	break;
	case 'listarOption':
		$rspta=$turno->listar();
		$aux="";
		while ($reg = $rspta->fetch_object()){
					$aux= $aux ."<option value='" . $reg->idTurno . "'>". $reg->descripcion . "</option>";
			
			}
		echo $aux;
	break;
	
	case 'hora':
		
			$aux='desde anidado->02';
		echo $aux;
	break;
}

?>