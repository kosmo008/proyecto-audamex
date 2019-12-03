<?php 
require_once "../modelos/Registro.php";
$integral=0;
$registro=new Registro();

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
$correo=isset($_POST["correo"])? limpiarCadena($_POST["correo"]):"";
$telefono1=isset($_POST["telefono1"])? limpiarCadena($_POST["telefono1"]):"";
$telefono2=isset($_POST["telefono2"])? limpiarCadena($_POST["telefono2"]):"";
$tipoProducto=isset($_POST["tipoProducto"])? limpiarCadena($_POST["tipoProducto"]):"";

$alcance=isset($_POST["alcance"])? limpiarCadena($_POST["alcance"]):"";
$procesos=isset($_POST["procesos"])? limpiarCadena($_POST["procesos"]):"";
$noPersonal=isset($_POST["noPersonal"])? limpiarCadena($_POST["noPersonal"]):"";
$multiSitios=isset($_POST["chk2"])? limpiarCadena($_POST["chk2"]):"";

$fechaProbable=isset($_POST["fechaProbable"])? limpiarCadena($_POST["fechaProbable"]):"";
$requerimientoAdd=isset($_POST["requerimientoAdd"])? limpiarCadena($_POST["requerimientoAdd"]):"";
$fechaImplementado=isset($_POST["fechaImplementado"])? limpiarCadena($_POST["fechaImplementado"]):"";
$requerimientoAdd=isset($_POST["requerimientoAdd"])? limpiarCadena($_POST["requerimientoAdd"]):"";
$nivelIntegrado=isset($_POST["porcentaje"])? limpiarCadena($_POST["porcentaje"]):"";

$nivelIntegrado=isset($_POST["porcentaje"])? limpiarCadena($_POST["porcentaje"]):"";

if($nivelIntegrado!=""){
$integral=1;
}else{
$integral=0;
}


$observaciones=isset($_POST["observaciones"])? limpiarCadena($_POST["observaciones"]):"";


$calle2=isset($_POST["calle2"])? limpiarCadena($_POST["calle2"]):"";
$noInterior2=isset($_POST["noInterior2"])? limpiarCadena($_POST["noInterior2"]):"";
$noExterior2=isset($_POST["noExterior2"])? limpiarCadena($_POST["noExterior2"]):"";
$colonia2=isset($_POST["colonia2"])? limpiarCadena($_POST["colonia2"]):"";
$alcaldia2=isset($_POST["alcaldia2"])? limpiarCadena($_POST["alcaldia2"]):"";
$estado2=isset($_POST["estado2"])? limpiarCadena($_POST["estado2"]):"";
$pais2=isset($_POST["pais2"])? limpiarCadena($_POST["pais2"]):"";
$codigoPostal2=isset($_POST["codigoPostal2"])? limpiarCadena($_POST["codigoPostal2"]):"";


//$alias=isset($_POST["alias"])? limpiarCadena($_POST["alias"]):"";
//$estadoAlias=isset($_POST["estadoAlias"])? limpiarCadena($_POST["estadoAlias"]):"";
//$noPersonalAlias=isset($_POST["noPersonalAlias"])? limpiarCadena($_POST["noPersonalAlias"]):"";



$chkDireccion=isset($_POST["chk"])? limpiarCadena($_POST["chk"]):"";





switch ($_GET["op"]){
	case 'guardaryeditar':

		if (empty($idcliente))
		{
			
			
                 $respuesta=$registro->insertar($razonSocial,$nombreContacto,$puestoContacto,$correo,$telefono1,$telefono2,$tipoProducto,$alcance,$procesos,$noPersonal,$multiSitios,$fechaProbable,$requerimientoAdd,$fechaImplementado,$integral,$nivelIntegrado,$observaciones,$_POST['normas'],$calle,$noInterior,$noExterior,$colonia,$alcaldia,$estado,$pais,$codigoPostal,$calle2,$noInterior2,$noExterior2,$colonia2,$alcaldia2,$estado2,$pais2,$codigoPostal2,$_POST['alias'],$_POST['estadoAlias'],$_POST['noPersonalAlias'],$RFC);
                
            //evalua 1 o 0
            echo $respuesta ? "Te has registrado satisfactoriamente" : "Tu registro no se pudo realizar";
            
            
            
            
		}
		else 
		{
			$respuesta=$registro->editar($idCliente,$nombreOrganizacion,$correo,$rfc,$tipoProducto,$RFC);
            echo $respuesta ? "El registro ha sido actualizado" : "El registro no ha sido actualizado";
		}
		
	break;

    case 'listarDetalle':
		//Recibimos el idingreso
		$id=$_GET['id'];

		$rspta = $venta->listarDetalle($id);
		$total=0;
		echo '<thead style="background-color:#A9D0F5">
                                    <th>Opciones</th>
                                    <th>Artículo</th>
                                    <th>Cantidad</th>
                                    <th>Precio Venta</th>
                                    <th>Descuento</th>
                                    <th>Subtotal</th>
                                </thead>';

		while ($reg = $rspta->fetch_object())
				{
					echo '<tr class="filas"><td></td><td>'.$reg->nombre.'</td><td>'.$reg->cantidad.'</td><td>'.$reg->precio_venta.'</td><td>'.$reg->descuento.'</td><td>'.$reg->subtotal.'</td></tr>';
					$total=$total+($reg->precio_venta*$reg->cantidad-$reg->descuento);
				}
		echo '<tfoot>
                                    <th>TOTAL</th>
                                    <th></th>
                                    <th></th>
                                    <th></th>
                                    <th></th>
                                    <th><h4 id="total">S/.'.$total.'</h4><input type="hidden" name="total_venta" id="total_venta"></th> 
                                </tfoot>';
	break;

	case 'listar':
		$respuesta=$registro->listar();
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
		$rspta=$registro->mostrar($idCliente);
 		//Codificar el resultado utilizando json
 		echo json_encode($rspta);
	break;


        
        case 'normas':
		//Obtenemos todos las normas de la tabla normas
		require_once "../modelos/Normas.php";
		$norma = new Norma();
		$rspta = $norma->listar();

		//Obtener los permisos asignados al usuario
		//$id=$_GET['id'];
		//$marcados = $usuario->listarmarcados($id);
		//Declaramos el array para almacenar todos los permisos marcados
		//$valores=array();

		//Almacenar los permisos asignados al usuario en el array
		//while ($per = $marcados->fetch_object())
			//{
			//	array_push($valores, $per->idpermiso);
			//}

		//Mostramos la lista de permisos en la vista y si están o no marcados
       $i=1;
		while ($reg = $rspta->fetch_object())
				{
            
					echo '<li class="form-check"><input type="checkbox"  class="form-check-input" name="normas[]" value="'.$reg->idNormas.'" id="inlineCheckbox'.$i.'"><label class="form-check-label" for="inlineCheckbox'.$i.'">'  .$reg->certificado.'</label></li>';
            $i++;
				}
	break;
        
        
}
?>
