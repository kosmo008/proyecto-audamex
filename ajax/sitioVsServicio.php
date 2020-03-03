<?php

	require_once "../modelos/SitiovsSolicitud.php";
	
	$sitiovsservicio= new SitiovsServicio();
	
	$idSolicitud=isset($_POST['idSolicitud'])?limpiarcadena($_POST['idSolicitud']):"";
	$opcion=isset($_POST['opcion'])?limpiarcadena($_POST['opcion']):"";
	$idSitio=isset($_POST['idSitio'])?$_POST['idSitio']:"";
	$sitios=isset($_POST['sitios'])?$_POST['sitios']:"";
	switch($opcion){
		
			case 'sitiovsSolicitud':
				for($i=0;$i<count($sitios);$i++){
					echo "sitio:".$sitios[$i]." Solicitud:".$idSolicitud."\n";
					$rspta=$sitiovsservicio->sitiovsSolicitud($sitios[$i],$idSolicitud);
					echo $rspta?"Guardado":"Error\n";
				}
			break;
	}
?>