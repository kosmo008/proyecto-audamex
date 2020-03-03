function init(){
	datosFormulario();
}


function datosFormulario(){
	var idCliente=$('#idEmpresaNombre').val();
	/*Verifica si hay datos fiscales*/
	$.post("../ajax/sitio.php",{opcion:"verificar",idCliente:idCliente},function(res){
		var res=JSON.parse(res);
	
		if(res.condicion>2){
			
			$("#lbl_dato").empty();
			$("#lbl_dato").append("Los datos ya fueron modificados en una ocasión, en caso de existir algún error en los mismos, favor de solicitar la modificación ante AUDAMEX a los teléfonos 55968975, 5552356544");
			
			$('#edit').prop('disabled',true);
			$('#btngrd').prop('disabled',true);
			$('#edit').prop('hidden',true);
			$('#btngrd').prop('hidden',true);
			
		}else{
			$("#lbl_dato").empty();
			$("#lbl_dato").append("Los datos solo pueden ser modificados en una ocasión, al continuar declara que la informacion que proporciona es verdad.");
			$('#btn_grd').prop('hidden',true);
			
		}
		if((res.Existe)>0){
				$.post("../ajax/sitio.php",{idCliente : idCliente, opcion : 'mostrar'}, function(data, status){
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
		
	});
	
	$.post("../ajax/cliente.php",{idCliente : idCliente, opcion : 'mostrar'}, function(data, status){
			data = JSON.parse(data);
			$('#RFC').val(data.RFC);
			$('#razonSocial').val(data.razonSocial);
			$('#correo').val(data.correoEmp);
	});

}


$('#edit').on('click',function(){
	confirmar();
});

function confirmar(){

var pre = document.createElement('pre');
//Estilo editado.
pre.style.maxHeight = "100%";
pre.style.margin = "0";
pre.style.padding = "100px";
pre.style.whiteSpace = "pre-wrap";
pre.style.fontFamily="Arial";
pre.style.fontSize="23px";
pre.style.textAlign = "justify";
pre.appendChild(document.createTextNode("¿Está seguro de continuar?\nA partir de ahora no podrá editar los datos fiscales de la solicitud\ny declara que los datos son verídicos y están verificados"));
//motrar mensaje de confirmacion

alertify.confirm('<h2>Atencion!</h2>',pre,function(){
		    $('#btn_edit_f1').prop('disabled',true);
			$('#btn_edit_f1').prop('hidden',true);
            alertify.success('Habilitado');
			habilitarCampos(false);
		
    },function(){/*Al cancelar no ejecuta ninguna accion*/}).set({labels:{ok:'Editar', cancel: 'Cancelar'}, padding: false});
	
}
/*Compos habilitado*/
function habilitarCampos(efecto){
	
	$('#razonSocial').prop('readonly',efecto);
	$('#razonSocial').prop('disabled',efecto);
	
	$('#correo').prop('readonly',efecto);
	$('#correo').prop('disabled',efecto);
	
	$('#RFC').prop('readonly',efecto);
	$('#RFC').prop('disabled',efecto);
	
	$('#pais').prop('readonly',efecto);
	$('#pais').prop('disabled',efecto);
	
	$('#estado').prop('readonly',efecto);
	$('#estado').prop('disabled',efecto);
	
	$('#alcaldia').prop('readonly',efecto);
	$('#alcaldia').prop('disabled',efecto);
	
	$('#colonia').prop('readonly',efecto);
	$('#colonia').prop('disabled',efecto);
	
	$('#numeroInterior').prop('readonly',efecto);
	$('#numeroInterior').prop('disabled',efecto);
	
	$('#numeroExterior').prop('readonly',efecto);
	$('#numeroExterior').prop('disabled',efecto);
	
	$('#CP').prop('readonly',efecto);
	$('#CP').prop('disabled',efecto);
	
	$('#calle').prop('readonly',efecto);
	$('#calle').prop('disabled',efecto);
	
	$('#btn_edit_f1').prop('disabled',efecto);
}
/*Compos habilitado*/


$('#btngrd').on('click',function(){
	alertify.confirm("Atencion","<center><strong><h2>¿Acepto que la informacion proporcionada es correcta?</h2></strong></center>",function(){
		actualizaDatosFiscale();
    },function(){}).set({labels:{ok:'Confirmar', cancel: 'Cancelar'}, padding: false});
	

});
$('#btn_grd').on('click',function(){
		actualizaDatosFiscale();
});

function actualizaDatosFiscale(){

$("#btngrd").prop("disabled",true);
	
var formData = new FormData();

	formData.append("idCliente",$('#idEmpresaNombre').val());
	formData.append("idSolicitud", $('#idSolicitud').val());
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
			if(datos!=''){
				alertify.success('Informacion actualizada');
				$("#btngrd").prop("disabled",false);
				progreso($('#idSolicitud').val());
			}else{
				alertify.error('No se puede actualizar la informacion');
				$("#btngrd").prop("disabled",false);
			}
		}
	});
	
}


init();