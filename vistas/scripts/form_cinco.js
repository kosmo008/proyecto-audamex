var count=0;
function init(){
primerProceso();
}
function primerProceso(){
	var opcion='listarOption';
	
$.post("../ajax/turno.php",{opcion : opcion},function(e){
	var misTurnos=e;
	
	var idSolicitud=$('#idSolicitud').val();
	var idCliente=$('#idEmpresaNombre').val();
	
	$.post("../ajax/sitio.php",{ idCliente : idCliente , opcion : 'listarSelect'},function(e){
		var ubicaciones=e;
		count=count+1;
		
		/*$('#listaProceso').append("<li class='list-group-item' id='"+count+"' > <input type='text' name='descripcion[]' placeholder='Actividad' style=' width:183px; height:38px; border-radius:7px;'> <input type='number' placeholder='Numero de empleados' name='totalPersonas[]' style=' width:90px; height:38px; border-radius:7px;'> <input type='text' name='encargado[]' placeholder='Nombre completo del encargado' style=' width:180px; height:38px; border-radius:7px;'>  <input type='text' placeholder='Dpto. de actividad' name='departamento[]' style=' width:90px; height:38px; border-radius:7px;'>  <select name='turno[]' style=' width:120px; height:38px; border-radius:7px;'>" + misTurnos + "</select> <select name='sitio[]' style=' width:130px; height:38px; border-radius:7px;'>"+ubicaciones+"</select>  <select name='intExt[]' style=' width:90px; height:38px; border-radius:7px;'><option>Interno</option><option>Externo</option></select>  <l class='btn btn-danger' onclick='removerProcedo("+count+")'> Remover</l></li>");*/
			$("<tr></tr>").html("").appendTo("#tb_proceso");
				var newRowContent = "<tr id='"+count+"'>"+
									"<td><input type='text' name='descripcion[]' placeholder='Proceso' class='form-control'></td>"+
									"<td><input type='number' placeholder='Numero de empleados' name='totalPersonas[]' class='form-control'></td>"+
									"<td><input type='text' name='encargado[]' placeholder='Nombre completo del encargado' class='form-control'></td>"+
									"<td><input type='text' placeholder='Dpto. de actividad' name='departamento[]'class='form-control'></td>"+
									"<td><select name='turno[]' class='form-control' style='height:50px'>" + misTurnos + "</select></td>"+
									"<td><select name='sitio[]' class='form-control' style='height:50px'>"+ubicaciones+"</select></td>"+
									"<td><select name='intExt[]' class='form-control' style='height:50px'><option>Interno</option><option>Externo</option></select></td>"+
									"<td></td>"+
									"</tr>";

			$("#tblEntAttributes tbody").append(newRowContent); 
			$("#tb_proceso tbody").append(newRowContent); 
	/**/
	});
	});

}
$('#addProceso').on('click',function(){
var opcion='listarOption';
	
$.post("../ajax/turno.php",{opcion : 'listarOption'},function(e){
	var misTurnos=e;
	var idSolicitud=$('#idSolicitud').val();
	var idCliente=$('#idEmpresaNombre').val();
	$.post("../ajax/sitio.php",{ idCliente : idCliente , opcion : 'listarSelect'},function(e){
		var ubicaciones=e;
		count=count+1;
		
		/*$('#listaProceso').append("<li class='list-group-item' id='"+count+"' > <input type='text' name='descripcion[]' placeholder='Actividad' style=' width:183px; height:38px; border-radius:7px;'> <input type='number' placeholder='Numero de empleados' name='totalPersonas[]' style=' width:90px; height:38px; border-radius:7px;'> <input type='text' name='encargado[]' placeholder='Nombre completo del encargado' style=' width:180px; height:38px; border-radius:7px;'>  <input type='text' placeholder='Dpto. de actividad' name='departamento[]' style=' width:90px; height:38px; border-radius:7px;'>  <select name='turno[]' style=' width:120px; height:38px; border-radius:7px;'>" + misTurnos + "</select> <select name='sitio[]' style=' width:130px; height:38px; border-radius:7px;'>"+ubicaciones+"</select>  <select name='intExt[]' style=' width:90px; height:38px; border-radius:7px;'><option>Interno</option><option>Externo</option></select>  <l class='btn btn-danger' onclick='removerProcedo("+count+")'> Remover</l></li>");*/
			$("<tr></tr>").html("").appendTo("#tb_proceso");
				var newRowContent = "<tr id='"+count+"'>"+
									"<td><input type='text' name='descripcion[]' placeholder='Proceso' class='form-control'></td>"+
									"<td><input type='number' placeholder='Numero de empleados' name='totalPersonas[]' class='form-control'></td>"+
									"<td><input type='text' name='encargado[]' placeholder='Nombre completo del encargado' class='form-control'></td>"+
									"<td><input type='text' placeholder='Dpto. de actividad' name='departamento[]'class='form-control'></td>"+
									"<td><select name='turno[]' class='form-control' style='height:50px'>" + misTurnos + "</select></td>"+
									"<td><select name='sitio[]' class='form-control' style='height:50px'>"+ubicaciones+"</select></td>"+
									"<td><select name='intExt[]' class='form-control' style='height:50px'><option>Interno</option><option>Externo</option></select></td>"+
									"<td><button class='btn btn-danger' onclick='removerProcedo("+count+")'>Remover</button></td>"+
									"</tr>";

			$("#tblEntAttributes tbody").append(newRowContent); 

			$("#tb_proceso tbody").append(newRowContent); 
	
	
	/**/
	
	
	});
  
});




});
function ayuda(num){
	
	if(num==1)
	alertify.confirm('Declarar un proceso',"Conjunto de actividades mutuamente relacionadas que utilizan las entradas para proporcionar un resultado previsto, los cuales la organización debe definir medir y mejorar.",function(){},function(){}).set({labels:{ok:'Entendido', cancel: 'Cerrar'},padding: true});
	if(num==2)
	alertify.confirm('Declarar el personal involucrado',"Indicar la cantidad de personas que realizan actividades relacionadas con este proceso.",function(){},function(){}).set({labels:{ok:'Entendido', cancel: 'Cerrar'},padding: true});
	if(num==3)
	alertify.confirm('Declarar el nombre del responsable',"Persona responsable del proceso.",function(){},function(){}).set({labels:{ok:'Entendido', cancel: 'Cerrar'},padding: true});
	if(num==4)
		alertify.confirm('Declarar departamentos',"Declarar departamentos involucrados",function(){},function(){}).set({labels:{ok:'Entendido', cancel: 'Cerrar'},padding: true});
	if(num==5)
		alertify.confirm("Declarar Jornada(s) ","Jornadas (Jornada laboral aplicable al proceso) Agregar opciones (Diurna / Nocturna / Mixta)",function(){},function(){}).set({labels:{ok:'Entendido', cancel: 'Cerrar'},padding: true});
	if(num==6)
		alertify.confirm("Declarar Sitio(s) para proceso(s) ","Sitios (seleccionar los sitios donde se realiza el proceso)",function(){},function(){}).set({labels:{ok:'Entendido', cancel: 'Cerrar'},padding: true});
	if(num==7)
		alertify.confirm("Declarar Tipo para proceso(s)","indicar si este proceso se realiza por personal interno o contratado de manera externa",function(){},function(){}).set({labels:{ok:'Entendido', cancel: 'Cerrar'},padding: true});
}

function removerProcedo(idPro){
	$("#"+idPro).remove();
}

$('#formularioV').on('submit',function(e){
	e.preventDefault();
	var formData = new FormData($('#formularioV')[0]);
	formData.append('idSolicitud',$('#idSolicitud').val());
	formData.append('opcion','guardar');
	
$.ajax({
        url: "../ajax/proceso.php",
        type: "POST",
        data: formData,
        contentType: false,
        processData: false,
        success: function (data) {
			if(data!=1){
				alertify.error(data);
			}else{
				alertify.success('Datos Guardados con exito');
				actualizarProceso();
				progreso($('#idSolicitud').val());
			}
				

        }
    });
		  
});
function actualizarProceso(){
	var idSolicitud=$('#idSolicitud').val();
	var idCliente=$('#idEmpresaNombre').val();
$.post("../ajax/solicitud.php",{opcion:'actualizarProceso',idSolicitud:idSolicitud,idCliente:idCliente},function(data,status){
	
});	
}



init();