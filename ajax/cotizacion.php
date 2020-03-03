<?php 
require_once "../modelos/Cotizacion.php";
 

$integral=0;
$cotizacion=new Cotizacion();

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
$observaciones=isset($_POST["observaciones"])? limpiarCadena($_POST["observaciones"]):"";
$calle2=isset($_POST["calle2"])? limpiarCadena($_POST["calle2"]):"";
$noInterior2=isset($_POST["noInterior2"])? limpiarCadena($_POST["noInterior2"]):"";
$noExterior2=isset($_POST["noExterior2"])? limpiarCadena($_POST["noExterior2"]):"";
$colonia2=isset($_POST["colonia2"])? limpiarCadena($_POST["colonia2"]):"";
$alcaldia2=isset($_POST["alcaldia2"])? limpiarCadena($_POST["alcaldia2"]):"";
$estado2=isset($_POST["estado2"])? limpiarCadena($_POST["estado2"]):"";
$pais2=isset($_POST["pais2"])? limpiarCadena($_POST["pais2"]):"";
$codigoPostal2=isset($_POST["codigoPostal2"])? limpiarCadena($_POST["codigoPostal2"]):"";
$costoFinal=isset($_POST["costoFinal"])? limpiarCadena($_POST["costoFinal"]):"";
$costoNormal=isset($_POST["costoNormal"])? limpiarCadena($_POST["costoNormal"]):"";
$costoAumento=isset($_POST["costoAumento"])? limpiarCadena($_POST["costoAumento"]):"";
$costoDescuento=isset($_POST["costoDescuento"])? limpiarCadena($_POST["costoDescuento"]):"";
$segimiento=isset($_POST["segimiento"])? limpiarCadena($_POST["segimiento"]):"";
$viaticos=isset($_POST["viaticos"])? limpiarCadena($_POST["viaticos"]):"";



