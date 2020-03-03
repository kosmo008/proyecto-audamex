<?php
require_once "../modelos/DocumentosNormativoLegales.php";
$documentosNormativoLegales= new DocumentosNormativoLegales();

$opcion=isset($_POST['opcion'])?limpiarcadena($_POST['opcion']):"";
$idCliente=isset($_POST['idCliente'])?limpiarcadena($_POST['idCliente']):"";
$actaConstitutiva= isset($_POST['actaConstitutiva']) ? limpiarcadena($_POST['actaConstitutiva']):"";
$txtActa_constitutiva=isset($_POST['txtActa_constitutiva'])?limpiarcadena($_POST['txtActa_constitutiva']):"";

$constaciaSituacionFiscal=isset($_POST['constaciaSituacionFiscal'])?limpiarcadena($_POST['constaciaSituacionFiscal']):"";	
$txtconstaciaSituacionFiscal=isset($_POST['txtconstaciaSituacionFiscal'])?limpiarcadena($_POST['txtconstaciaSituacionFiscal']):"";	

$Evidencia = isset($_POST['Evidencia'])?limpiarcadena($_POST['Evidencia']):"";
$txtEvidencia= isset($_POST['txtEvidencia'])?limpiarcadena($_POST['txtEvidencia']):"";

$lista= isset($_POST['lista'])?limpiarcadena($_POST['lista']):"";
$txtlista= isset($_POST['txtlista'])?limpiarcadena($_POST['txtlista']):"";

$poderesRepresentanteLegal= isset($_POST['poderesRepresentanteLegal'])?limpiarcadena($_POST['poderesRepresentanteLegal']):"";
$txtpoderesRepresentanteLegal= isset($_POST['txtpoderesRepresentanteLegal'])?limpiarcadena($_POST['txtpoderesRepresentanteLegal']):"";

$identificacionRepresentanteLegal= isset($_POST['identificacionRepresentanteLegal'])?limpiarcadena($_POST['identificacionRepresentanteLegal']):"";
$txtidentificacionRepresentanteLegal= isset($_POST['txtidentificacionRepresentanteLegal'])?limpiarcadena($_POST['txtidentificacionRepresentanteLegal']):"";

