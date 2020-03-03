function init(){
$('#finalbtn').prop("disabled",true);
}

init();

$('#final').on("submit",function(e){
	e.preventDefault();
	
	var formData= new FormData($('#final')[0]);
	formData.append("opcion","guardar");
	formData.append("idSolicitud",$('#idSolicitud').val());
	
	$.ajax({
        url: "../ajax/archivoFinal.php",
        type: "POST",
        data: formData,
        contentType: false,
        processData: false,
        success: function (data) {
			if(data!=1){
				alertify.error(data);
			}else{
				alertify.success('Archivo guardado exitosamente');
				progreso($('#idSolicitud').val());
			}
				

        }
    });
	
});

$('#ckb').on("change",function(){
	if($('#ckb').is(":checked")){
		$('#finalbtn').prop("disabled",false);
	}else{
		$('#finalbtn').prop("disabled",true);
	}
});
