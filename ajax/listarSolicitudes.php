<?php 
ob_start();
session_start();
require_once "../modelos/ListarSolicitudes.php";

$listarSolicitudes=new ListarSolicitudes();
$idCliente=isset($_POST["idCliente"])? limpiarCadena($_POST["idCliente"]):"";

switch ($_GET["op"])
{
 
	case 'listar':
        
        $id=$_SESSION['cliente_idCliente'];        
		$respuesta=$listarSolicitudes->listar($id);
 		//Vamos a declarar un array
 		$data= Array();

 		while ($reg=$respuesta->fetch_object()){
                
            $progreso = $reg->progreso; 
					
            $avance =(int)(($progreso * 100)/9);
           
            if($progreso==9){
			 $eje='<div class="progress" style="height:35px"><div id="dynamic" class="progress-bar progress-bar-success progress-bar-striped active bg-success" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width:100%; "><span id="current-progress"> terminado..! </span></div></div>';
			}else{
				$eje='<div class="progress" style="height:35px"><div id="dynamic" class="progress-bar progress-bar-success progress-bar-striped active" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width:'.$avance.'%; "><span id="current-progress"> '.$avance.'% </span></div></div>';
			}	
 			$data[]=array(
 				"0"=>'<button class="btn btn-warning" onclick="mostrar('.$reg->idSolicitud.')"><span class="fa fa-eye"></span></button>',
                "1"=>"F5-".$reg->idSolicitud,
 				"2"=>$reg->fecha,
 				"3"=>$eje
            );
 		}
 		$results = array(
 			"sEcho"=>1, //Información para el datatables
 			"iTotalRecords"=>count($data), //enviamos el total registros al datatable
 			"iTotalDisplayRecords"=>count($data), //enviamos el total registros a visualizar
 			"aaData"=>$data);
 		echo json_encode($results);

	break;
        
    case 'mostrar':
		$rspta=$cotizacion->mostrar($idCliente);
 		//Codificar el resultado utilizando json
 		echo json_encode($rspta);
	break;
  

        
     
       
        
}

?>