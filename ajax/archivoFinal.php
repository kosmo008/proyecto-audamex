<?php
require_once "../modelos/ArchivoFinal.php";
$archivo = new FinalArchivo();

$idSolicitud  = isset($_POST['idSolicitud'])?limpiarcadena($_POST['idSolicitud']):"";
$filepdf  = isset($_POST['filepdf']) ? limpiarcadena($_POST['filepdf']):"";
$opcion = isset($_POST['opcion'])?limpiarcadena($_POST['opcion']):"";
	
	switch($opcion){
		
		case 'guardar':
		
		
		if(!file_exists($_FILES['filepdf']['tmp_name']) || !is_uploaded_file($_FILES['filepdf']['tmp_name']) ){
				echo "cargue un archivo";
			}else{
				$ext=explode(".",$_FILES["filepdf"]["name"]);
				if($_FILES["filepdf"]["type"]=="application/pdf"){
					$filepdf=round(microtime(true)).'.'.end($ext);
					move_uploaded_file($_FILES["filepdf"]["tmp_name"],"../doc/ADS/".$filepdf);
					$rspta=$archivo->guardar($idSolicitud,$filepdf);
					echo $rspta?1:"Error";
				}else{
					echo "El archivo es invalido";
				}
			}
			
		break;
		
	
	}
	
?>