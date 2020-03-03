<?php 
require_once "../modelos/CuestionarioCertificacion.php";
$integral=0;
$cuestionario=new CuestionarioCertificacion();

$idCliente=isset($_POST["idCliente"])? limpiarCadena($_POST["idCliente"]):"";
$razonSocial=isset($_POST["razonSocial"])? limpiarCadena($_POST["razonSocial"]):"";
//tabla direccion
$calle=isset($_POST["calle"])? limpiarCadena($_POST["calle"]):"";
$noInterior=isset($_POST["noInterior"])? limpiarCadena($_POST["noInterior"]):"";
$noExterior=isset($_POST["noExterior"])? limpiarCadena($_POST["noExterior"]):"";
$colonia=isset($_POST["colonia"])? limpiarCadena($_POST["colonia"]):"";
$alcaldia=isset($_POST["alcaldia"])? limpiarCadena($_POST["alcaldia"]):"";
$estado=isset($_POST["estado"])? limpiarCadena($_POST["estado"]):"";
$pais=isset($_POST["pais"])? limpiarCadena($_POST["pais"]):"";
$codigoPostal=isset($_POST["codigoPostal"])? limpiarCadena($_POST["codigoPostal"]):"";
$RFC=isset($_POST["RFC"])? limpiarCadena($_POST["RFC"]):"";
$nombreContacto=isset($_POST["nombreContacto"])? limpiarCadena($_POST["nombreContacto"]):"";
$puestoContacto=isset($_POST["puestoContacto"])? limpiarCadena($_POST["puestoContacto"]):"";
$correoEmp=isset($_POST["correoEmp"])? limpiarCadena($_POST["correoEmp"]):"";
$telefono1=isset($_POST["telefono1"])? limpiarCadena($_POST["telefono1"]):"";
$telefono2=isset($_POST["telefono2"])? limpiarCadena($_POST["telefono2"]):"";
$tipoProducto=isset($_POST["tipoProducto"])? limpiarCadena($_POST["tipoProducto"]):"";
$alcance=isset($_POST["alcance"])? limpiarCadena($_POST["alcance"]):"";
$noPersonas=isset($_POST["noPersonas"])? limpiarCadena($_POST["noPersonas"]):"";
$multiSitios=isset($_POST["chk2"])? limpiarCadena($_POST["chk2"]):"";
$fechaProbable=isset($_POST["fechaProbable"])? limpiarCadena($_POST["fechaProbable"]):"";
$requerimientoAdd=isset($_POST["requerimientoAdd"])? limpiarCadena($_POST["requerimientoAdd"]):"";
$nivelIntegracion=isset($_POST["nivelIntegracion"])? limpiarCadena($_POST["nivelIntegracion"]):"";
$observaciones=isset($_POST["observaciones"])? limpiarCadena($_POST["observaciones"]):"";
$calle2=isset($_POST["calle2"])? limpiarCadena($_POST["calle2"]):"";
$noInterior2=isset($_POST["noInterior2"])? limpiarCadena($_POST["noInterior2"]):"";
$noExterior2=isset($_POST["noExterior2"])? limpiarCadena($_POST["noExterior2"]):"";
$colonia2=isset($_POST["colonia2"])? limpiarCadena($_POST["colonia2"]):"";
$alcaldia2=isset($_POST["alcaldia2"])? limpiarCadena($_POST["alcaldia2"]):"";
$estado2=isset($_POST["estado2"])? limpiarCadena($_POST["estado2"]):"";
$pais2=isset($_POST["pais2"])? limpiarCadena($_POST["pais2"]):"";
$codigoPostal2=isset($_POST["codigoPostal2"])? limpiarCadena($_POST["codigoPostal2"]):"";
$viaticos=isset($_POST["viaticos"])? limpiarCadena($_POST["viaticos"]):"";



switch ($_GET["op"]){
	case 'guardaryeditar':

		if (empty($idCliente))
		{
			
			
                 $respuesta=$cuestionario->insertar($razonSocial,$nombreContacto,$puestoContacto,$correoEmp,$telefono1,$telefono2,$tipoProducto,$alcance,$noPersonas,$fechaProbable,$requerimientoAdd,$nivelIntegracion,$observaciones,$_POST['normas'],$calle,$noInterior,$noExterior,$colonia,$alcaldia,$estado,$pais,$codigoPostal,$calle2,$noInterior2,$noExterior2,$colonia2,$alcaldia2,$estado2,$pais2,$codigoPostal2,$_POST['alias'],$_POST['estadoAlias'],$_POST['noPersonalAlias'],$RFC,$viaticos);
                
            //evalua 1 o 0
            echo $respuesta;
       
            
            
		}
		else 
		{
			$respuesta=$cuestionario->editar($idCliente,$nombreOrganizacion,$correo,$rfc,$tipoProducto,$RFC);
            echo $respuesta ? "El registro ha sido actualizado" : "El registro no ha sido actualizado";
		}
		
	break;

   

	case 'listar':
		$respuesta=$cuestionario->listar();
 		//Vamos a declarar un array
 		$data= Array();

 		while ($reg=$respuesta->fetch_object()){
 			$data[]=array(
 				"0"=>'<button class="btn btn-warning" onclick="mostrar('.$reg->idCliente.')"><span class="fa fa-eye"></span></button>',
                "1"=>$reg->razonSocial,
 				"2"=>$reg->puestoContacto.' '.$reg->nombreContacto,
 				"3"=>$reg->correo,
 				"4"=>$reg->telefono1,
 				"5"=>$reg->fechaProbable,
                "6"=>$reg->alcance,
 				"7"=>($reg->condicion) ?'<span class="label bg-green">Aprobado</span>':
 				'<span class="label bg-red">Desactivado</span>'
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
		$rspta=$cuestionario->mostrar($idCliente);
 		//Codificar el resultado utilizando json
 		echo json_encode($rspta);
	break;


        
        case 'normas':
		//Obtenemos todos las normas de la tabla normas
		require_once "../modelos/Normas.php";
		$norma = new Norma();
		$rspta = $norma->listar();

		

		//Mostramos la lista de permisos en la vista y si están o no marcados
       $i=1;
		while ($reg = $rspta->fetch_object())
				{
            
					echo '<li class="form-check"><input type="checkbox"  class="form-check-input" name="normas[]" value="'.$reg->idNorma.'" id="inlineCheckbox'.$i.'"><label class="form-check-label" for="inlineCheckbox'.$i.'">'  .$reg->claveISO.'</label></li>';
            $i++;
				}
	break;
        
        
}
?>
