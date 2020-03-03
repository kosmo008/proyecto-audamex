<?php
session_start();
?>	
<fieldset>
	<form id="from" name="form" method="post" class="responsive">
		<div class="form-group col-lg-12 col-md-12	 col-sm-12 col-xm-12">
			<h3>Datos para la certificación.</h3>
			<h6></h6>
		</div>
		
		<div class="form-group col-lg-12 col-md-12	 col-sm-12 col-xm-12">
			<label>
				Descripción de Asesores Externos:
			</label>
			<textarea class="form-control" name="descAsesorExterno" id="descAsesorExterno" style="border-style:solid; border-color:black;" placeholder="describa de manera breve, si en los últimos 3 años ha recibido apoyo o asesoría para la implementación del sistema de gestión, de ser posible especificar el nombre o razón social"></textarea>
		</div>
		
		<div class="form-group col-lg-4 col-md-4 col-sm-12 col-xm-12">
			<label>
				Fecha aproximada desde que el sistema de gestión se encuentra implementado.
			</label>
			<input type="date" name="fechaImpSG"id="fechaImpSG" class="form-control" style="border-style:solid; border-color:black;">
		</div>
		
		
		<div class="form-group col-lg-12 col-md-12 col-sm-12 col-xm-12">
			<label>
				¿Se ha realizado por lo menos una auditoria interna del Sistema de gestion? Describa la auditoria interna al S.G.
			</label>
			<textarea class="form-control" name="descAudInter" id="descAudInter" placeholder="Describa el proceso de auditoria interna" style="border-style:solid; border-color:black;"></textarea>
		</div>
		
		<div class="form-group col-lg-6 col-md-6 col-sm-12 col-xm-12">
			<label>
				Indicar el idioma requerido para la realización de las auditoria.
			</label>
			<input type="text" class="form-control" id="idioma" name="idioma" style="border-style:solid; border-color:black;"/>
		</div>
		
		<div class="form-group col-lg-12 col-md-12 col-sm-12 col-xm-12">
			<label>
				Indicar si es necesario algún requerimiento especial para realizar las actividades de auditoria:
			</label>
			<textarea class="form-control" name="equipoEspecial" id="equipoEspecial" placeholder="equipo especial en las instalaciones los auditores" style="border-style:solid; border-color:black;"></textarea>
		</div>
		
		<div class="form-group col-lg-12 col-md-12 col-sm-12 col-xm-12">
			<label>
				Indicar si es necesario algún equipo de protección personal para realizar las actividades de auditoria.
			</label>
			<textarea class="form-control" name="reqSeguridad" id="reqSeguridad" placeholder='' style="border-style:solid; border-color:black;"></textarea>
		</div>
		
		<div class="form-group col-lg-12 col-md-12 col-sm-12 col-xm-12">
			<label>
				Indicar si es necesario capacitación especial para realizar las actividades de auditoria.
			</label>
			<input type="text" class="form-control" id="reqCapaExtra" class="form-control" style='border-style:solid; border-color:black;';>
		</div>

		<div class="form-group col-lg-12 col-md-12  col-sm-12 col-xm-12">
	    <?php if($_SESSION["progresoSolicitud"]>6){ ?>
		 <button  class="action-button previous previous_button">Siguiente</button>
	    <?php }else{?>
		 <button id="btngrd6" class="next_form action-button">Continuar</button>
		<?php	
		}?>
       </div>
	</form>
</fieldset>
	<script>
var url = "scripts/form_seis.js";
$.getScript(url);
</script>