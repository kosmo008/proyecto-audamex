<?php
include 'header.php';
if(!isset($_SESSION["usuario"])){
        
    header("Location: loginEmpleados.php");
    
}
?>


<!--Body-->
<!--Tabla de actividades-->

 <!--DataTables-->

 <!-- <script src="../public/datatables/buttons.colVis.min.js"></script>
  <script src="../public/datatables/buttons.html5.min.js"></script>
  <script src="../public/datatables/dataTables.buttons.min.js"></script> -->
  <script src="../public/datatables/jquery.dataTables.min.js"></script>
  <script src="../public/datatables/jszip.min.js"></script>
<!--  <script src="../public/datatables/pdfmake.min.js"></script> -->
  <script src="../public/datatables/vfs_fonts.js" ></script>
<!--Tabla de actividades-->

<div class="multi_step_form">
	<div id="msform">
    <!-- Tittle -->
    <div class="tittle">
      <h2 value="<?php $_SESSION['idUsuarioExt'];?>"><?php echo $_SESSION['usuario']; ?></h2>
      
	  <input type="hidden" id="idEmpresaNombre" name="idEmpresaNombre" value="<?php echo $_SESSION['cliente_idCliente']; ?>">
	  
      <input type="hidden" value="0" id="idSolicitud" name="idSolicitud">
	

    </div>
	
	<div id="form_tb" name="form_tb" class="container-fluid">
		<!-- Main content -->
		<section class="content">
			<div class="row">
				<div class="col-md-12">
					<div class="box">
						<div class="box-header with-border">
							<h1 class="box-title">Solicitudes
								<!--  <button class="btn btn-success" id="btnagregar" onclick="mostrarform(true)"><i class="fa fa-plus-circle"></i> Agregar</button>-->
							</h1>
							<div class="box-tools pull-right"> </div>
						</div>
						<!-- /.box-header -->
						<!-- centro -->
						<div class="panel-body table-responsive" id="listadoSolicitudes">
							<table id="tbllistado" class="table table-striped table-bordered table-condensed table-hover">
								<thead>
									<th>Contirnuar</th>
									<th>Folio</th>
									<th>Fecha</th>
									<th>Porcentaje</th>
									
								</thead>
								<tbody> </tbody>
								<tfoot>
									<th>Contirnuar</th>
									<th>Folio</th>
									<th>Fecha</th>
									<th>Porcentaje</th>
								  
								</tfoot>
							</table>
						</div>
						
						<!--Fin centro -->
					</div>
					<!-- /.box -->
				</div>
				<!-- /.col -->
			</div>
			<!-- /.row -->
		</section>
		<!-- /.content -->
	</div>
	
		<div   id="formularioregistros" name="formularioregistros"class="panel-body">
					<ul id="progressbar">
					  <li id="idDF" class="active" style="width:calc(100%/9)">Datos Fiscales</li>
					  <li id="idRO" style="width:calc(100%/9)">Representantes de la organizacion</li>
					  <li id="idSS" style="width:calc(100%/9)">Servicios solicitados</li>
					  <li id="idS"  style="width:calc(100%/9)">Sitios</li>
					  <li id="idAO" style="width:calc(100%/9)">Actividades de la organizacion</li>
					  <li id="idDC" style="width:calc(100%/9)">Datos de la certificacion</li>
					  <li id="idDN" style="width:calc(100%/9)">Documentos normativos</li>
					  <li id="idAS" style="width:calc(100%/9)">Aceptacion del servicio</li>
					</ul>
		<div id="form_formulario">
		</div>
		<br>
		<br>
		<br>
		<center><button onclick="mostrarF(true)"class="btn btn-primary">Regresar</button></center>
		</div>
		
	</div>
	
</div>

<!-- End Multi step form -->
<!--Fin de Body-->

<link rel="stylesheet" href="../public/css/estilo.css"/>

<script type="text/javascript" src="scripts/cliente.js"></script>

<script type="text/javascript" src="scripts/solicitud.js"></script>

<script type="text/javascript" src="scripts/listaSolicitud.js"></script>
<?php
include 'footer.html';
?>

<?php
ob_end_flush();
?>
