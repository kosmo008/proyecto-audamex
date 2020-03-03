function init(){
	datosSitio();
}
function act_fiscal(){

var formData = new FormData();
    formData.append("idCliente", $('#idEmpresaBD').text());
    formData.append("idSolicitud", $('#idSolicitud').text());
	formData.append("razonSocial", $('#razonSocial').val());
	formData.append("RFC", $('#RFC').val());
	formData.append("correo", $('#correo').val());
	
	formData.append("pais", $('#pais').val());
	formData.append("estado", $('#estado').val());
	formData.append("alcaldia", $('#alcaldia').val());
	formData.append("colonia", $('#colonia').val());
	formData.append("numeroInterior", $('#numeroInterior').val());
	formData.append("numeroExterior", $('#numeroExterior').val());
	formData.append("CP", $('#CP').val());
	formData.append("calle", $('#calle').val());
	
	formData.append("opcion",'actualizar');
	
	$.ajax({
		url:"../ajax/sitio.php",
		type:"POST",
		data:formData,
		contentType:false,
		processData:false,
		success: function(datos){
			alertify.success(datos);
			datosSolicitud();
			$('#msform').load(' #msform');
		
			
		}
	});
	
}

function datosSitio(){
	var idCliente=$('#idEmpresaBD').text();
$.post("../ajax/sitio.php",{idCliente : idCliente, opcion : 'mostrarFiscal'}, function(data, status){
		data = JSON.parse(data);
		$('#pais').val(data.pais);
		$('#estado').val(data.estado);
		$('#alcaldia').val(data.municipio);
		$('#CP').val(data.cp);
		$('#colonia').val(data.colonia);
		$('#numeroInterior').val(data.numInt);
		$('#numeroExterior').val(data.numExt);
		$('#calle').val(data.calle);
		
});
}
init();