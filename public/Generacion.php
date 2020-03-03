<?php
ob_start();
session_start();
date_default_timezone_set("America/Mexico_City");


require_once dirname(__FILE__).'/PHPWord-master/src/PhpWord/Autoloader.php';
\PhpOffice\PhpWord\Autoloader::register();

use PhpOffice\PhpWord\TemplateProcessor;

$templateWord = new TemplateProcessor('plantillaNormas.docx');
 

 
$costoSegimiento = $_SESSION['costoSegimiento'];
$tipoSegimiento = $_SESSION['tipoSegimiento'];
$puestoContacto = $_SESSION['puestoContacto'];
$nombreContacto = $_SESSION['nombreContacto'];
$razonSocial = $_SESSION['razonSocial'];
$costoCotizacion = $_SESSION['costoFinal']; 
//$certificado = $_SESSION['claveISO'];
//$nmx = $_SESSION['claveMex'];
//$descripcion = $_SESSION['descripcion'];
$normasIso = $_SESSION['normas'];
$descripcionNormas = $_SESSION['descripcionNormas'];
$direccion = $_SESSION['direccion'];
$alcance = $_SESSION['alcance'];
$noTotalEmpleados = $_SESSION['noTotalEmpleados'];
$viaticos = $_SESSION['viaticos'];

$costoSegimientoP=0;
$plan="";
$numeroPlan=0;
$aux=0;

if($tipoSegimiento==0){
    $plan="Semestral";
    $numeroPlan=6;
    $aux=0;
}else{
    $plan="Anual";
    $numeroPlan=12;
    $aux=1;
}



$iva = 0.16 * $costoCotizacion;
$total= $costoCotizacion + $iva;
$costoMitad = $total / 2;



if($aux == 0){ //0 = semestral 1= anual
            
$costoSegimientoP = ($costoCotizacion - ($costoCotizacion*0.05))/2;
            
}else{
$costoSegimientoP = $costoCotizacion - ($costoCotizacion*0.10);
}


$costoCotizacionF= number_format($costoCotizacion);
$ivaF= number_format($iva);
$costoMitadF= number_format($costoMitad);
$costoSegimientoF= number_format($costoSegimientoP);

$totalF= number_format($total);
$dia = date("d");
$nombreMes = mes($temp=date("n"));
$year = date("Y");









// --- Asignamos valores a la plantilla
$templateWord->setValue('puesto_Contacto',$puestoContacto);
$templateWord->setValue('nombre_Contacto',$nombreContacto);
$templateWord->setValue('razon_Social',$razonSocial);
$templateWord->setValue('norma_descripcion',$descripcionNormas);
$templateWord->setValue('norma_Solicitada',$normasIso);
$templateWord->setValue('direccion',$direccion);
$templateWord->setValue('alcance',$alcance);
$templateWord->setValue('viaticos',$viaticos);
$templateWord->setValue('personas',$noTotalEmpleados);




$templateWord->setValue('costo_Normal',$costoCotizacionF);
$templateWord->setValue('costo_Iva',$ivaF);
$templateWord->setValue('costo_Total',$totalF);
$templateWord->setValue('costo_Mitad',$costoMitadF);
$templateWord->setValue('costo_Seguimiento',$costoSegimientoF);


$templateWord->setValue('dia',$dia);
$templateWord->setValue('nombreMes',$nombreMes);
$templateWord->setValue('year',$year);
$templateWord->setValue('plan',$plan);
$templateWord->setValue('numeroPlan',$numeroPlan);





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