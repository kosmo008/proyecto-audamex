function init(){
	$('#formularioregistros').hide();
	$('#form_tb').show();
	listar();
}
function listar() {
	idCliente=$('#idEmpresaNombre').val();
    tabla = $('#tbllistado').dataTable({
        "aProcessing": true, //Activamos el procesamiento del datatables
        "aServerSide": true, //Paginación y filtrado realizados por el servidor
        dom: 'Bfrtip', //Definimos los elementos del control de tabla
        buttons: [

		        ],
        "ajax": {
            url: "../ajax/listarSolicitudes.php?op=listar&idCliente="+idCliente,
            type: "get",
            dataType: "json",
            error: function (e) {
                console.log(e.responseText);
            }
        },
        "bDestroy": true,
        "iDisplayLength": 5, //Paginación
        "order": [[0, "desc"]] //Ordenar (columna,orden)
    }).DataTable();
}
function mostrarF(bandera){
	
	if(bandera){
		$('#formularioregistros').hide();
		$('#form_tb').show();
	}else{
		$('#formularioregistros').show();
		$('#form_tb').hide();
	}
	
}
function mostrar(id){
	progreso(id);
	mostrarF(false);
}
function progreso(miSolicitud){
	$('#idSolicitud').val(miSolicitud);
var idSolicitud=$('#idSolicitud').val();
var idCliente=$('#idEmpresaNombre').val();

$.post("../ajax/solicitud.php",{opcion : 'mostrar', idSolicitud : idSolicitud, idCliente : idCliente},function(data,status){

$.post("../config/session.php",{opcion:'verificar',progreso:data},function(data){

	switch(data){
		case '1':
		
			$('#form_formulario').load('form_uno.php');
			$("#myB").load(" #myB");
		break;
		
		case '2':
			$('#idRO').addClass("active");
			$('#form_formulario').load('form_dos.php');
			
		break;
		
		case '3':
		
			$('#idRO').addClass("active");
			$('#idSS').addClass("active");
			$('#form_formulario').load('form_tres.php');
			
		break;
		
		case '4':
			$('#idRO').addClass("active");
			$('#idSS').addClass("active");
			$('#idS').addClass("active");
			$('#form_formulario').load('form_cuatro.php');
		break;
		case '5':
			$('#idRO').addClass("active");
			$('#idSS').addClass("active");
			$('#idS').addClass("active");
			$('#idAO').addClass("active");
			$('#form_formulario').load('form_cinco.php');
		break;
		case '6':
			$('#idRO').addClass("active");
			$('#idSS').addClass("active");
			$('#idS').addClass("active");
			$('#idAO').addClass("active");
			$('#idDC').addClass("active");
			$('#form_formulario').load('form_seis.php');
		break;
		
		case '7':
			$('#idRO').addClass("active");
			$('#idSS').addClass("active");
			$('#idS').addClass("active");
			$('#idAO').addClass("active");
			$('#idDC').addClass("active");
			$('#idDN').addClass("active");
			$('#form_formulario').load('form_siete.php');
		break;
		
		case '8':
			$('#idRO').addClass("active");
			$('#idSS').addClass("active");
			$('#idS').addClass("active");
			$('#idAO').addClass("active");
			$('#idDC').addClass("active");
			$('#idDN').addClass("active");
			$('#idAS').addClass("active");
			$('#form_formulario').load('form_final.php');
		break;
		
		case '9':
			$('#idRO').addClass("active");
			$('#idSS').addClass("active");
			$('#idS').addClass("active");
			$('#idAO').addClass("active");
			$('#idDC').addClass("active");
			$('#idDN').addClass("active");
			$('#idAS').addClass("active");
			$('#form_formulario').load('validando.php');
		break;
		
	}
	
	
});

});
}


init();

