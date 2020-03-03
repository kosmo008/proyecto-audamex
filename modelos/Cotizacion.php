<?php 
ob_start();
session_start();
//Incluímos inicialmente la conexión a la base de datos

require "../config/Conexion.php";


Class Cotizacion
{ 
	//Implementamos nuestro constructor
	public function __construct()
	{

	}

	//Implementamos un método para insertar registros
	public function insertar($razonSocial,$nombreContacto,$puestoContacto,$correo,$telefono1,$telefono2,$tipoProducto,$alcance,$procesos,$noPersonal,$multiSitios,$fechaProbable,$requerimientoAdd,$fechaImplementado,$integral,$nivelIntegrado,$observaciones,$normas,$calle,$noInterior,$noExterior,$colonia,$alcaldia,$estado,$pais,$codigoPostal,$calle2,$noInterior2,$noExterior2,$colonia2,$alcaldia2,$estado2,$pais2,$codigoPostal2,$alias,$estadoAlias,$noPersonalAlias)
	{
		$sql="INSERT INTO cliente (razonSocial, nombreContacto, puestoContacto, correo, telefono1, telefono2, tipoProducto, alcance, procesos, noPersonal, multiSitio, fechaProbable, requerimientoAdd, fechaImplementado, integral, nivelIntegrado, observaciones, condicion) VALUES ('$razonSocial','$nombreContacto','$puestoContacto','$correo','$telefono1','$telefono2','$tipoProducto','$alcance','$procesos','$noPersonal','$multiSitios','$fechaProbable','$requerimientoAdd','$fechaImplementado','1','$nivelIntegrado','$observaciones','1')";
		//return ejecutarConsulta($sql);
        
        $usuarioNew=ejecutarConsulta_retornarID($sql);
        
        $num_elementos=0;
        $num_elementosA=0;
        
        $sw=true;
        
        while($num_elementos<count($normas))
        {
            
            $sql_detalle= "INSERT INTO normasSolicitadas (idCliente,idNorma) VALUES ('$usuarioNew','$normas[$num_elementos]') "; 
            ejecutarConsulta($sql_detalle) or $sw=false;
            $num_elementos=$num_elementos+1;
            
            
        }  
        
        while($num_elementosA<count($alias))
        {
            
            $sql_detalleA= "INSERT INTO sitios (sitio,estadoSitio,noPersonalAlias,cliente_idCliente,condicion) VALUES ('$alias[$num_elementosA]','$estadoAlias[$num_elementosA]','$noPersonalAlias[$num_elementosA]','$usuarioNew','1') "; 
            ejecutarConsulta($sql_detalleA) or $sw=false;
            $num_elementosA=$num_elementosA+1;
            
            
        }
        
        if ($calle2!="" || $colonia2!="" || $alcaldia2!="" || $estado2!="" || $pais2!="" || $codigoPostal2!="" )
        {
            $sql_direccion="INSERT INTO direccion (calle,noInterior,noExterior, colonia,alcaldia,estado,pais,cp,cliente_idCliente,condicion) VALUES ('$calle','$noInterior','$noExterior','$colonia','$alcaldia','$estado','$pais','$codigoPostal','$usuarioNew','1')";
        
            ejecutarConsulta($sql_direccion) or $sw=false; 
            
            $sql_direccion2="INSERT INTO direccion (calle,noInterior,noExterior, colonia,alcaldia,estado,pais,cp,cliente_idCliente,condicion) VALUES ('$calle2','$noInterior2','$noExterior2','$colonia2','$alcaldia2','$estado2','$pais2','$codigoPostal2','$usuarioNew','1')";
        
         
            ejecutarConsulta($sql_direccion2) or $sw=false; 
            
            
            
        }
        else
        {
           $sql_direccion="INSERT INTO direccion (calle,noInterior,noExterior, colonia,alcaldia,estado,pais,cp,cliente_idCliente,condicion) VALUES ('$calle','$noInterior','$noExterior','$colonia','$alcaldia','$estado','$pais','$codigoPostal','$usuarioNew','1')";
        
            ejecutarConsulta($sql_direccion) or $sw=false;  
        }
        
        
        return $sw;
        
	}
    
	//Implementamos un método para editar registros
	public function editarCostoFinal($costoFinal,$costoNormal,$costoAumento,$costoDescuento,$idCliente,$segimiento) 
	{
        $direccion ="";
        $normas="";
        $descripcionNormas="";
        
        $iva = 0.16 * $costoFinal;
        $total = $iva + $costoFinal;
        
       
        if($segimiento == 0){ //0 = semestral 1= anual
            
            $costoSegimiento = ($costoFinal - ($costoFinal*0.05))/2;
            
        }else{
            $costoSegimiento = $costoFinal - ($costoFinal*0.10);
        }
        
        
        
		$sql="UPDATE cotizacion SET costoFinal='$costoFinal', costoNormal='$costoNormal', costoDesc='$costoDescuento',costoAumento='$costoAumento' , condicion=1, iva='$iva', total = '$total', tipoSegimiento = '$segimiento', costoSeg='$costoSegimiento'  WHERE cliente_idCliente='$idCliente'";
        
        $sqlDatosContacto="SELECT Co.puestoContacto, Co.nombreContacto, C.razonSocial, C.noTotalEmpleados FROM cotizacion Co, cliente C WHERE 1 =1 AND C.idCliente = Co.cliente_idCliente AND C.idCliente ='$idCliente'";
        
        $temp=ejecutarConsulta($sqlDatosContacto);
        
        
        $fetch=$temp->fetch_object();
		
        if (isset($fetch)) 
	    {
	        //Declaramos las variables de sesión
	        $_SESSION['puestoContacto']=$fetch->puestoContacto;
	        $_SESSION['nombreContacto']=$fetch->nombreContacto;
	        $_SESSION['razonSocial']=$fetch->razonSocial;
	        $_SESSION['noTotalEmpleados']=$fetch->noTotalEmpleados;
	                   
	    }
        
        $sqlDatosNormas="SELECT N.claveISO,N.descripcion, S.alcance FROM norma N, solicitud S, solicitudvsservicios SS WHERE 1=1 AND SS.norma_idNorma = N.idNorma AND SS.solicitud_idSolicitud = S.idSolicitud AND S.cliente_idCliente ='$idCliente'";
        
        $temp=ejecutarConsulta($sqlDatosNormas);
        
        $contador=0;
        
        
        while ($obj = mysqli_fetch_object($temp)){
            
            if(count($temp)==$contador+1){
                
                $normas=$obj->claveISO." ".$normas;
                $descripcionNormas = $obj->descripcion." ".$descripcionNormas;  
        
            }else{
                $normas=$obj->claveISO.", ".$normas;
                $descripcionNormas = $obj->descripcion.", ".$descripcionNormas; 
            }
            
            
         
	     
            
            $_SESSION['alcance']=$obj->alcance; 
            $contador++;
        
         
      }
        
  
        $_SESSION['normas']=$normas;
        $_SESSION['descripcionNormas']=$descripcionNormas;
       
       
               
        // direcciones
        $sqlDatosDireccion="SELECT alias, calle, pais, estado, municipio,cp, colonia,numExt,numInt FROM sitio WHERE cliente_idCliente =  '$idCliente'";
        
        $temp=ejecutarConsulta($sqlDatosDireccion);
        
        
       while ($obj = mysqli_fetch_object($temp)){
           
         $direccion = $direccion." ".$obj->alias." Calle".$obj->calle." ".$obj->numExt." ".$obj->numInt." ".$obj->colonia." ".$obj->municipio." ".$obj->estado." ".$obj->cp." ".$obj->pais." ,";
	 
      }
              
              
        $_SESSION['direccion']=$direccion;
        
        $sqlViaticos = "SELECT viaticos FROM cotizacion WHERE cliente_idCliente = '$idCliente' ";
         $temp=ejecutarConsulta($sqlViaticos);
        
        while ($obj = mysqli_fetch_object($temp)){
             $_SESSION['viaticos']=$obj->viaticos;
         }
   
        
                
        $_SESSION['costoFinal']=$costoFinal;
        $_SESSION['tipoSegimiento']=$segimiento;
        $_SESSION['costoSegimiento']=$costoSegimiento;
        
      
        
		return ejecutarConsulta($sql);
        
	}
    
    
    public function aprobar($idCliente) 
	{
        
		$sql="UPDATE cliente SET condicion='2' WHERE idCliente='$idCliente'";
        
       
        
		return ejecutarConsulta($sql);
        
	}
     public function baja($idCliente) 
	{
        
		$sql="UPDATE cliente SET condicion='0' WHERE idCliente='$idCliente'";
        
       
        
		return ejecutarConsulta($sql);
        
	}
    

	public function mostrar($idCliente)
	{
		$sql="SELECT 
	C.idCliente,
	C.razonSocial,
	Co.nombreContacto,
	Co.puestoContacto,
	Co.correoContacto,
	C.telEmp,
	C.telEmp2,
	C.productoServicio,
	C.noTotalEmpleados,
	Co.fechaProbAud,
	C.integral,
	C.nivelIntegracion,
	C.observaciones AS observacionesC,
	S.idSitio,
	S.calle,
	S.numInt,
	S.numExt,
	S.colonia,
	S.municipio,
	S.estado,
	S.pais,
	S.cp,
	Co.costoNormal, 
	So.observaciones AS observacionesS,
    So.alcance,
    Co.viaticos
FROM 
	cliente C,
 	sitio S, 
	cotizacion Co,
	solicitud So 
WHERE 
	C.idCliente = Co.cliente_idCliente 
AND 
	C.idCliente = S.cliente_idCliente 
AND 
	C.idCliente= So.cliente_idCliente 
AND 
	S.condicion=2  And C.idCliente  ='$idCliente'";
		return ejecutarConsultaSimpleFila($sql);
	}

	//Implementar un método para listar los registros
	public function listar()
	{
		$sql="SELECT C.idCliente, C.razonSocial, Co.puestoContacto, Co.nombreContacto, Co.correoContacto, C.telEmp, Co.fechaProbAud,Co.condicion FROM cliente C, cotizacion Co WHERE 1=1 AND C.idCliente=Co.cliente_idCliente AND C.condicion = 1 ORDER BY C.idCliente DESC";
		return ejecutarConsulta($sql);		
	}
    
    public function listarDetalle($idCliente)
	{
		$sql="SELECT calle,numExt,numInt,colonia,municipio,estado,pais,cp FROM sitio WHERE condicion=2 AND cliente_idCliente ='$idCliente'";
		return ejecutarConsulta($sql);
	}
    public function listarNormasS($idCliente)
	{
		$sql=" SELECT N.claveISO, N.descripcion FROM norma N, solicitudvsservicios SS WHERE N.idNorma=SS.norma_idNorma AND SS.solicitud_idSolicitud= (SELECT idSolicitud FROM solicitud WHERE cliente_idCliente ='$idCliente')";
		return ejecutarConsulta($sql);
	}
     public function listarSitios($idCliente)
	{
		$sql="SELECT alias,estado,noEmpleados FROM sitio WHERE condicion!= 0 and condicion != 2 AND cliente_idCliente = '$idCliente'";
		return ejecutarConsulta($sql);
	} 
     public function listarCostos($idCliente)
	{
		$sql=" SELECT C.noTotalEmpleados,(SELECT COUNT(*) FROM norma N, solicitudvsservicios SS WHERE N.idNorma=SS.norma_idNorma AND SS.solicitud_idSolicitud=(SELECT idSolicitud FROM solicitud  WHERE cliente_idCliente='$idCliente')) AS normas FROM cliente C WHERE idCliente = '$idCliente'  ";
		return ejecutarConsulta($sql); 
	}
    
    public function listarCostosFinal($idCliente)
	{
		$sql=" SELECT costoFinal FROM cotizacion WHERE cliente_idCliente = '$idCliente'  ";
		return ejecutarConsulta($sql); 
	}
    
    
    public function importar($razonSocial,$puestoContacto,$nombreContacto,$telefono1,$telefono2,$correo,$tipoProducto,$alcance,$procesos,$noPersonal,$multiSitios,$fechaProbable,$fechaImplementado,$requerimientoAdd,$integral,$nivelIntegrado,$observaciones,$idCliente,$costoCotizacion)
	{
		$sql="";
		return ejecutarConsultaR($sql);
	}
  

}

?>