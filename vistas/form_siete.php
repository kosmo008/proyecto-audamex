<?php
session_start();
?>	


<form  id="frm" name="frm" method="POST">
	<fieldset> 
		<div class="form-group col-lg-12 col-md-12	 col-sm-12 col-xm-12">
				<h3>Documentacion normativo legales</h3>
					<h6></h6>
					<table class="table table-responsive table-striped table-condensed table-bordered text-prewrap text-justify" style="border-radius:7px;">
						<thead class="active">
							<tr>
								<td>Nombre del documento </td>
								<td>Archivo</td>
								<td>Estatus</td>
							</tr>
						</thead>
						<tbody>
						<tr>
							<td> <label>Acta constitutiva:</label></td>
							<td> <input type="file" class="file-input" id="actaConstitutiva"name="actaConstitutiva" required> </td> 
							<td> <input id="txtActa_constitutiva" name="txtActa_constitutiva" value="Sin archivo" type="hidden"><label>Sin archivo</label></td> 
						</tr>
						
						<tr>
							<td><label>Constacia Situacion Fiscal:</label></td> 
							<td><input type="file" class="file-input" name="constaciaSituacionFiscal" id="constaciaSituacionFiscal" required ></td> 
							<td><input type="hidden" id="txtconstaciaSituacionFiscal"  name="txtconstaciaSituacionFiscal"  value="Sin archivo"><label>Sin archivo</label></td> 
						
						</tr>
						
						<tr>
							<td><label>Comprobante de domicilio:</label></td>
							<td><input type="file" class="file-input" name="comprobanteDomicilio" id="comprobanteDomicilio" required></td>
							<td><input type="hidden" id="txtcomprobanteDomicilio"  name="txtcomprobanteDomicilio"  value="Sin Archivo"><label>Sin archivo</label></td> 
						
						</tr>
						
						<tr>
							<td><label>Identificacion del representante legal:</label></td>
							<td><input type="file" class="file-input" name="identificacionRepresentanteLegal" id="identificacionRepresentanteLegal" required></td>
							<td><input type="hidden" id="referencia"  name="txtidentificacionRepresentanteLegal" id="txtidentificacionRepresentanteLegal" value="Sin archivo"><label>Sin archivo</label></td>
						
						</tr>
						
						<tr>
							<td><label>Poderes del representante legal:</label></td>
							<td><input type="file" class="file-input"  name="poderesRepresentanteLegal" id="poderesRepresentanteLegal"></td>
							<td><input type="hidden" id="referencia"   name="txtpoderesRepresentanteLegal" id="txtpoderesRepresentanteLegal" value="Sin archivo"><label>Sin archivo</label></td>
						
						</tr>
						
						<tr>
							<td><p>Informes de la última auditoría interna y Revisión por la dirección realizadas</p></td>
							<td><input type="file" class="file-input"  name="Evidencia" id="Evidencia" required></td>
							<td><input type="hidden" id="referencia"   name="txtEvidencia" id="txtEvidencia"  value="Sin archivo"><label>Sin archivo</label></td>
						</tr>
						
						<tr>
							<td><p>Documentos internos, donde se indiquen: nombre del documento y controles que se aplica la organizacion(por ejemplo; titulo, codigo, fecha, n revisiones, etc.).</p></td>
							<td><input type="file" class="file-input" name="lista" id="lista" required></td>
							<td><input type="hidden" name="txtlista" id="txtLista" value="Sin Archivo" ><label>Sin archivo</label></td>
						</tr>
						<tr>
							<td><p>Cargar de manera conjunta las lista maestra de control de información documentada.</p></td>
							<td><input type="file" class="file-input"  name="informacion_Documentada" id="informacion_Documentada" required></td>
							<td><input type="hidden"><label>Sin archivo</label></td>
						</tr>
						
						</tbody>
										
					</table>
					<br>
				
			</div>
			
			<div id="carga_documentos" class="form-group col-lg-12 col-md-12  col-sm-12 col-xm-12">
				
				<strong><h3 readonly style="opacity:0.5;"><i class="fas fa-file-upload"></i> Cargando archivos... </h3></strong>
				
				  
			</div>
			
			<div id="btn_documentos" class="form-group col-lg-12 col-md-12  col-sm-12 col-xm-12">
				<?php if( isset($_SESSION['progresoSolicitud']) ){
				if($_SESSION['progresoSolicitud']>7){	
				?>
				<button class="next_form action-button">Siguiente</button>
				<?php }else{ ?>
				<button class="next_form action-button">Guardar</button>	
				<?php }
				}else{?>
				<label>No hay datos que editar</label>
				<?php }?>
			</div>
	</fieldset>
</form>
<script>
var url = "scripts/form_siete.js";
$.getScript(url);
</script>
	
	