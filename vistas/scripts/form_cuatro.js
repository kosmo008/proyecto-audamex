
function init(){
	tb_sitio();
}

function tb_sitio(){
	$.post('../ajax/sitio.php',{opcion:'listarCK',idCliente:$('#idEmpresaNombre').val(),idSolicitud:$('#idSolicitud').val()},function(data){
		$("#tb_sitio").append(data);
	});
}



$("#frm").on("submit",function(e){
	e.preventDefault(); 
	
	var formData = new FormData($("#frm")[0]);
	formData.append("idSolicitud",$('#idSolicitud').val());
	formData.append("opcion","sitiovsSolicitud");

   	 
	 $.ajax({
        url: '../ajax/sitioVsServicio.php',
        type: "POST",
        data: formData,
        contentType: false,
        processData: false,
        success: function (datos,status) {
          
			alertify.success("Guardado");
			progresoIndividual(5);
			progreso($('#idSolicitud').val());
			
        }
    });	

    
});

function progresoIndividual(num_P){
$.post("../ajax/solicitud.php",{opcion:'progresoIndividual', idSolicitud:$('#idSolicitud').val(), progreso:num_P},function(data,status){
});	
}
init();