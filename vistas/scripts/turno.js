init();

function ini(){	
var opcion='listar';
$.post("../ajax/turno.php",{opcion : opcion}, 
		function(e){
		console.log(e);
		
});
}
