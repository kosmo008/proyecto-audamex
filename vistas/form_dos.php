<?php
session_start();
?> 
  
<script>
	var url = "scripts/form_dos.js";
	$.getScript(url);
</script>
<!-- Segundo formulario -->
    <fieldset>

		<div class="form-group col-lg-12 col-md-12 col-sm-12 col-xm-12">
			<legend>
				Proporcionar informacion de los representantes de la organizacion
			</legend>
		</div>

		<div class="form-group col-lg-12 col-md-4 col-sm-12 col-xm-12">
			<strong><label>Nombre del Director General</label></strong>
			<input type="text" name="directorGeneral" id="directorGeneral" class="form-control" style="border-style:solid; border-color:black;"; placeholder="Nombre completo">
		</div>
		<div class="form-group col-lg-4 col-md-4 col-sm-12 col-xm-12">
			<label>Número de teléfono </label>
			<input type="number" name="telefonoGeneral" id="telefonoGeneral" class="form-control" style="border-style:solid; border-color:black;"; placeholder="incluye lada">
		</div>
		<div class="form-group col-lg-2 col-md-4 col-sm-12 col-xm-12">
			<label>Extensión </label>
			<input type="number" name="extensionGeneral" id="extensionGeneral" class="form-control" style="border-style:solid; border-color:black;"; placeholder="0 0 0 0">
		</div>
		<div class="form-group col-lg-6 col-md-12 col-sm-12 col-xm-12">
			<label>Correo:</label>
			<input type="text" name="correoGeneral" id="correoGeneral" class="form-control" style="border-style:solid; border-color:black;"; placeholder="example@domain">
		</div>


		<div class="form-group col-lg-12 col-md-4 col-sm-12 col-xm-12">
			<strong><label>Nombre del Representante Legal</label></strong>
			<input type="text" name="representanteLegal" id="representanteLegal" class="form-control" style="border-style:solid; border-color:black;"; placeholder="Nombre del Representante Legal">
		</div>
		<div class="form-group col-lg-4 col-md-4 col-sm-12 col-xm-12">
			<label>Número de teléfono </label>
			<input type="number" name="telefonoRepresentanteLegal" id="telefonoRepresentanteLegal" class="form-control" style="border-style:solid; border-color:black;"; placeholder="incluye lada">
		</div>
		<div class="form-group col-lg-2 col-md-4 col-sm-12 col-xm-12">
			<label>Extensión </label>
			<input type="number" name="extensionRepresentanteLegal" id="extensionRepresentanteLegal" class="form-control" style="border-style:solid; border-color:black;"; placeholder="0 0 0 0">
		</div>
		<div class="form-group col-lg-6 col-md-12 col-sm-12 col-xm-12">
			<label>Correo:</label>
			<input type="text" name="correoRepresentanteLegal" id="correoRepresentanteLegal" class="form-control" style="border-style:solid; border-color:black;"; placeholder="example@domain">
		</div>
		<div class="form-group col-lg-12 col-md-4 col-sm-12 col-xm-12">
			<strong><label>Nombre del Responsable del Sistema de Gestión</label></strong>
			<input type="text" name="representantegestion" id="representantegestion" class="form-control" style="border-style:solid; border-color:black;"; placeholder="Nombre completo representante de SG.">
		</div>
		<div class="form-group col-lg-4 col-md-4 col-sm-12 col-xm-12">
			<label>Número de teléfono </label>
			<input type="number" name="telefonogestion" id="telefonogestion" class="form-control" style="border-style:solid; border-color:black;"; placeholder="incluye lada">
		</div>
		<div class="form-group col-lg-2 col-md-4 col-sm-12 col-xm-12">
			<label>Extensión </label>
			<input type="number" name="extensiongestion" id="extensiongestion" class="form-control" style="border-style:solid; border-color:black;"; placeholder="0 0 0 0">
		</div>
		<div class="form-group col-lg-6 col-md-12 col-sm-12 col-xm-12">
			<label>Correo:</label>
			<input type="text" name="correogestion" id="correogestion" class="form-control" style="border-style:solid; border-color:black;"; placeholder="example@domain">
		</div>
		
	<?php if( isset($_SESSION['progresoSolicitud']) ){
			if($_SESSION['progresoSolicitud']>2){	
	?>
	<button class="next_form action-button">Siguiente</button>
	<button class="next_form action-button">siguiente</button>
	<?php }else{ ?>
	 <button  id="btngdrII"class="next_form action-button">Guardar</button>	
	<?php }
	 }else{?>
	 
	<label>No hay datos que editar</label>
	<?php }?>
		
    </fieldset>


  
  
  