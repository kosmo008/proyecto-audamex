<?php
/*IMPORTACION DEL MODELO ListaSOLICITUD*/
require_once "../modelos/ListaSolicitud.php";
/* OBJ ListaSOLICITUD */
$listaSolicitud= new ListaSolicitud();
/* OBJ ListaSOLICITUD */

			
/*DECLARACION DE VARIABLES Y VERIFICACION DE CONTENIDO  POR POST*/
$idCliente=isset($_POST['idCliente'])? limpiarCadena($_POST["idCliente"]):"";
$opcion=isset($_POST['opcion']) ? limpiarCadena($_POST["opcion"]):"";


		
	switch($opcion){
		
		case 'cargarCliente':
				$rspta=$listaSolicitud->cargarCliente($idCliente);
				echo json_encode($rspta);
		break;
		
		case 'listarNormas':
				$rspta=$listaSolicitud->listarNormas();
				
				$data=Array();
				while($reg=$rspta->fetch_object()){
					
					
					$data[]=array(
					"0"=>$reg->idNorma,
					"1"=>$reg->acronimo,
					"2"=>$reg->claveMex,
					"3"=>$reg->claveISO,
					"4"=>$reg->descipcion,
					);
					
				}
					
				$results = array(
								"sEcho"=>1,
								"iTotalRecords"=>count($data),
								"iTotalDisplayRecords"=>count($data),
								"aaData"=>$data);
								
				echo json_encode($results);
			
				break;
	
	}
	?>