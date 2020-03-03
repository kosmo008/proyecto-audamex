function init(){
}

$("#from").on("submit",function(e){
	e.preventDefault(); 
	
	var formData = new FormData();
	
	formData.append("idSolicitud",$('#idSolicitud').val());
	
	formData.append("descAsesorExterno",$('#descAsesorExterno').val());
	formData.append("fechaImpSG",$('#fechaImpSG').val());
	formData.append("descAudInter",$('#descAudInter').val());
	formData.append("idioma",$('#idioma').val());
	formData.append("equipoEspecial",$('#equipoEspecial').val());
	formData.append("reqSeguridad",$('#reqSeguridad').val());
	formData.append("reqCapaExtra",$('#reqCapaExtra').val());
	
	formData.append("opcion",'guardar');
	
	
    $.ajax({
        url: "../ajax/detalleSolicitud.php",
        type: "POST",
        data: formData,
        contentType: false,
        processData: false,
        success: function (datos,status) {
					if(datos==1){
						alertify.success('Guardado');
						progreso($('#idSolicitud').val());
					}else
					alertify.error('Verifique la informacion');
					}
    });
});
init();