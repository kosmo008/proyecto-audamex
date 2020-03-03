<?php
require_once "../modelos/DetalleSolicitud.php";
	$detalleSolicitud = new DetalleSolicitud();
$idCliente=isset($_POST['idCliente'])?limpiarcadena($_POST['idCliente']):"";
$idSolicitud=isset($_POST['idSolicitud'])?limpiarcadena($_POST['idSolicitud']):"";
$opcion=isset($_POST['opcion'])?limpiarcadena($_POST['opcion']):"";

$descAsesorExterno=isset($_POST['descAsesorExterno'])?limpiarcadena($_POST['descAsesorExterno']):"Sin datos declarados";
$fechaImpSG=isset($_POST['fechaImpSG'])?limpiarcadena($_POST['fechaImpSG']):"";
$descAudInter=isset($_POST['descAudInter'])?limpiarcadena($_POST['descAudInter']):"";
$idioma=isset($_POST['idioma'])?limpiarcadena($_POST['idioma']):"";
$equipoEspecial=isset($_POST['equipoEspecial'])?limpiarcadena($_POST['equipoEspecial']):"Ninguno";
$reqSeguridad=isset($_POST['reqSeguridad'])?limpiarcadena($_POST['reqSeguridad']):"Ninguno";
$reqCapaExtra=isset($_POST['reqCapaExtra'])?limpiarcadena($_POST['reqCapaExtra']):"Ninguno";


switch($opcion){
			case 'guardar':
			date_default_timezone_set('utc');
			$flag=true;
			$datetime1 = date_create("now");
			$datetime2 = date_create($fechaImpSG);
			
			$interval = date_diff($datetime1, $datetime2);
			$aux=$interval->format('%R%a días');
			$mayorQue='-';
			   $bl=strpos($aux,$mayorQue);
			   
			if($bl===false){
				echo "Fecha de inplementacion invalida";
				$flag=false;
			}else if($flag){
					$rspta=$detalleSolicitud->guardar($idSolicitud,$descAsesorExterno,$fechaImpSG,$descAudInter,$idioma,$equipoEspecial,$reqSeguridad,$reqCapaExtra);
					echo $rspta?1:0;
				}
			
			break;
			
			case '':
			break;
}


?>








 