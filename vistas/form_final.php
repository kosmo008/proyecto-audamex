<?php
session_start();
?> 
  
<script>
	var url = "scripts/form_final.js";
	$.getScript(url);
</script>
<!-- Segundo formulario -->
<fieldset>
	<form id="final" name="final" method="post">
		<div class="form-group col-lg-12 col-md-12 col-sm-12 col-xm-12">
			<legend>
				Descargue, firme y vuelva a cargar el documento (En formaro PDF) "Aceptación de solicitud de servicio de certificación".
			</legend>
			<a href="../doc/Aceptación de solicitud de servicio de certificación.pdf" download><button class="btn  btn-danger btn-lg" type="button"><i class="fas fa-download"></i> DESCARGAR</button></a>
		</div>
		<div class="form-group col-lg-12 col-md-12 col-sm-12 col-xm-12">
			<p class="text-justify small">
			<strong>
			Aceptación de solicitud de servicio de certificación.
			Por este conducto, en nombre y representación de la organización manifiesto que:<br>
			1. Me comprometo a respetar el Reglamento General de Certificación de Sistemas y Reglamento de utilización del logotipo de certificación y para hacer referencia a la condición de certificado, así como los compromisos que en ellos se indican.<br>
			2. El cumplimiento en todo momento de la legislación vigente aplicable a las actividades y centros de trabajo indicados en el cuestionario anexo a la presente solicitud de servicios de certificación de sistemas de gestión.<br>
			3. Que me comprometo al cumplimiento con la Legislación vigente en materia de Prevención de Riesgos Laborales, a facilitar el intercambio de información preventiva (plan de prevención de riesgos laborales, medidas de prevención y emergencia, información) con relación a los riesgos a los que pudiera estar expuesto el personal de AUDAMEX durante la estancia en sus instalaciones de acuerdo a la prestación de los servicios encomendados.<br>
			4. Que proporcionaré todas las facilidades necesarias para realizar el proceso de certificación por parte de AUDAMEX, así como en caso de ser necesario los viáticos correspondientes.<br>
			5. Que me comprometo a acatar las decisiones que tome AUDAMEX, con respecto a la tramitación de la presente solicitud y de las verificaciones y controles posteriores que se hagan en consecuencia, en su caso, apegarme a los procedimientos de Quejas y apelación establecidos.<br>
			6. Que entiendo que mi organización podría no satisfacer los requerimientos para su certificación, situación que se me hará saber a través de un informe de auditoría o de una carta de rechazo de la cual fui informado.<br>
			7. Que adjuntaré el comprobante del pago inicial antes de dar inicio al proceso de certificación, así como el contrato de prestación de servicios.<br>
			8. Que me comprometo a informar de forma inmediata los cambios organizacionales (legales, comerciales, de propiedad, directivos, personal con toma de decisión, personal técnico clave, etc.) y de su sistema de gestión (alcance, procesos, servicios, productos, personal de contacto, sitios principales) a partir de la presentación de la solicitud y mientras la organización ostente la certificación de su sistema de gestión, emitido por AUDAMEX.<br>
			9. Esta solicitud debe ser acompañada del contrato de prestación de servicios de certificación del sistema de gestión descrito al inicio de la presente solicitud y él reglamento general de certificación de sistemas de gestión y procedimiento P-02-DO, Quejas y Apelaciones. (La firma de la presente solicitud también es válida como acuse de recibo de la documentación mencionada anteriormente) (Esta documentación fue entregada para el trámite de la solicitud de la auditoría de certificación).<br>
			</strong>
			</p>
			<strong style="color:red">
				<center>
					<input type="checkbox" id="ckb" class="checkbox">
					Declaro bajo protesta de decir verdad que los datos e información proporcionada en este cuestionario son verdaderos.
				</center>
			</strong><br>
		</div>
		
		
		<div class="form-group col-lg-12 col-md-12 col-sm-12 col-xm-12">
			 <div class="custom-file">
				<input type="file" class="custom-file-input" id="filepdf" name="filepdf" required>
				<label class="custom-file-label btn btn-secondary" for="file" style="color:black; border-top-width: 3px; border-right-width: 3px; border-bottom-width: 3px; border-left-width: 3px; border-style: solid;"><strong>PDF firmado por el representante legal...</strong></label>
			 </div>
		</div>

		
		<div class="form-group col-lg-12 col-md-12 col-sm-12 col-xm-12">
		<?php if( isset($_SESSION['progresoSolicitud']) ){
				if($_SESSION['progresoSolicitud']>8){	
		?>
		<label>Se esta validando la informacion!!!</label>
		<?php }else{ ?>
		 <button  id="finalbtn"  class="btn btn-primary btn-lg">Finalizar proceso</button>	
		<?php }} ?>
		</div>
	</form>
		<br>
		<br>
		<div class="form-group col-lg-12 col-md-12 col-sm-12 col-xm-12 bg-warning xsmall" style="border-radius:12px;">
			<p class="text-justify small">
		<strong ><br>
				Nota 1:
				AUDAMEX, tratará los datos e información contenidas en la presente Solicitud Cuestionario de Servicios de Certificación, con el fin de llevar a cabo la prestación del servicio, objeto de este documento, serán resguardados de conformidad con lo establecido en nuestro aviso de protección de datos, publicado en nuestra página http://www.audamex.com y la confidencialidad se mantendrá de acuerdo con lo establecido por la Dirección General expresado en su Compromiso de Imparcialidad y Transparencia así como lo establecido en nuestro procedimiento P-06-GA Confidencialidad. Los datos personales son voluntarios, impidiéndose si no los facilita, la correcta prestación de los servicios solicitados.
				Si se facilitan durante la prestación del servicio contratado datos de terceras personas deberá informar previamente a estas del contenido de esta información y recabar su consentimiento para el tratamiento confidencial de dicha información. Podrá ejercitar los derechos de acceso, rectificación, cancelación y oposición de sus datos dirigiéndose a AUDAMEX, ubicada en Calle, Juana de Arco N° 40, Colonia Moderna 03510, Alcaldía Benito Juárez, Ciudad de México.
				Los datos de certificación podrán ser cedidos, cuando sea necesario a las entidades de acreditación, Dirección General de Normas (DGN) o titulares de las certificaciones que haya solicitado a AUDAMEX y que ésta gestione conjuntamente con dichas entidades, con el fin de que emitan las certificaciones y licencias de uso, consintiendo esta cesión de datos con la firma de este contrato, y absteniéndose de contratar estos servicios si no está consciente de esta cesión de datos.
				A solicitud de la Entidad Mexicana de Acreditación las auditorías podrán ser testificadas por un grupo evaluador asignado por EMA.
		</strong>	
			</p>
		</div>
	
</fieldset>

