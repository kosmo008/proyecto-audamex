<?php 
session_start();
?>
<fieldset>

	<form name="formularioV" id="formularioV" method="POST" class="responsive">
		<h2>Descripcion de actividades internas y/o externas que se realizan</h2>
		<table  id="tb_proceso" class="">
			<thead>
				<th>Proceso <span class='btn badge badge-primary badge-pill' onclick='ayuda(1)'>?</span></th>
				<th>Personal involucrado <span class='btn badge badge-primary badge-pill' onclick="ayuda(2)">?</span></th>
				<th>Nombre de encargado <span class='btn badge badge-primary badge-pill' onclick="ayuda(3)">?</span></th>
				<th>Dpto <span class='btn badge badge-primary badge-pill' onclick="ayuda(4)">?</span></th>
				<th>Turno <span class='btn badge badge-primary badge-pill' onclick="ayuda(5)">?</span></th>
				<th>Sitio <span class='btn badge badge-primary badge-pill' onclick="ayuda(6)">?</span></th>
				<th>Tipo <span class='btn badge badge-primary badge-pill' onclick="ayuda(7)">?</span></th>
				<th></th>
			</thead>
			<tbody>
			</tbody>	
			<tfoot>
				<th>Proceso</th>
				<th>Personas involucradas</th>
				<th>Nombre del encargado</th>
				<th>Dpto</th>
				<th>Turno</th>
				<th>Sitio</th>
				<th>Tipo</th>
				<th></th>
			</tfoot>
		</table>
		<ul id="listaProceso" class="list-group responsive">
		
		</ul>
		
		<i class="btn btn-success far fa-plus-square" id="addProceso" name="addProceso"> Nuevo proceso</i>
		
		<h3></h3>
		
	<?php if( isset($_SESSION['progresoSolicitud']) ){
		if($_SESSION['progresoSolicitud']>5){
			
	?>
	<button  class="">siguiente</button>
    	
	<?php }else{ ?>
	<button  id="btngrd5" class="next_form action-button">Guardar y continuar</button>
	<?php }
	 }else{?>
	<label>No hay datos que editar</label>
	<?php }?>
			
		
	</form>
</fieldset>
<script>
var url = "scripts/form_cinco.js";
$.getScript(url);
</script>
