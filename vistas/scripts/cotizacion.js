var tabla;
//Funcion inicial
function init() {
    mostrarform(false);
    listar();
    $("#formulario").on("submit", function (e) {
        guardaryeditar(e);
    });
}
//Función mostrar formulario
function mostrarform(flag) {
    limpiar();
    if (flag) {
        $("#listadoCotizaciones").hide();
        $("#formularioCliente").show();
        $("#btnGuardar").prop("disabled", false);
        $("#btnagregar").hide();
    } else {
        $("#listadoCotizaciones").show();
        $("#formularioCliente").hide();
        $("#btnagregar").show();
    }
}
//Función cancelarform
function cancelarform() {
    limpiar();
    mostrarform(false);
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
    $("#fechaImplementado").val(today);
    $("#requerimientoAdd").val("");
    $("#integral").val("");
    $("#nivelIntegrado").val("");
    $("#observaciones").val("");
    $("#costoFinal").val("");
    
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
            url: '../ajax/cotizacion.php?op=listar',
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
//guardar o editar

function guardaryeditar(e) {
    e.preventDefault(); //No se activará la acción predeterminada del evento
    $("#btnGuardar").prop("disabled", true);
    var formData = new FormData($("#formulario")[0]);

    $.ajax({
        url: "../ajax/cotizacion.php?op=editarCostoFinal",
        type: "POST",
        data: formData,
        contentType: false,
        processData: false,
        success: function (datos) {
            
            bootbox.alert("Costo de la Cotización Guardado con Éxito");
            //mostrarform(false);
            tabla.ajax.reload();
            setTimeout ("redireccionar()", 1500); //tiempo expresado en milisegundos
            
            
        }
        
    });
  

}

function redireccionar(){
    window.location.replace("../public/Generacion.php");
  
}
//Función cancelarform
function cancelarform() {
    limpiar();
    mostrarform(false);
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
        $("#telefono1").val(data.telefono1);
        $("#telefono2").val(data.telefono2);
        $("#correo").val(data.correo);
        $("#tipoProducto").val(data.tipoProducto);
        $("#alcance").val(data.alcance);
        $("#procesos").val(data.procesos);
        $("#noPersonal").val(data.noPersonal);
        var flagM = data.multiSitio;
        if (flagM == 0) {
            $("#multiSitio").val("No");
        } else {
            $("#multiSitio").val("Si");
        }
        $("#fechaProbable").val(data.fechaProbable);
        $("#fechaImplementado").val(data.fechaImplementado);
        $("#requerimientoAdd").val(data.requerimientoAdd);
        $("#integral").val(data.integral);
        var flagI = data.integral;
        if (flagI == 0) {
            $("#integral").val("No");
        } else {
            $("#integral").val("Si");
        }
        $("#nivelIntegrado").val(data.nivelIntegrado);
        $("#observaciones").val(data.observaciones);
        $("#costoFinal").val(data.costoCotizacion);
        
        
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

function recalcular() {

    var diasTabla = document.getElementById("diasTabla").value;
    var diasExtra = document.getElementById("diasExtra").value;
    var costoDescuento = document.getElementById("costoDescuento").value;
    var costoNormal = document.getElementById("costoNormal").value;
    var costoAumento = document.getElementById("costoAumento").value;
    var semestral = document.getElementById("semestral").value;
    var anual = document.getElementById("anual").value;


    if (diasExtra == "") {
        bootbox.alert("Debes ingresar un numero para hacer el calculo");

    } else {
        var costoDiaAdd = (16875 * 0.66 * diasExtra);
        var aux = (parseFloat(costoNormal) + parseFloat(costoDiaAdd));
        //alert(aux);
        $("#costos").html('<thead style="background-color:#A9D0F5"><th>Costo con Descuento </th>                                     <th>Costo Normal</th><th>Costo con Aumento</th><th>Seguimiento Semestral</th><th>Seguimiento Anual</th></thead><tr class="filas "><td id="">$' + (aux * 0.9) + '</td><td id="" >$' + aux + '</td><td id="">$' + (aux * 1.2) + '</td><td id="">$' + ((aux * 0.9) / 2) + '</td><td id="">$' + (aux * 0.9) + '</td> </tr> ');

    }

}


init();
