var tabla;
//Funcion inicial
function init() {
   
    listar();
    
}

function limpiar() {
    $("#idCliente").val("");
    $("#razonSocial").val("");
    $("#puestoContacto").val("");
    $("#nombreContacto").val("");
    $("#telefono1").val("");
    $("#telefono2").val("");
    $("#correo").val("");
    $("#tipoProducto").val("");
    $("#alcance").val("");
    $("#procesos").val("");
    $("#noPersonal").val("");
    $("#multiSitio").val("");
    //Obtenemos la fecha actual
    var now = new Date();
    var day = ("0" + now.getDate()).slice(-2);
    var month = ("0" + (now.getMonth() + 1)).slice(-2);
    var today = now.getFullYear() + "-" + (month) + "-" + (day);
    $("#fechaProbable").val(today);
    $("#fechaImplementado").val("");
    $("#requerimientoAdd").val("");
    $("#integral").val("");
    $("#nivelIntegrado").val("");
    $("#observaciones").val("");
    $("#costoFinal").val("");
    $("#viaticos").val("");
    

}
//Funcion listar
function listar() {
    tabla = $('#tbllistado').dataTable({
        "aProcessing": true, //Activamos el procesamiento del datatables
        "aServerSide": true, //Paginación y filtrado realizados por el servidor
        dom: 'Bfrtip', //Definimos los elementos del control de tabla
        buttons: [

		        ],
        "ajax": {
            url: '../ajax/listarSolicitudes.php?op=listar',
            type: "get",
            dataType: "json",
            error: function (e) {
                console.log(e.responseText);
            }
        },
        "bDestroy": true,
        "iDisplayLength": 5, //Paginación
        "order": [[0, "desc"]] //Ordenar (columna,orden)
    }).DataTable();
}



function mostrar(idCliente) {
    $.post("../ajax/cotizacion.php?op=mostrar", {
        idCliente: idCliente
    }, function (data, status) {
        data = JSON.parse(data);
        mostrarform(true);
        $("#idCliente").val(data.idCliente);
        $("#razonSocial").val(data.razonSocial);
        $("#puestoContacto").val(data.puestoContacto);
        $("#nombreContacto").val(data.nombreContacto);
        $("#telefono1").val(data.telEmp);
        $("#telefono2").val(data.telEmp2);
        $("#correo").val(data.correoContacto);
        $("#tipoProducto").val(data.productoServicio);
        $("#alcance").val(data.alcance);
        //$("#procesos").val(data.procesos);
        $("#noPersonal").val(data.noTotalEmpleados);
       
        $("#fechaProbable").val(data.fechaProbAud);
        $("#fechaImplementado").val(data.fechaImplementado);
        $("#requerimientoAdd").val(data.observacionesS);
        $("#integral").val(data.integral);
        var flagI = data.integral;
        if (flagI == 0) {
            $("#integral").val("No");
        } else {
            $("#integral").val("Si");
        }
        $("#nivelIntegrado").val(data.nivelIntegracion);
        $("#observacioines").val(data.observacionesC);
        $("#costoFinal").val(data.costoCotizacion);
        $("#viaticos").val(data.viaticos);


        //Ocultar y mostrar los botones
        //$("#btnGuardar").hide();
        //$("#btnCancelar").show();
        //$("#btnAgregarArt").hide();
    });
    $.post("../ajax/cotizacion.php?op=listarDetalle&id=" + idCliente, function (r) {
        $("#direcciones").html(r);
    });
    $.post("../ajax/cotizacion.php?op=listarNormasS&id=" + idCliente, function (r) {
        $("#detalles").html(r);
    });
    $.post("../ajax/cotizacion.php?op=listarSitios&id=" + idCliente, function (r) {
        $("#detallesSitios").html(r);

    });
    $.post("../ajax/cotizacion.php?op=listarCostos&id=" + idCliente, function (x) {
        $("#costos").html(x);
        //alert(x);
    });



}




init();
