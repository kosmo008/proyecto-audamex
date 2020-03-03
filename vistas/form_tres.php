<?php session_start();?>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
 <script src="//cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
<script src="../public/datatables/jquery.dataTables.min.js"></script>
<script src="../public/datatables/buttons.colVis.min.js"></script>
<script src="../public/datatables/buttons.html5.min.js"></script>
<script src="../public/datatables/dataTables.buttons.min.js"></script>
<script src="../public/datatables/jszip.min.js"></script>
<script src="../public/datatables/pdfmake.min.js"></script>
<script src="../public/datatables/vfs_fonts.js" ></script>
	

<fieldset>
		
		<div class="form-group col-lg-12 col-md-12 col-sm-12 col-xm-12">
			<legend>
				Servicio por solicitar
			</legend>
		</div>
		
		<div  id="p_Integral" class="form-group col-lg-12 col-md-12 col-sm-12 col-xm-12">
			<label>¿Desea solicitar varios servicios con un mismo alcance?</label><br>
				
				<div class="custom-control custom-radio custom-control-inline">
				  <input type="radio" class="custom-control-input" id="rb_SGI" name="rb_SGI" >
				  <label class="custom-control-label" for="rb_SGI">SI</label>
				</div>
				
				<div class="custom-control custom-radio custom-control-inline">
				  <input type="radio" class="custom-control-input" id="rb_SGI2" name="rb_SGI">
				  <label class="custom-control-label" for="rb_SGI2">NO</label>
				</div>
		</div>
		
		
		<form name="formulario_integral" id="formulario_integral" method="POST">
			<div id="alcance_SGI" class="form-group col-lg-12 col-md-12 col-sm-12 col-xm-12">
				Indique el alcance solicitado.
				<input type="text" class="form-control" id="desc_alcance_SGI" name="desc_alcance_SGI" style="border-style:solid; border-color:black;"; placeholder="La informacion descrita aplicara para todos los servicios solicitados" required>
				<button type="button" class="btn btn-primary" id="btn_continuar" name="tbn_continuar">Cotinuar</button>
			</div>
			<div id="id_lista_Norma" class="form-group col-lg-12 col-md-12 col-sm-12 col-xm-12">
				<label>Agregar servicio:</label><button type="button" id="add_m" name="add_m" class="btn btn-success">+</button>
				<center>
					<table name="tb_norma"id="tb_norma" class=" table-striped table-condesed">
						<thead>
							<tr>
								<td>Servicio</td>
								<td>Norma</td>
								<td></td>
							</tr>
						</thead>
						<tbody>
						</tbody>
					</table>
				</center>
					<?php if( isset($_SESSION['progresoSolicitud']) ){
					if($_SESSION['progresoSolicitud']>3){	
					?>
					<button class="next_form action-button">Continuar</button>
					<?php }else{ ?>
					 <button class="next_form action-button">Cotinuar</button>	
					<?php }
					 }else{?>
					 
					<label>No hay datos que editar</label>
					<?php }?>
			</div>
		</form>
		
		<form name="formulario" id="formulario" method="POST">
		<div id="lst_servicio" class="form-group col-lg-12 col-md-12 col-sm-12 col-xm-12">
			
			Agregar servicio:<button type="button" class="btn btn-success btn-sm btn-small" id="add_ser_individual" name="add_ser_individual">+</button>
			<center>
				<table name="tb_serv"id="tb_serv">
					<thead>
						<tr>
						<td>Servicio</td>
						<td>Norma</td>
						<td>Alcance</td>
						<td></td>
						</td>
					<tbody>
					</tbody>
				</table>
			<center>
			<?php if( isset($_SESSION['progresoSolicitud']) ){
					if($_SESSION['progresoSolicitud']>3){	
			?>
			<button class="next_form action-button">Siguiente</button>
			<?php }else{ ?>
			 <button  id="btngdr" class="next_form action-button">Guardar</button>	
			<?php }
			 }else{?>
			 
			<label>No hay datos que editar</label>
			<?php }?>
		</div>
		</form>
		
		
	
	
	
	
 </fieldset>
	

 <script>
var url = "scripts/form_tres.js";
$.getScript(url);
</script>

