<?php 
//Incluímos inicialmente la conexión a la base de datos
require "../config/Conexion.php";

Class CuestionarioCertificacion
{
	//Implementamos nuestro constructor
	public function __construct()
	{

	}

	//Implementamos un método para insertar registros
	public function insertar($razonSocial,$nombreContacto,$puestoContacto,$correoEmp,$telefono1,$telefono2,$tipoProducto,$alcance,$noPersonas,$fechaProbable,$requerimientoAdd,$nivelIntegracion,$observaciones,$normas,$calle,$noInterior,$noExterior,$colonia,$alcaldia,$estado,$pais,$codigoPostal,$calle2,$noInterior2,$noExterior2,$colonia2,$alcaldia2,$estado2,$pais2,$codigoPostal2,$alias,$estadoAlias,$noPersonalAlias,$RFC,$viaticos)
	{ 
  
        
        if($nivelIntegracion=="No Aplica"){ 
            
           $integlar=0; 
        }
        else{
            $integral=1;
        } //termina if integrado
        
		$sql="INSERT INTO cliente (razonSocial, telEmp, telEmp2, productoServicio, integral, nivelIntegracion, observaciones, condicion,noTotalEmpleados,RFC) VALUES ('$razonSocial','$telefono1','$telefono2','$tipoProducto','$integral','$nivelIntegrado','$observaciones','1','$noPersonas','$RFC')";
		
       
        $usuarioNew=ejecutarConsulta_retornarID($sql) or $sw=false;
             
        $sw=true;
       
        $sql_solicitud= "INSERT INTO solicitud (fecha,condicion,cliente_idCliente,observaciones,alcance,progreso) VALUES (curdate(),1,'$usuarioNew','$requerimientoAdd','$alcance',1) "; 
        $solicitudNew= ejecutarConsulta_retornarID($sql_solicitud) or $sw=false; // si se inserta
        
        
        
        $condicionDireccion=0; // 0 inactiva 1 activa 2 fiscal
        
        
        
        
        if ($calle2!="" || $colonia2!="" || $alcaldia2!="" || $estado2!="" || $pais2!="" || $codigoPostal2!="")
        {
           $condicionDireccion=2; 
            $sql_direccion= "INSERT INTO sitio (calle,pais,estado,municipio,cp,colonia,numExt,numInt,condicion, cliente_idCliente,noSitio) VALUES ('$calle','$pais','$estado','$alcaldia','$codigoPostal','$colonia','$noExterior','$noInterior','$condicionDireccion','$usuarioNew',0) "; 
            ejecutarConsulta($sql_direccion) or $sw=false;
            
            $condicionDireccion=$condicionDireccion-1;
            
            $sql_direccion2= "INSERT INTO sitio (calle,pais,estado,municipio,cp,colonia,numExt,numInt,condicion, cliente_idCliente,noSitio) VALUES ('$calle2','$pais2','$estado2','$alcaldia2','$codigoPostal2','$colonia2','$noExterior2','$noInterior2','$condicionDireccion','$usuarioNew','1') "; 
            ejecutarConsulta($sql_direccion2) or $sw=false;
            
        }else{
            
            $condicionDireccion=2;
            $sql_direccion= "INSERT INTO sitio (calle,pais,estado,municipio,cp,colonia,numExt,numInt,condicion, cliente_idCliente,noSitio) VALUES ('$calle','$pais','$estado','$alcaldia','$codigoPostal','$colonia','$noExterior','$noInterior','$condicionDireccion','$usuarioNew',1) "; 
            ejecutarConsulta($sql_direccion) or $sw=false;
          
        }
        
        
        $num_elementosD=0;        
        $cont=2;
        
        
        
        
        
        
        while($num_elementosD<count($alias))
        {
                        
            if($alias[$num_elementosD]!=""){
            
            $noSitio=$num_elementosD+$cont;
            $sql_sitio= "INSERT INTO sitio (alias,estado,noEmpleados,cliente_idCliente,condicion, noSitio) VALUES ('$alias[$num_elementosD]','$estadoAlias[$num_elementosD]','$noPersonalAlias[$num_elementosD]','$usuarioNew','1','$noSitio') "; 
            ejecutarConsulta($sql_sitio) or $sw=false;
            
            
            }else{
                break;
            }
            
            $num_elementosD = $num_elementosD+1;
        }
        
   
           $num_elementosN=0;        
         
        
        while($num_elementosN<count($normas))
        {
            
            
            $sql_solicitudvsservicios= "INSERT INTO solicitudvsservicios (solicitud_idSolicitud,servicio_idServicio,norma_idNorma) VALUES ('$solicitudNew',1,'$normas[$num_elementosN]') "; 
            ejecutarConsulta($sql_solicitudvsservicios) or $sw=false; // no ejecuta
            $num_elementosN=$num_elementosN+1;
            
            
        } 
        
       
      
        $sql_cotizacion= "INSERT INTO cotizacion (fecha,fechaProbAud,nombreContacto,puestoContacto,correoContacto,cliente_idCliente,viaticos) VALUES (curdate(),'$fechaProbable','$nombreContacto','$puestoContacto','$correoEmp','$usuarioNew', '$viaticos') "; 
        ejecutarConsulta($sql_cotizacion) or $sw=false; // no se ejecuta
        
        
      if($sw){
          return $usuarioNew;
      }else{
         return $sw; 
      }
        
      
        
	}
    
    

	//Implementamos un método para editar registros
	public function editar($idCliente,$nombreOrganizacion,$correo,$rfc,$tipoProducto,$RFC)
	{
		$sql="UPDATE cliente SET nombreOrganizacion='$nombreOrganizacion',correo='$correo',tipoProducto='$tipoProducto',rfc='$RFC' WHERE idcliente='$idCliente'";
		return ejecutarConsulta($sql);
	}
    
    

	//Implementamos un método para desactivar registros
	public function desactivar($idCliente)
	{
		$sql="UPDATE cliente SET condicion='0' WHERE idCliente='$idCliente'";
		return ejecutarConsulta($sql);
	}

	//Implementamos un método para activar registros
	public function activar($idCliente)
	{
		$sql="UPDATE cliente SET condicion='1' WHERE idCliente='$idCliente'";
		return ejecutarConsulta($sql);
	}

	//Implementar un método para mostrar los datos de un registro a modificar
	public function mostrar($idCliente)
	{
		$sql="SELECT c.idCliente,c.razonSocial,c.nombreContacto,c.puestoContacto,c.correo,c.telefono1,c.telefono2,c.tipoProducto,c.alcance,c.procesos,c.noPersonal,c.multiSitio,c.fechaProbable,c.requerimientoAdd,c.fechaImplementado,c.integral,c.nivelIntegrado,c.observaciones,c.condicion,d.idDireccion,d.calle,d.noInterior,d.noExterior,d.colonia,d.alcaldia,d.estado,d.pais,d.cp,c.RFC FROM cliente c,direccion d WHERE c.idCliente = d.cliente_idCliente AND c.idCliente='$idCliente'";
		return ejecutarConsultaSimpleFila($sql);
	}

	//Implementar un método para listar los registros
	public function listar()
	{
		$sql="SELECT 
                idCliente, 
                razonSocial,
                puestoContacto, 
                nombreContacto, 
                correo, 
                telefono1, 
                fechaProbable,
                alcance,
				RFC,                
                condicion
              FROM 
                cliente ";
		return ejecutarConsulta($sql);		
	}
    
   

}

?>