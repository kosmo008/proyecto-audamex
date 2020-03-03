<?php
ob_start();
session_start();
if(!isset($_SESSION['idUsuarioExt']) ){
    header("Location: loginClientes.php");
}
else
{ 
include "../vistas/header.php";
if($_SESSION['permiso']=='Cliente' )
{ 
?>



<div class="container-fluid">
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
                                <th>Opciones</th>
                                <th>Servicio</th>
                                <th>Norma</th>
                                <th>Alcance </th>
                                <th>Porcentaje</th>
                                
                            </thead>
                            <tbody> </tbody>
                            <tfoot>
                                <th>Opciones</th>
                                <th>Servicio</th>
                                <th>Norma</th>
                                <th>Alcance </th>
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







<?php
                                                }else{
                                                
                                                 require 'sinPermisos.php';}
                                                 
                                                 include "footer.html";


?>
<!--<script type="text/javascript" src="../public/js/bootstrap-select.min.js"></script> -->
<script type="text/javascript" src="scripts/listaSolicitudes.js"></script>
<?php 
} 
ob_end_flush(); 
?>
