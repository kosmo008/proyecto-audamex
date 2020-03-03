<?php
require_once "../modelos/Sitio.php";
session_start();
$sitio= new Sitio();

$opcion=isset($_POST["opcion"])?limpiarcadena($_POST['opcion']):"";
$idCliente=isset($_POST["idCliente"])?limpiarcadena($_POST['idCliente']):"";
$idSolicitud=isset($_POST["idSolicitud"])?limpiarcadena($_POST['idSolicitud']):"";

$pais=isset($_POST["pais"])? limpiarcadena($_POST["pais"]):"";
$estado=isset($_POST["estado"])? limpiarcadena($_POST["estado"]):"";
$alcaldia=isset($_POST["alcaldia"])? limpiarcadena($_POST["alcaldia"]):"";
$colonia=isset($_POST["colonia"])? limpiarcadena($_POST["colonia"]):"";
$numeroInterior=isset($_POST["numeroInterior"])? limpiarcadena($_POST["numeroInterior"]):"";
$numeroExterior=isset($_POST["numeroExterior"])? limpiarcadena($_POST["numeroExterior"]):"";
$CP=isset($_POST["CP"])? limpiarcadena($_POST["CP"]):"";
$calle=isset($_POST["calle"])? limpiarcadena($_POST["calle"]):"";

$razonSocial=isset($_POST["razonSocial"])? limpiarcadena($_POST["razonSocial"]):"";
$RFC=isset($_POST["RFC"])? limpiarcadena($_POST["RFC"]):"";
$correo=isset($_POST["correo"])? limpiarcadena($_POST["correo"]):"";

$sitios=isset($_POST['sitios'])?$_POST['sitios']:"";


switch($opcion){
	
	case 'sitiovsSolicitud':
		for($i=0;$i<count($sitios);$i++){
			echo "sitio:".$sitios[$i]." Solicitud:".$idSolicitud."\n";
			$rspta=$sitio->sitiovsSolicitud($sitio[$i],$idSolicitud);
			
		}
	break;
	
	case 'listarSelect':
		$rspta=$sitio->listarSelect($idCliente);
		$aux="";
		while ($reg = $rspta->fetch_object()){
					$aux= $aux ."<option value='" . $reg->idSitio . "'>". $reg->descripcion . "</option>";
			}
		echo $aux;
	break;
	
	case 'listar':
		$rspta=$sitio->listar($idCliente);
		echo $rspta;
	break;
	
	case 'listarCK':
		$rspta=$sitio->listar($idCliente);
		$aux="";
		while ($reg = $rspta->fetch_object()){
			 $aux =$aux."<tr><td><input type='checkbox' name='sitios[]' value='". $reg->idSitio ."' clas='radiobtn'> Numero: ". $reg->noSitio . " (" . $reg->descripcion .") " . $reg->pais . ", " . $reg->estado . ", " . $reg->estado . ", " . $reg->municipio . ", " . $reg->colonia . ", ". $reg->numExt . ", " . $reg->numInt . "</td></tr>";
			}
		echo $aux;
	break;
	
	case 'mostrar':
			$rspta=$sitio->mostrar($idCliente);
			echo json_encode($rspta);
	break;
	
	case 'mostrarFiscal':
			$rspta=$sitio->mostrarFiscal($idCliente);
			isset($_SESSION['fiscal_val'])?$_SESSION['fiscal_val']=0:$_SESSION['fiscal_val']=0;
			while($reg = $rspta->fetch_object()){
				isset($_SESSION['fiscal_val'])?$_SESSION['fiscal_val']=$reg->condicion:$_SESSION['fiscal_val']=$reg->condicion;
				echo "->".$reg->condicion;
			}
			echo "->".$_SESSION['fiscal_val'];
	break;
	
	case 'actualizar':
		$flag=true;
		
		if(strpos($numeroInterior,'.')||strpos($numeroInterior,'+')||strpos($numeroInterior,'-')){
			$flag=false;
			echo "El numero interior es incorrecto\n";
		}else if($numeroExterior<1){
			$flag=false;
			echo "El numero interior es incorrecto\n";
		}else if(strpos($numeroExterior,'.')||strpos($numeroExterior,'+')||strpos($numeroExterior,'-')){
			$flag=false;
			echo "El numero interior es incorrecto\n";
		} else if(strlen($CP)!=5){
			$flag=false;
			echo "CP invalido\n";
		}
		
		
		if($flag){
			$rspta=$sitio->actualizar($idCliente,$idSolicitud,$razonSocial,$RFC,$correo,$pais,$estado,$alcaldia,$colonia,$numeroInterior,$numeroExterior,$CP,$calle);
			echo $rspta ? true : false ;
		}	
	break;
	
	case 'verificar';
		$rspta=$sitio->verificar($idCliente);
		echo json_encode($rspta);
	break;
	


}
?>