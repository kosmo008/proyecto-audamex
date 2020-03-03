<?php
require_once "../modelos/Solicitudvsservicios.php";
$solicitudvsservicios= new Solicitudvsservicios();
$idSolicitud=isset($_POST['idSolicitud'])?limpiarcadena($_POST['idSolicitud']):"";
$ser_=isset($_POST['servicio_on_select'])?$_POST['servicio_on_select']:"";
$norma_=isset($_POST['norma_on_selec'])?$_POST['norma_on_selec']:"";
$desc_alcance_SGI=isset($_POST['desc_alcance_SGI'])?$_POST['desc_alcance_SGI']:"";
$opcion=isset($_POST['opcion'])?limpiarcadena($_POST['opcion']):"";

$alcanceSG=isset($_POST['alcance_SG'])?$_POST['alcance_SG']:"";
		
switch($opcion){
	
	case 'guardarIntegral':
		if(strlen($desc_alcance_SGI)<5){
			echo "El alcance no esta descrito de manera correcta";
		}else{
				for($i=0; $i<=count($ser_); $i++){
					$rspta=$solicitudvsservicios->guardar($idSolicitud,$norma_[$i],$ser_[$i],$desc_alcance_SGI);
				}
				echo $rspta?"1":"0";
			}
		
	break;

    case 'guardarIdividual':
		for($i=0; $i<=count($ser_)-1; $i++){
			$rspta=$solicitudvsservicios->guardar($idSolicitud,$norma_[$i],$ser_[$i],$alcanceSG[$i]);
		}
		echo $rspta?"1":"0";
		
	break;
	
	
}
?>