$comprobanteDomicilio= isset($_POST['comprobanteDomicilio'])?limpiarcadena($_POST['comprobanteDomicilio']):"";
$txtcomprobanteDomicilio= isset($_POST['txtcomprobanteDomicilio'])?limpiarcadena($_POST['txtcomprobanteDomicilio']):"";

	switch($opcion){
		
		case 'guardar':
		if(!file_exists($_FILES['constaciaSituacionFiscal']['tmp_name']) || !is_uploaded_file($_FILES['constaciaSituacionFiscal']['tmp_name']) ){
			$constaciaSituacionFiscal=$txtconstaciaSituacionFiscal;
		}else{
			
			$ext=explode(".",$_FILES["constaciaSituacionFiscal"]["name"]);
			if($_FILES["constaciaSituacionFiscal"]["type"]=="application/pdf"){
				
				$constaciaSituacionFiscal=round(microtime(true)).'.'.end($ext);
				
				move_uploaded_file($_FILES["constaciaSituacionFiscal"]["tmp_name"],"../doc/dccsnl/".$constaciaSituacionFiscal);
			}
		$rspta=$documentosNormativoLegales->guardar($constaciaSituacionFiscal,$idCliente,'Constacia Situacion Fiscal','1',1);
		}
		sleep(1);
		
		if(!file_exists($_FILES['actaConstitutiva']['tmp_name']) || !is_uploaded_file($_FILES['actaConstitutiva']['tmp_name']) ){
			$actaConstitutiva=$txtActa_constitutiva;
		}else{
			$ext=explode(".",$_FILES["actaConstitutiva"]["name"]);
			if($_FILES["actaConstitutiva"]["type"]=="application/pdf"){
				$actaConstitutiva=round(microtime(true)).'.'.end($ext);
				move_uploaded_file($_FILES["actaConstitutiva"]["tmp_name"],"../doc/dccsnl/".$actaConstitutiva);
			}
		$rspta=$documentosNormativoLegales->guardar($actaConstitutiva,$idCliente,'Acta Constitutiva','2',1);
		}
		sleep(1);
		
		if(!file_exists($_FILES['comprobanteDomicilio']['tmp_name']) || !is_uploaded_file($_FILES['comprobanteDomicilio']['tmp_name']) ){
			$comprobanteDomicilio=$txtcomprobanteDomicilio;
		}else{
			$ext=explode(".",$_FILES["comprobanteDomicilio"]["name"]);
			if($_FILES["comprobanteDomicilio"]["type"]=="application/pdf"){
				$comprobanteDomicilio=round(microtime(true)).'.'.end($ext);
				move_uploaded_file($_FILES["comprobanteDomicilio"]["tmp_name"],"../doc/dccsnl/".$comprobanteDomicilio);
			}
		$rspta=$documentosNormativoLegales->guardar($comprobanteDomicilio,$idCliente,'Comprobante de domicilio','3',1);
		}
		sleep(1);
		
		if(!file_exists($_FILES['identificacionRepresentanteLegal']['tmp_name']) || !is_uploaded_file($_FILES['identificacionRepresentanteLegal']['tmp_name']) ){
			$identificacionRepresentanteLegal=$txtidentificacionRepresentanteLegal;
		}else{
			$ext=explode(".",$_FILES["identificacionRepresentanteLegal"]["name"]);
			if($_FILES["identificacionRepresentanteLegal"]["type"]=="application/pdf"){
				$identificacionRepresentanteLegal=round(microtime(true)).'.'.end($ext);
				move_uploaded_file($_FILES["identificacionRepresentanteLegal"]["tmp_name"],"../doc/dccsnl/".$identificacionRepresentanteLegal);
			}
		$rspta=$documentosNormativoLegales->guardar($identificacionRepresentanteLegal,$idCliente,'Identificacion de RepresentanteLegal','5',1);
		}
		sleep(1);
		
		if(!file_exists($_FILES['poderesRepresentanteLegal']['tmp_name']) || !is_uploaded_file($_FILES['poderesRepresentanteLegal']['tmp_name']) ){
			$poderesRepresentanteLegal=$txtpoderesRepresentanteLegal;
		}else{
			$ext=explode(".",$_FILES["poderesRepresentanteLegal"]["name"]);
			if($_FILES["poderesRepresentanteLegal"]["type"]=="application/pdf"){
				$poderesRepresentanteLegal=round(microtime(true)).'.'.end($ext);
				move_uploaded_file($_FILES["poderesRepresentanteLegal"]["tmp_name"],"../doc/dccsnl/".$poderesRepresentanteLegal);
			}
		$rspta=$documentosNormativoLegales->guardar($poderesRepresentanteLegal,$idCliente,'Poderes del Representante Legal','5',1);
		}
		sleep(1);
		
		if(!file_exists($_FILES['Evidencia']['tmp_name']) || !is_uploaded_file($_FILES['Evidencia']['tmp_name']) ){
			$Evidencia=$txtEvidencia;
		}else{
			$ext=explode(".",$_FILES["Evidencia"]["name"]);
			if($_FILES["Evidencia"]["type"]=="application/pdf"){
				$Evidencia=round(microtime(true)).'.'.end($ext);
				move_uploaded_file($_FILES["Evidencia"]["tmp_name"],"../doc/dccsnl/".$Evidencia);
			}
		$rspta=$documentosNormativoLegales->guardar($Evidencia,$idCliente,'Evidencia de ultima auditoria interna','6',1);
		}
		sleep(1);
		
		if(!file_exists($_FILES['lista']['tmp_name']) || !is_uploaded_file($_FILES['lista']['tmp_name']) ){
			$lista=$txtlista;
		}else{
			$ext=explode(".",$_FILES["lista"]["name"]);
			if($_FILES["lista"]["type"]=="application/pdf"){
				$lista=round(microtime(true)).'.'.end($ext);
				move_uploaded_file($_FILES["lista"]["tmp_name"],"../doc/dccsnl/".$lista);
			}
		$rspta=$documentosNormativoLegales->guardar($lista,$idCliente,'Lista de documento internos','7',1);
		}
		echo "Documentos guardados";
		break;
		
	}
?>