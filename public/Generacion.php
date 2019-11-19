<?php
ob_start();
session_start();
date_default_timezone_set("America/Mexico_City");


require_once dirname(__FILE__).'/PHPWord-master/src/PhpWord/Autoloader.php';
\PhpOffice\PhpWord\Autoloader::register();

use PhpOffice\PhpWord\TemplateProcessor;

$templateWord = new TemplateProcessor('plantillaNormas.docx');
 
$puestoContacto = $_SESSION['puestoContacto'];
$nombreContacto = $_SESSION['nombreContacto'];
$razonSocial = $_SESSION['razonSocial'];
$costoCotizacion = $_SESSION['costoCotizacion'];
$certificado = $_SESSION['certificado'];
$nmx = $_SESSION['nmx'];
$descripcion = $_SESSION['descripcion'];
$certificadoNmx= $certificado."/".$nmx;
$iva = 0.16 * $costoCotizacion;
$total= $costoCotizacion + $iva;
$costoMitad = $total / 2;
$segimientoSemestral = ($total * 0.95)/2;
$segimientoAnual= $total * 0.9;

$costoCotizacionF= number_format($costoCotizacion);
$ivaF= number_format($iva);
$costoMitadF= number_format($costoMitad);
$segimientoSemestralF= number_format($segimientoSemestral);
$segimientoAnualF= number_format($segimientoAnual);
$totalF= number_format($total);
$dia = date("d");
$nombreMes = mes($temp=date("n"));
$year = date("Y");


// --- Asignamos valores a la plantilla
$templateWord->setValue('puesto_Contacto',$puestoContacto);
$templateWord->setValue('nombre_Contacto',$nombreContacto);
$templateWord->setValue('razon_Social',$razonSocial);
$templateWord->setValue('norma_Solicitada',$certificadoNmx);
$templateWord->setValue('cp_empresa',$certificado);
$templateWord->setValue('telefono_empresa',$nmx);

$templateWord->setValue('costo_Normal',$costoCotizacionF);
$templateWord->setValue('costo_Iva',$ivaF);
$templateWord->setValue('costo_Total',$totalF);
$templateWord->setValue('costo_Mitad',$costoMitadF);
$templateWord->setValue('costo_SeguimientoAnual',$segimientoAnualF);
$templateWord->setValue('costo_SeguimientoSemestral',$segimientoSemestralF);
$templateWord->setValue('detalles_Norma',$descripcion);
$templateWord->setValue('dia',$dia);
$templateWord->setValue('nombreMes',$nombreMes);
$templateWord->setValue('year',$year);



// --- Guardamos el documento
$templateWord->saveAs('PRECotizacion.docx');

header("Content-Disposition: attachment; filename=PRECotizacion.docx; charset=iso-8859-1");
echo file_get_contents('PRECotizacion.docx');
   




function mes ($numerico){
    
   switch ($numerico){
       case 1 :
           return "Enero";
           break;
           
       case 2:
           return "Febrero";
           break;
       case 3:
           return "Marzo";
           break;
       case 4:
           return "Abril";
           break;
       case 5:
           return "Mayo";
           break;
       case 6:
           return "Junio";
           break;
       case 7:
           return "Julio";
           break;
       case 8:
           return "Agosto";
           break;
       case 9:
           return "Septiembre";
           break;
       case 10:
           return "Octubre";
           break;
       case 11:
           return "Noviembre";
           break;
       case 12:
           return "Diciembre";
           break;
           
   } 
    
    
}



?>