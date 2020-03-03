function init(){
	datosCliente();
}
function datosCliente(){
var idCliente=$('#idEmpresaNombre').val();
$.post("../ajax/cliente.php",{idCliente : idCliente, opcion : 'mostrar'}, function(data, status){
		data = JSON.parse(data);
		document.getElementById('idEmpresaNombre').innerHTML=data.razonSocial;
		$('#RFC').val(data.RFC);
		$('#razonSocial').val(data.razonSocial);
		$('#correo').val(data.correoEmp);
});	
}
init();