switch ($_GET["op"])
{
    
        
    case 'editarCostoFinal':
        
			$respuesta=$cotizacion->editarCostoFinal($costoFinal,$costoNormal,$costoAumento,$costoDescuento,$idCliente,$segimiento);
            echo $respuesta ? "Cotazación final Actualizada" : "No se pudo guardar el costo final";
       // header ('Location: vistas/login.html');
        
	break;
        
    case 'aprobar': 
            $id=$_GET['id'];
			$respuesta=$cotizacion->aprobar($id);
            
           
        
            echo $respuesta ? "Se aprobó la solicitud" : "No se pudo Aprobó la solicitud";
        
        
       // header ('Location: vistas/login.html');
        
	break;
        
    case 'baja': 
            $id=$_GET['id'];
			$respuesta=$cotizacion->baja($id);
            echo $respuesta ? "Solicitud se dio de baja correctamente" : "No se pudo dar de baja la solicitud";
       // header ('Location: vistas/login.html');
        
	break;
  

    case 'listarDetalle':
		//Recibimos el idingreso
		$id=$_GET['id'];

		$rspta = $cotizacion->listarDetalle($id);
        
       
		$total=0;
		echo '<thead style="background-color:#A9D0F5">
                                    <th>Calle</th>
                                    <th>Número Exterior</th>
                                    <th>Número Interior</th>
                                    <th>Colonia</th>
                                    <th>Alcaldia</th>
                                    <th>Estado</th>
                                    <th>Pais</th>
                                    <th>Código Postal</th>
                                </thead>';

		while ($reg = $rspta->fetch_object())
				{
					echo '<tr class="filas"><td>'.$reg->calle.'</td><td>'.$reg->numExt.'</td><td>'.$reg->numInt.'</td><td>'.$reg->colonia.'</td><td>'.$reg->municipio.'</td><td>'.$reg->estado.'</td><td>'.$reg->pais.'</td><td>'.$reg->cp.'</td></tr>';
					//$total=$total+($reg->precio_compra*$reg->cantidad);
				}
		
	break;
         
    case 'listarNormasS':
		//Recibimos el idingreso
		$id=$_GET['id'];

		$rspta = $cotizacion->listarNormasS($id);
        
      
		$total=0;
		echo '<thead style="background-color:#A9D0F5">
                                    <th>Código</th>
                                    <th>Norma</th>
                                    
                                </thead>';

		while ($reg = $rspta->fetch_object())
				{
					echo '<tr class="filas"><td>'.$reg->claveISO.'</td><td>'.$reg->descripcion.'</td></tr>';
					//$total=$total+($reg->precio_compra*$reg->cantidad);
				}
		
	break;
    
    case 'listarSitios':
		
		$id=$_GET['id'];
		$rspta = $cotizacion->listarSitios($id);     
        
		$total=0;
		echo '<thead style="background-color:#A9D0F5">
                                    <th>Nombre del Sitio</th>
                                    <th>Estado del Sitio</th>
                                    <th>Número de Personas por Sitio</th>
                                    
                                </thead>';

		while ($reg = $rspta->fetch_object())
				{
            	echo '<tr class="filas"><td>'.$reg->alias.'</td><td>'.$reg->estado.'</td><td id="noPersoalF">'.$reg->noEmpleados.'</td> </tr> ';          
			    }
        
        
		
	break;
        
    case 'listarCostos':
		//Recibimos el idingreso
        $id=$_GET['id'];

		$rspta = $cotizacion->listarCostos($id); 
        
       
		$total=0;
		echo '<thead style="background-color:#A9D0F5">
                                     <th>No. Dias de acuerdo a Tabla por Norma</th>
                                     <th>Costo con Descuento </th>
                                     <th>Costo Normal</th>
                                     <th>Costo con Aumento</th>
                                     

                                    
              </thead>';

		while ($reg = $rspta->fetch_object())
				{
            
                $totalPersonal = $reg->noTotalEmpleados;
                
                $totalNormas = $reg->normas;
            
                
                $factor=0;
                define("costoOperacionDia",16875.00); 
                $diasTabla=0;
                
                switch ($totalNormas)
                {
                        case '1':
                        $factor =1;
                        break; 
                        case '2':
                        $factor =0.7;
                        break; 
                        case '3':
                        $factor =0.6;
                        break; 
                        case '4':
                        $factor =0.5;
                        break; 
                        case '5':
                        $factor =0.4;
                        break; 
                        case '6':
                        $factor =0.3;
                        break; 
                        case '7':
                        $factor =0.2;
                        break; 
                        case '8':
                        $factor =0.1;
                        break;
                        //case '8':
                        //$factor =1;
                       // break;
                }
            
            if($totalPersonal >= 1 && $totalPersonal <= 10){
               $diasTabla=3; 
            }elseif($totalPersonal >= 11 && $totalPersonal <= 25){
               $diasTabla=3;
            }elseif($totalPersonal >= 26 && $totalPersonal <= 45){
               $diasTabla=4;
            }elseif($totalPersonal >= 46 && $totalPersonal <= 65){
               $diasTabla=5;
            }elseif($totalPersonal >= 66 && $totalPersonal <= 85){
               $diasTabla=6;
            }elseif($totalPersonal >= 86 && $totalPersonal <= 125){
               $diasTabla=7;
            }elseif($totalPersonal >= 126 && $totalPersonal <= 175){
               $diasTabla=8;
            }elseif($totalPersonal >= 176 && $totalPersonal <= 275){
               $diasTabla=9;
            }elseif($totalPersonal >= 276 && $totalPersonal <= 425){
               $diasTabla=10;
            }elseif($totalPersonal >= 426 && $totalPersonal <= 625){
               $diasTabla=11;
            }elseif($totalPersonal >= 626 && $totalPersonal <= 875){
               $diasTabla=12;
            }elseif($totalPersonal >= 876 && $totalPersonal <= 1175){
               $diasTabla=14;
            }elseif($totalPersonal >= 1176 && $totalPersonal <= 1550){
               $diasTabla=15;
            }elseif($totalPersonal >= 1551 && $totalPersonal <= 2025){
               $diasTabla=16;
            }elseif($totalPersonal >= 2026 && $totalPersonal <= 2675){
               $diasTabla=17;
            }elseif($totalPersonal >= 2676 && $totalPersonal <= 3450){
               $diasTabla=18;
            }elseif($totalPersonal >= 3451 && $totalPersonal <= 4350){
               $diasTabla=19;
            }elseif($totalPersonal >= 4351 && $totalPersonal <= 5450){
               $diasTabla=20;
            }elseif($totalPersonal >= 5451 && $totalPersonal <= 6800){
               $diasTabla=21;
            }elseif($totalPersonal >= 6801 && $totalPersonal <= 8500){
               $diasTabla=22;
            }elseif($totalPersonal >= 8501 && $totalPersonal <= 10700){
               $diasTabla=23;
            }
            
            $diasXnormas= $diasTabla * $totalNormas;
            $diasExtra=0;
            
            $factorDias=($diasXnormas + $diasExtra) * 0.66;
            
            $costoNormal = ($factor * $factorDias * costoOperacionDia);
            $costoDescuento = ($costoNormal * 0.9);
            $costoAumento = ($costoNormal * 1.2);
            
            
            echo '<tr class="filas "><td>'.$diasTabla.'</td><td id="costoDescuento">$'.$costoDescuento.'</td><td id="costoNormal" >$'.$costoNormal.'</td><td id="costoAumento">$'.$costoAumento.'</td> </tr>
            
            <script type="text/javascript"> 
            $("#diasTabla").val('.$diasTabla.'); 
            $("#costoDescuento").val('.$costoDescuento.'); 
            $("#costoNormal").val('.$costoNormal.'); 
            $("#costoAumento").val('.$costoAumento.'); 
           
            
            </script>
            
            ';
					//$total=$total+($reg->precio_compra*$reg->cantidad);
          }
		
	break;
        
        
     case 'listarCostoFinal':
		
		$id=$_GET['id'];
		$rspta = $cotizacion->listarCostosFinal($id);     
        

		while ($reg = $rspta->fetch_object())
				{
            	$aux=''.$reg->costoFinal.' ';          
			    }
        
        echo $aux;
		
	break;    

	case 'listar':
		$respuesta=$cotizacion->listar();
 		//Vamos a declarar un array
 		$data= Array();

 		while ($reg=$respuesta->fetch_object()){
 			$data[]=array(
 				"0"=>'<button class="btn btn-warning" onclick="mostrar('.$reg->idCliente.')"><span class="fa fa-eye"></span></button>',
                "1"=>$reg->razonSocial,
 				"2"=>$reg->puestoContacto.' '.$reg->nombreContacto,
 				"3"=>$reg->correoContacto,
 				"4"=>$reg->telEmp,
 				"5"=>$reg->fechaProbAud,                
 				"6"=>($reg->condicion) ? '<span class="label bg-green">Revisado</span>':
 				'<span class="label btn-warning">Pendiente</span>',
                "7"=>'<button class="btn btn-success" onclick="aprobar('.$reg->idCliente.')"><span class="fa fa-check"></span></button> <button class="btn btn-danger" onclick="baja('.$reg->idCliente.')"><span class="fa fa-trash-alt"></span></button>'
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