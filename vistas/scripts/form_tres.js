	var con_sel=0;
	var coun_sg_int=0;
	var coun2=0;

function init(){
	
	$("#id_lista_Norma").hide();
	$("#alcance_SGI").hide();
	$("#lst_servicio").hide();
	
	$("#id_lista_Norma").hide();
	$("#alcance_SGI").hide();
	$("#lst_servicio").hide();
	
	
	tb_normaIntegral(1);
	primer_ser_individual(1);
	
	
}
function primer_ser_individual(bandera){
	var op='listarServicios';
	if(bandera>0){
		$.post("../ajax/servicio.php",{opcion:op,bander:bandera},function(result){
			coun2=coun2+1;
			$("#tb_serv").append("<tr id='sn"+coun2+"'>"+result+"<td></td></tr>");
		});
		
	
	}else{
		$.post("../ajax/servicio.php",{opcion:op,bander:bandera},function(result){
			coun2=coun2+1;
			$("#tb_serv").append("<tr id='sn"+coun2+"'>"+result+"<td><button class='btn btn-danger' onclick='remover2("+coun2+")'  >Eliminar</button></td></tr>");
		});
		
	}
	
}

$("#add_ser_individual").on("click",function(){
	primer_ser_individual(0);
});

function tb_normaIntegral(bda){
	var op='listarServiciosIntegrales';
	var bandera=bda;
	$.post("../ajax/servicio.php",{opcion:op,bandera:bandera},function(result){
		coun_sg_int=coun_sg_int+1;
		$("#tb_norma").append("<tr id='sg"+coun_sg_int+"'>"+result+"</tr>");
	});
	$.post("../ajax/servicio.php",{opcion:op,bandera:bandera},function(result){
		coun_sg_int=coun_sg_int+1;
		$("#tb_norma").append("<tr id='sg"+coun_sg_int+"'>"+result+"</tr>");
	});
	
}
$("#add_m").on("click",function(){
	add_tb_normaIntegral(0);
});

function remover(id){
	$("#sg"+id).remove();
}
function removerE(id){
	$("#J"+id).remove();
}
function remover2(id){
	$("#sn"+id).remove();
}
function add_tb_normaIntegral(bda){
	var op='listarServiciosIntegrales';
	var bandera=bda;
	
	$.post("../ajax/servicio.php",{opcion:op,bandera:bandera},function(result){
		coun_sg_int=coun_sg_int+1;
		$("#tb_norma").append("<tr id='sg"+coun_sg_int+"'>"+result+"<td><button  onclick='remover("+coun_sg_int+")' class='btn btn-danger'>eliminar</button></td></tr>");
	});
}

$('#rb_SGI').on("change",function(){
	$("#alcance_SGI").val("");
	$("#alcance_SGI").show();
	$("#id_lista_Norma").hide();
	$("#lst_servicio").hide();
	
});
$("#btn_continuar").on("click",function(){
	if($("#desc_alcance_SGI").val()!=''){
		$("#alcance_SGI").hide();
		$("#id_lista_Norma").show();
	}else{	alertify.error("Describa el alcance para continuar");
		
	}
	
});

$('#rb_SGI2').on("change",function(){
	$("#desc_alcance_SGI").val("");
	$("#alcance_SGI").hide();
	$("#id_lista_Norma").hide();
	$("#lst_servicio").show();
	
});

init();
function estado(idnorma,indice){
	if( $('#ck'+idnorma).prop('checked') ) {
		con_sel=con_sel+1;
	}else{
		con_sel=con_sel-1;
	}
}


$("#formulario_integral").on("submit",function(e){
	e.preventDefault(); 
	
	var formData = new FormData($("#formulario_integral")[0]);
	formData.append("idSolicitud",$('#idSolicitud').val());
	formData.append("opcion",'guardarIntegral');
	$.ajax({
        url: "../ajax/solicitudvsservicios.php",
        type: "POST",
        data: formData,
        contentType: false,
        processData: false,
        success: function (datos,status) {
			progreso($('#idSolicitud').val());

			
        }
    });
  
		 
});

$("#formulario").on("submit",function(e){
	e.preventDefault(); 
	var formData = new FormData($("#formulario")[0]);
	formData.append("idSolicitud",$('#idSolicitud').val());
	formData.append("opcion",'guardarIdividual');
    
	$.ajax({
        url: "../ajax/solicitudvsservicios.php",
        type: "POST",
        data: formData,
        contentType: false,
        processData: false,
        success: function (datos,status) {
			progreso($('#idSolicitud').val());

        }
    });
		 
});
