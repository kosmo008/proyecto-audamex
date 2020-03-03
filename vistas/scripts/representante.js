function init(){
	representantes();
}
function representantes(){
	
	$.post("../ajax/representante.php",{opcion:'listar',idCliente:3},function(data,status){
			data=JSON.parse(data);
			console.log(data);
	});	
	
}

init();
