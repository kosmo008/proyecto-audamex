<?php
session_start();
?>
<script>
var url = "scripts/form_uno.js";
$.getScript(url);
</script>
<fieldset id="iduno" style="border-radius:7px;">
       <div class="form-row">
	   
		<div class="form-group col-lg-12 col-md-12 col-sm-12 col-xm-12">
		<legend style="color:red;">
			<label id="lbl_dato" name="lbl_dato"></label>
		</legend>
		</div>
		
		<div class="form-group col-lg-6 col-md-6 col-sm-12 col-xm-12">
			<strong><label>Razon social:</label></strong>
			<input type="text" name="razonSocial" id="razonSocial" class="form-control" style="border-style:solid; border-color:black;"; readonly disabled>

		</div>

		<div class="form-group col-lg-6 col-md-6 col-sm-12 col-xm-12">
				<strong><label>RFC:</label></strong>
				<input type="text" name="RFC" id="RFC" class="form-control" maxlength="16" style="border-style:solid; border-color:black;"; readonly disabled>
		</div>

		<div class="form-group col-lg-3 col-md-6 col-sm-12 col-xm-12">
			<strong><label>Pais:</label></strong>
			<input type="text" name="pais" id="pais" class="form-control" maxlength="30" style="border-style:solid; border-color:black;"; readonly disabled >
		</div>

		<div class="form-group col-lg-3 col-md-6 col-sm-12 col-xm-12">
			<strong><label>Estado:</label></strong>
			<input type="text" name="estado" id="estado" class="form-control" style="border-style:solid; border-color:black;"; readonly disabled >
		</div>

		<div class="form-group col-lg-3 col-md-6 col-sm-12 col-xm-12">
			<strong><label>Alcaldia:</label></strong>
			<input type="text" name="alcaldia" id="alcaldia" class="form-control" style="border-style:solid; border-color:black;"; readonly disabled >
		</div>

		<div class="form-group col-lg-3 col-md-6 col-sm-12 col-xm-12">
			<strong><label>Colonia:</label></strong>
			<input type="text" name="colonia" id="colonia" class="form-control" style="border-style:solid; border-color:black;"; readonly disabled >
		</div>


		<div class="form-group col-lg-2 col-md-4 col-sm-12 col-xm-12">
			<strong><label>Num. Interior:</label></strong>
			<input type="number" name="numeroInterior" id="numeroInterior" class="form-control" style="border-style:solid; border-color:black;"; readonly disabled >
		</div>

		<div class="form-group col-lg-2 col-md-4 col-sm-12 col-xm-12">
			<strong><label>Num. Exterior:</label></strong>
			<input type="number" name="numeroExterior" id="numeroExterior" class="form-control" style="border-style:solid; border-color:black;"; readonly disabled >
		</div>

		<div class="form-group col-lg-2 col-md-4 col-sm-12 col-xm-12">
			<strong><label>C.P:</label></strong>
			<input type="number" name="CP" id="CP" class="form-control" style="border-style:solid; border-color:black;"; readonly disabled >
		</div>

		<div class="form-group col-lg-6 col-md-12 col-sm-12 col-xm-12">
			<strong><label>Calle:</label></strong>
			<input type="text" name="calle" id="calle" class="form-control" style="border-style:solid; border-color:black;"; readonly disabled >
		</div>


		<div class="form-group col-lg-12 col-md-12 col-sm-12 col-xm-12">
			<strong><label>Correo electronico (Para envio de factura):</label></strong>
			<input type="email" name="correo" id="correo" class="form-control" style="border-style:solid; border-color:black;"; readonly disabled>
		</div>
		
		<div class="form-group col-lg-12 col-md-12 col-sm-12 col-xm-12" id="myB" name="myB">
			<button id="btn_grd"  name="btn_grd_uno" class="btn btn-primary">Continuar</button>
			
			<button id="edit" class="btn btn-warning">Editar</button>
			<button id="btngrd"  name="btn_grd_uno" class="btn btn-primary">Guardar</button>
		</div>
	
	
	</div>
	
	
	
	
</fieldset>

