<?php
require_once "../modelos/Servicio.php";
$servicios = new Servicios();
$opcion=isset($_POST['opcion'])?limpiarcadena($_POST['opcion']):"";
$bandera=isset($_POST['bandera'])?limpiarcadena($_POST['bandera']):"";

switch($opcion){
	
	case 'listaServicioAux':
	
		$rspta=$servicios->listaServicio();
		$aux="";
		
		while ($reg = $rspta->fetch_object()){
					$aux =$aux . $reg->idServicio . $reg->descripcion;
			}
		echo $aux;
	break;
	
		case 'listarServicios':
		
			$rspta=$servicios->listaDinamica();
			$aux="";
			while($reg=$rspta->fetch_object()){
				$aux= $aux . "<option value='" . $reg->idServicio. "'>" . $reg->descripcion . "</option>";
			}	
			
			require_once "../modelos/Norma.php";
			$norma= new Norma();
			$aux2="";
			$rspta=$norma->listarNorma();
			
			while($reg=$rspta->fetch_object()){
					$aux2= $aux2 . "<option value='" . $reg->idNorma. "'>" . "(" . $reg->acronimo .") " . $reg->claveISO . "/" . $reg->claveMex . "</option>";
			}
			
			$serv= "<td><select name='servicio_on_select[]' class='form-control' style='border-style:solid; border-color:black;';>".$aux."</select></td>";
			$norm= "<td><select name='norma_on_selec[]' class='form-control' style='border-style:solid; border-color:black;';>".$aux2."</select></td>";
			$alca= "<td><input  type='text' name='alcance_SG[]' class='form-control' style='border-style:solid; border-color:black; height:19.76px;'; ></td>"; 
			$rsp=  $serv.$norm.$alca;	
			echo $rsp;
			
		break;
		
		case 'listarServiciosIntegrales':
		
			$rspta=$servicios->listaDinamica($bandera);
			
			$aux="";
			while($reg=$rspta->fetch_object()){
				$aux= $aux . "<option value='" . $reg->idServicio. "'>" . $reg->descripcion . "</option>";
			}	
			
			require_once "../modelos/Norma.php";
			$norma= new Norma();
			$aux2="";
			$rspta=$norma->listarNorma();
			
			while($reg=$rspta->fetch_object()){
					$aux2= $aux2 . "<option value='" . $reg->idNorma. "'>" . "(" . $reg->acronimo .") " . $reg->claveISO . "/" . $reg->claveMex . "</option>";
			}
			
			$serv= "<td><select name='servicio_on_select[]' class='form-control' style='border-style:solid; border-color:black;';>".$aux."</select></td>";
			$norm= "<td><select name='norma_on_selec[]' class='form-control' style='border-style:solid; border-color:black;';>".$aux2."</select></td>";
			
			
			
			
			if($bandera==1){
				$rsp=$serv.$norm;		
			}else{
				$rsp=$serv.$norm;	
			}
			echo $rsp;
			
		break;
}

?>