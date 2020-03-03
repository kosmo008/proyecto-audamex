<?PHP
require "../config/conexion.php";

class ListaSolicitud{
	
	public function __construct(){
	}

	public function cargarCliente($idCliente){
		$MySQLQuery="SELECT
					solicitudvsservicios.idSolicitudVsServicios AS numeroServicioSolicitud,
					solicitudvsservicios.solicitud_idSolicitud AS numeroSolicitud,
					solicitudvsservicios.servicio_idServicio AS numeroServicio,
					solicitudvsservicios.norma_idNorma AS numeroNorma,
					
					Servicio.idServicio,
					Servicio.descripcion,
					Servicio.observaciones,
					Servicio.condicion,
					
					solicitud.idSolicitud,
					solicitud.folio AS folioSolicitud,
					solicitud.fecha AS fechaSolicitud,
					solicitud.observaciones AS observacionSolicitud,
					solicitud.progreso AS progresoSolicitud,
					solicitud.condicion,
					solicitud.cliente_idCliente AS numeroCliente,
					
					norma.idNorma,
					norma.acronimo AS acronimoNorma,
					norma.claveMex AS claveMexNorma,
					norma.claveISO AS claveISOnorma,
					norma.descripcion AS descripcionNorma,
					norma.condicion,
					
					cliente.idCliente AS numeroCliente,
					cliente.expediente AS expedienteCliente,
					cliente.razonSocial AS razonSocial,
					cliente.RFC AS RFC,
					cliente.noPersonas AS nPersonasCliente,
					cliente.correoEmp AS correoEmpCliente,
					cliente.telEmp AS telEmpCliente,
					cliente.telEmp2 telEmp2Cliente,
					cliente.productoServicio AS productoServicioCliente,
					cliente.integral AS integralCliente,
					cliente.nivelIntergacion AS nivelIntergacionCliente,
					cliente.observaciones AS observacionesCliente,
					cliente.condicion
				FROM
					solicitudvsservicios
				LEFT JOIN servicio ON  servicio.idServicio=solicitudvsservicios.servicio_idServicio
				LEFT JOIN solicitud ON solicitud.idSolicitud=solicitudvsservicios.solicitud_idSolicitud
				LEFT JOIN norma ON     norma.idNorma=solicitudvsservicios.norma_idnorma
				LEFT JOIN cliente ON     cliente.idCliente=solicitud.cliente_idCliente

				WHERE solicitud.condicion!=0 AND cliente.idCliente='$idCliente'";
		return ejecutarconsultasimplefila($MySQLQuery);		
	}
	
	
	
	
	public function listarNormas(){
		$sql="SELECT * FROM norma WHERE condicion!=0;";
		ejecutarconsulta($sql);
	}
	
	
}




?>