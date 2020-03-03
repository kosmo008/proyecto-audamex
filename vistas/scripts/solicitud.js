function init(){
	datosSolicitud();
}
function datosSolicitud(){
	var idSolicitud=$('#idSolicitud').text();
	var idCliente=$('#idEmpresaBD').text();
$.post("../ajax/solicitud.php",{opcion:'mostrar',idSolicitud:idSolicitud,idCliente:idCliente},function(data,status){

});
}
function actualizarProceso(){
	var idSolicitud=$('#idSolicitud').text();
	var idCliente=$('#idEmpresaBD').text();
$.post("../ajax/solicitud.php",{opcion:'actualizarProceso',idSolicitud:idSolicitud,idCliente:idCliente},function(data,status){
	
});	
}
function progresoIndividual(num_P){
	var idSolicitud=$('#idSolicitud').text();
	var idCliente=$('#idEmpresaBD').text();
$.post("../ajax/solicitud.php",{opcion:'progresoIndividual',idSolicitud:$('#idSolicitud').text(),idCliente:$('#idEmpresaBD').text()},function(data,status){
	
});	
}

init();