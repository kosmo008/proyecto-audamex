<?php
require_once "../modelos/Norma.php";
require_once "../modelos/Servicio.php";

$norma= new Norma();
$servicios= new Servicios();

$opcion=isset($_POST['opcion'])? limpiarcadena($_POST['opcion']):"";

switch($_GET["op"]){


	case 'listarNorma':
		$rspta=$servicios->listaServicio();
		$aux="";
		while ($reg = $rspta->fetch_object()){
					$aux=$aux."<option value='". $reg->idServicio . "'>". $reg->descripcion ."</option>";
					
			
			}
		$cont_t;
		$cont_t=0;
			
			$rspta=$norma->listarNorma();
				$data=Array();
				$count=0;
				while($reg=$rspta->fetch_object()){
				
					$data[]=array(
					"0"=>"<input value='".$cont_t ."'  id='ck". $reg->idNorma . "' type='checkbox' onchange='estado(" . $reg->idNorma . ",".$count++.")' name='ck[]' >",
					"1"=>$reg->acronimo,
					"2"=>$reg->claveMex,
					"3"=>$reg->claveISO,
					"4"=>$reg->descripcion,
					"5"=>"<select name='sel_c[]' id='" . $reg->idNorma . "'>" . $aux . "</select>",
					);
					$cont_t++;
				}
				$count=0;
				$results = array(
				"sEcho"=>1,
				"iTotalRecords"=>count($data),
				"iTotalDisplayRecords"=>count($data),
				"aaData"=>$data);
				echo json_encode($results);
	break;


}


?>