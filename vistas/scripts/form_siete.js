function init(){
	$("#btn_documentos").prop("hidden",false);
    $("#carga_documentos").prop("hidden",true);
}
init();

$('#frm').on('submit',function(e){
	e.preventDefault();
	 var formData = new FormData($("#frm")[0]);
	 formData.append("opcion",'guardar');
	 formData.append("idCliente",$('#idEmpresaNombre').val());
	 $("#btn_documentos").prop("hidden",true);
	 $("#carga_documentos").prop("hidden",false);
	 $.ajax({
        url: "../ajax/documentosnormativolegales.php",
        type: "POST",
        data: formData,
        contentType: false,
        processData: false,
        success: function (datos,status) {
		if(datos!="Documentos guardados"){
			alertify.error(datos);
		}else{
			alertify.success(datos);
			progresoIndividual(8)
			progreso($('#idSolicitud').val());;
		}
		}
    });
	$("#btn_documentos").prop("hidden",false);
    $("#carga_documentos").prop("hidden",true)
});

function progresoIndividual(num_P){
$.post("../ajax/solicitud.php",{opcion:'progresoIndividual', idSolicitud:$('#idSolicitud').val(), progreso:num_P},function(data,status){
});	
}