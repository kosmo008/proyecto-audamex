<?php 
require_once "../modelos/Form_step.php";
$form_Step=new Form_step();


$idCliente=1;
$idDireccion=isset($_POST["idDireccion"])? limpiarcadena($_POST["idDireccion"]):"";
$razonSocial=isset($_POST["razonSocial"])? limpiarcadena($_POST["razonSocial"]):"";
$correo=isset($_POST["correo"])? limpiarcadena($_POST["correo"]):"";
$RFC=isset($_POST["RFC"])? limpiarcadena($_POST["RFC"]):"";
$pais=isset($_POST["pais"])? limpiarcadena($_POST["pais"]):"";
$estado=isset($_POST["estado"])? limpiarcadena($_POST["estado"]):"";
$alcaldia=isset($_POST["alcaldia"])? limpiarcadena($_POST["alcaldia"]):"";
$colonia=isset($_POST["colonia"])? limpiarcadena($_POST["colonia"]):"";
$numeroInterior=isset($_POST["numeroInterior"])? limpiarcadena($_POST["numeroInterior"]):"";
$numeroExterior=isset($_POST["numeroExterior"])? limpiarcadena($_POST["numeroExterior"]):"";
$codigoPostal=isset($_POST["codigoPostal"])? limpiarcadena($_POST["codigoPostal"]):"";
$calle=isset($_POST["calle"])? limpiarcadena($_POST["calle"]):"";


switch ($_GET["op"]){
	
	
	case "mostrar":
			$rspta=$form_Step->mostrar($idCliente);
			echo json_encode($rspta);
	break;
	
	case "actualizarFiscales":
			$rspta=$form_Step->actualizarFiscales($idCliente,$idDireccion,$razonSocial,$RFC,$pais,$estado,$alcaldia,$colonia,$numeroInterior,$numeroExterior,$codigoPostal,$calle,$correo);
			echo $rspta ? "Guardada correctamente" : "No se puede guardar";
	break;
	
	case "progresof5":
			$rspta=$form_Step->progresof5();
			echo $rspta ? true : false ;
	break;
		
}

?>



























