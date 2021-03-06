<?php 
session_start();
ob_start();


if(!isset($_SESSION["usuario"])){
        
    header("Location: loginEmpleados.php");
    
}
else{

include 'header.php';?>
<div class="container-fluid">
    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-md-12">
                <div class="box">
                    <div class="box-header with-border">
                        <h1 class="box-title">Cotización
                            <!--  <button class="btn btn-success" id="btnagregar" onclick="mostrarform(true)"><i class="fa fa-plus-circle"></i> Agregar</button>-->
                        </h1>
                        <div class="box-tools pull-right"> </div>
                    </div>
                    <!-- /.box-header -->
                    <!-- centro -->
                    <div class="panel-body table-responsive" id="listadoCotizaciones">
                        <table id="tbllistado" class="table table-striped table-bordered table-condensed table-hover">
                            <thead>
                                <th>Mostrar</th>
                                <th>Razón Social</th>
                                <th>Nombre de Contacto</th>
                                <th>Correo </th>
                                <th>Telefono</th>
                                <th>Fecha Probable</th>
                                <th>Estado</th>
                                <th>Opciones</th>
                            </thead>
                            <tbody> </tbody>
                            <tfoot>
                                <th>Mostrar</th>
                                <th>Razón Social</th>
                                <th>Nombre de Contacto</th>
                                <th>Correo </th>
                                <th>Telefono</th>
                                <th>Fecha Probable</th>
                                <th>Estado</th>
                                <th>Opciones</th>
                            </tfoot>
                        </table>
                    </div>
                    <div class="panel-body" id="formularioCliente">
                        <form name="formulario" id="formulario" method="POST">
                            <div class="form-group col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <label>Razon Social:</label>
                                <input type="hidden" name="idCliente" id="idCliente">
                                <input id="razonSocial" name="razonSocial" class="form-control " disabled> </div>
                            <div class="form-group col-lg-2 col-md-2 col-sm-2 col-xs-6">
                                <label>Puesto:</label>
                                <input type="text" class="form-control" name="puestoContacto" id="puestoContacto" disabled> </div>
                            <div class="form-group col-lg-4 col-md-4 col-sm-4 col-xs-6">
                                <label>Nombre de la Persona de Contacto:</label>
                                <input type="text" class="form-control" name="nombreContacto" id="nombreContacto" disabled> </div>
                            <div class="form-group col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                <label>Telefono 1:</label>
                                <input type="text" class="form-control" name="telefono1" id="telefono1" disabled> </div>
                            <div class="form-group col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                <label>Telefono 2:</label>
                                <input type="text" class="form-control" name="telefono2" id="telefono2" disabled> </div>
                            <div class="form-group col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                <label>Correo:</label>
                                <input type="mail" class="form-control" name="correo" id="correo" disabled> </div>
                            <div class="form-group col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <label>Tipo Producto:</label>
                                <textarea type="text" id="tipoProducto" name="tipoProducto" class="form-control" disabled> </textarea>
                            </div>
                            <div class="form-group col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <label>Alcance:</label>
                                <textarea type="text" class="form-control" name="alcance" id="alcance" disabled> </textarea>
                            </div>
                            <div class="form-group col-lg-2 col-md-2 col-sm-6 col-xs-12">
                                <label>Número Total del Personal que Labora en la Empresa:</label>
                                <input type="text" class="form-control" name="noPersonal" id="noPersonal" maxlength="10" disabled> </div>
                            <div class="form-group col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                <label>Fecha Probable:</label>
                                <input type="date" class="form-control" name="fechaProbable" id="fechaProbable" disabled> </div>
                            <div class="form-group col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                <label>Fecha Implementación:</label>
                                <input type="date" class="form-control" name="fechaImplementado" id="fechaImplementado" disabled> </div>
                            <div class="form-group col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <label>Requerimiento Adicional:</label>
                                <textarea type="text" id="requerimientoAdd" name="requerimientoAdd" class="form-control" disabled> </textarea>
                            </div>
                            <div class="form-group col-lg-1 col-md-1 col-sm-1 col-xs-12">
                                <label>Integral:</label>
                                <input type="text" class="form-control" name="integral" id="integral" maxlength="10" disabled> </div>
                            <div class="form-group col-lg-2 col-md-2 col-sm-6 col-xs-12">
                                <label>Porcentaje de Integración:</label>
                                <input type="text" class="form-control" name="nivelIntegrado" id="nivelIntegrado" maxlength="10" disabled> </div>
                            <div class="form-group col-lg-2 col-md-2 col-sm-6 col-xs-12">
                                <label>Cotizacion con Viaticos:</label>
                                <input type="text" class="form-control" name="viaticos" id="viaticos" maxlength="10" disabled> </div>
                            <div class="form-group col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <label>Observaciones:</label>
                                <textarea type="text" id="observacioines" name="observacioines" class="form-control" disabled> </textarea>
                            </div>

                            <div class="col-lg-12 col-sm-12 col-md-12 col-xs-12">
                                <table id="direcciones" class="table table-striped table-bordered table-condensed table-hover">
                                    <thead style="background-color:#A9D0F5">
                                        <th>Calle</th>
                                        <th>Número Exterior</th>
                                        <th>Número Interior</th>
                                        <th>Colonia</th>
                                        <th>Alcaldia</th>
                                        <th>Estado</th>
                                        <th>Pais</th>
                                        <th>Código Postal</th>
                                    </thead>
                                    <tbody> </tbody>
                                </table>
                            </div>
                            <div class="col-lg-12 col-sm-12 col-md-12 col-xs-12">
                                <table id="detallesSitios" class="table table-striped table-bordered table-condensed table-hover">
                                    <thead style="background-color:#A9D0F5">
                                        <th>Nombre del Sitio</th>
                                        <th>Estado del Sitio</th>
                                        <th>Número de Personas por Sitio</th>
                                    </thead>
                                    <tbody> </tbody>
                                </table>
                            </div>
                            <div class="col-lg-12 col-sm-12 col-md-12 col-xs-12">
                                <table id="detalles" class="table table-striped table-bordered table-condensed table-hover">
                                    <thead style="background-color:#A9D0F5">
                                        <th>Clave</th>
                                        <th>Normas Solicutadas</th>
                                    </thead>
                                    <tbody> </tbody>
                                </table>
                            </div>
                            <div class="form-group col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <h3>Calculo Automatico de Costos </h3>
                            </div>
                            <input type="text" class="form-control" name="costoDescuento" id="costoDescuento" hidden>
                            <input type="text" class="form-control" name="costoNormal" id="costoNormal" hidden>
                            <input type="text" class="form-control" name="costoAumento" id="costoAumento" hidden>
                            <input type="text" class="form-control" name="semestral" id="semestral" hidden>
                            <input type="text" class="form-control" name="anual" id="anual" hidden>
                            <div>
                                <div class="form-group col-lg-2 col-md-4 col-sm-3 col-xs-2">
                                    <label>Agregar Dias Extra:</label>
                                    <input type="text" class="form-control" name="diasExtra" id="diasExtra"> </div>
                                <div class="form-group col-lg-2 col-md-4 col-sm-3 col-xs-2" style="padding-top:21px"> <a class="btn btn-primary" type="submit" id="btnRecalcular" style="margin-top:15px; color:white;" onclick="recalcular();"><i class="fa fa-calculator"></i> Recalcular</a> </div>
                                <div class="form-group col-lg-2 col-md-4 col-sm-3 col-xs-2" style="padding-top:21px">
                                    <input type="text" class="form-control" name="diasTabla" id="diasTabla" maxlength="10" hidden> </div>
                            </div>
                            <div class="form-group col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <table id="costos" class="table table-striped table-bordered table-condensed table-hover">
                                    <thead style="background-color:#A9D0F5">
                                        <th>No. Dias de acuerdo a Tabla por Norma</th>
                                        <th>Costo con Descuento</th>
                                        <th>Costo Normal</th>
                                        <th>Costo con Aumento</th>
                                    </thead>
                                    <tbody> </tbody>
                                </table>
                            </div>
                            <div class="form-group col-lg-4 col-md-4 col-sm-6 col-xs-12">
                                <label>Cotización Final:</label>
                                <input type="text" class="form-control" name="costoFinal" id="costoFinal" maxlength="10">
                                <br> </div>
                            <div class="form-group col-lg-4 col-md-4 col-sm-6 col-xs-12">
                                <label>Tipo de Segimiento</label>
                                <select class="custom-select col" name="segimiento" id="segimiento">
                                    <option value="0">Semestral</option>
                                    <option value="1">Anual</option>
                                </select>
                                <br> </div>
                            <div class="form-group col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <h3>Viaticos</h3>
                                <div class="row">
                                    <div class="col-3">
                                        <label>Transporte:</label>
                                        <input type="text" class="form-control " name="transporte" id="transporte" disabled>
                                    </div>

                                    <div class="col-3">
                                        <label>Hospedaje:</label>
                                        <input type="text" class="form-control " name="hospedaje" id="hospedaje" disabled></div>
                                    <div class="col-3">
                                        <label>Alimentos:</label>
                                        <input type="text" class="form-control " name="alimentos" id="alimentos" disabled></div>
                                    <div class="col-3">
                                        <label>Otros:</label>
                                        <input type="text" class="form-control " name="otros" id="otros" disabled></div>
                                </div>



                            </div>


                            <div class="form-group col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <button class="btn btn-primary" type="submit" id="btnGuardar"><i class="far fa-file-alt"></i> Generar Cotización</button>
                                <!-- <button id="btnCancelar" class="btn btn-primary" onclick="importarDatos()" type="button"><i class="fa fa-save"></i> Aprobar</button> -->
                                <button id="btnCancelar" class="btn btn-danger" onclick="cancelarform()" type="button"><i class="fa fa-arrow-circle-left"></i> Cancelar</button>
                            </div>
                        </form>
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
<!-- /.container-fluid -->

<!-- Modal -->

<!-- Fin modal -->
<!-- End of Main Content -->
<?php
    

    include 'footer.html'; ?>
<!--<script type="text/javascript" src="../public/js/bootstrap-select.min.js"></script> -->
<script type="text/javascript" src="scripts/cotizacion.js"></script>
<?php 
}
ob_end_flush(); 
?>
