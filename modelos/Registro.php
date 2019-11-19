<?php 
//Incluímos inicialmente la conexión a la base de datos
require "../config/Conexion.php";

Class Registro
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
        $num_elementosS=0;
        
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
        
           // print_r($sql_direccion2);
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
	public function editar($idCliente,$nombreOrganizacion,$correo,$rfc,$tipoProducto)
	{
		$sql="UPDATE cliente SET nombreOrganizacion='$nombreOrganizacion',correo='$correo',tipoProducto='$tipoProducto',rfc='$rfc' WHERE idcliente='$idCliente'";
		return ejecutarConsulta($sql);
	}
    
    

	//Implementamos un método para desactivar registros
	public function desactivar($idCliente)
	{
		$sql="UPDATE cliente SET condicion='0' WHERE idCliente='$idCliente'";
		return ejecutarConsulta($sql);
	}

	//Implementamos un método para activar registros
	public function activar($idcliente)
	{
		$sql="UPDATE cliente SET condicion='1' WHERE idCliente='$idCliente'";
		return ejecutarConsulta($sql);
	}

	//Implementar un método para mostrar los datos de un registro a modificar
	public function mostrar($idCliente)
	{
		$sql="SELECT c.idCliente,c.razonSocial,c.nombreContacto,c.puestoContacto,c.correo,c.telefono1,c.telefono2,c.tipoProducto,c.alcance,c.procesos,c.noPersonal,c.multiSitio,c.fechaProbable,c.requerimientoAdd,c.fechaImplementado,c.integral,c.nivelIntegrado,c.observaciones,c.condicion,d.idDireccion,d.calle,d.noInterior,d.noExterior,d.colonia,d.alcaldia,d.estado,d.pais,d.cp FROM cliente c,direccion d WHERE c.idCliente = d.cliente_idCliente AND c.idCliente='$idCliente'";
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
                condicion
              FROM 
                cliente ";
		return ejecutarConsulta($sql);		
	}
    
    public function listarDetalle($idCliente)
	{
		$sql="SELECT di.idingreso,di.idarticulo,a.nombre,di.cantidad,di.precio_compra,di.precio_venta FROM detalle_ingreso di inner join articulo a on di.idarticulo=a.idarticulo where di.idingreso='$idingreso'";
		return ejecutarConsulta($sql);
	}

}

?>
