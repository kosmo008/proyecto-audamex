<?php session_start()?>
<!-- Cuarto formulario -->
<fieldset>
	<form id="frm" name="frm" method="POST">
		<label>Ubicaciones declaradas</label>
		<p>
			Marque los sitios involucrados en los servicos selecionados en el paso anterior de este formulario
		</p>
		<table id="tb_sitio" class="table table-bordered table-striped" style="border-style:solid; border-color:black;";>
			<thead>
			<th>Direccion</th>
			</thead>
			<tbody>
			</tbody>
		 </table>
		 
		  <?php if($_SESSION["progresoSolicitud"]>4){ ?>
			<button type="button" class="action-button previous previous_button">Back</button>
		  <?php }?>
		  <button  class="next_form action-button">Continue</button>
		</form>
</fieldset>

<!--Fin del Cuarto formulario -->
<script>
var url = "scripts/form_cuatro.js";
$.getScript(url);
</script>