function init(){
	listar();
}
function listar(){
	var idCliente=$('#idEmpresaNombre').val();
$.post("../ajax/representante.php",{idCliente:idCliente,opcion:'existePuesto',puesto:'Gerente General'},function(data){
	data=JSON.parse(data);
	if(data.num>0){
		$.post("../ajax/representante.php",{idCliente:idCliente,opcion:"mostrarGG",puesto:'Gerente General'},function(data,status){
			data=JSON.parse(data);
			$('#directorGeneral').val(data.nombre);
			$('#telefonoGeneral').val(data.telefono);
			$('#extensionGeneral').val(data.extension);
			$('#correoGeneral').val(data.correo);
		});
	}	
});

$.post("../ajax/representante.php",{idCliente:idCliente,opcion:'existePuesto',puesto:'Representante Legal'},function(data){
	data=JSON.parse(data);
	if(data.num>0){
		$.post("../ajax/representante.php",{idCliente:idCliente,opcion:"mostrarGG",puesto:'Representante Legal'},function(data,status){
			data=JSON.parse(data);
			$('#representanteLegal').val(data.nombre);
			$('#telefonoRepresentanteLegal').val(data.telefono);
			$('#extensionRepresentanteLegal').val(data.extension);
			$('#correoRepresentanteLegal').val(data.correo);
		});
	}	
});

$.post("../ajax/representante.php",{idCliente:idCliente,opcion:'existePuesto',puesto:'Representante Sistema de gestion'},function(data){
	data=JSON.parse(data);
	if(data.num>0){
		$.post("../ajax/representante.php",{idCliente:idCliente,opcion:"mostrarGG",puesto:'Representante Sistema de gestion'},function(data,status){
			data=JSON.parse(data);
			$('#representantegestion').val(data.nombre);
			$('#telefonogestion').val(data.telefono);
			$('#extensiongestion').val(data.extension);
			$('#correogestion').val(data.correo);
		});
	}	
});		

}
$('#btngdrII').on('click',function(){
	representante();
});


function representante(){
	$('#btngdrII').prop('disabled',true);
	var idCliente=$('#idEmpresaNombre').val();
	var idSolicitud=$('#idSolicitud').val();
	
	var nombre=$('#directorGeneral').val();
	var telefono=$('#telefonoGeneral').val();
	var extension=$('#extensionGeneral').val();
	var correo=$('#correoGeneral').val();

	var nombreII=$('#representanteLegal').val();
	var telefonoII=$('#telefonoRepresentanteLegal').val();
	var extensionII=$('#extensionRepresentanteLegal').val();
	var correoII=$('#correoRepresentanteLegal').val();
	
	var nombreIII=$('#representantegestion').val();
	var telefonoIII=$('#telefonogestion').val();
	var extensionIII=$('#extensiongestion').val();
	var correoIII=$('#correogestion').val();
  
	$.post("../ajax/representante.php",
	{opcion:'insertar',idCliente:idCliente,idSolicitud:idSolicitud,nombre:nombre,telefono:telefono,extension:extension,correo:correo,nombreII:nombreII,telefonoII:telefonoII,extensionII:extensionII,correoII:correoII,nombreIII:nombreIII,telefonoIII:telefonoIII,extensionIII:extensionIII,correoIII:correoIII},
	function(data,status){
	if(data!="Guardado"){
		alertify.error(data);
		
	}else{
		alertify.success(data);
		progreso($('#idSolicitud').val());
	}
	$('#btngdrII').prop('disabled',false);
	});	
	
}
init();