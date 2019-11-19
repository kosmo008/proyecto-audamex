var tabla;
//Funcion inicial

function init() {
    
   // mostrarform(false);
    

    $.post("../ajax/registro.php?op=normas", function (r) {
        $("#normas").html(r);
    });
    $("#formulario").on("submit", function (e) {
        guardaryeditar(e);
    });

}
/*
//Función mostrar formulario
function mostrarform(flag) {
    //limpiar();
    if (flag) {
       // $("#listadoCotizaciones").hide();
        //$("#formularioCliente").show();
        $("#btnGuardar").prop("disabled", false);
      //  $("#btnagregar").hide();
    } else {
       // $("#listadoCotizaciones").show();
       // $("#formularioCliente").hide();
       // $("#btnagregar").show();
    }
}*/

//Función cancelarform
/*function cancelarform() {
    limpiar();
    mostrarform(false);
}*/


/*
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
    $("#multiSitio").selectpicker('refresh');


    //Obtenemos la fecha actual
	var now = new Date();
	var day = ("0" + now.getDate()).slice(-2);
	var month = ("0" + (now.getMonth() + 1)).slice(-2);
	var today = now.getFullYear()+"-"+(month)+"-"+(day) ;
    
    $("#fechaProbable").val(today);
    $("#fechaImplementado").val(today);
    $("#requerimientoAdd").val("");
    $("#integral").val("");
    $("#nivelIntegrado").val("");
    $("#observaciones").val("");
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
            url: '../ajax/registro.php?op=listar',
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
*/
//guardar o editar

function guardaryeditar(e) {
    e.preventDefault(); //No se activará la acción predeterminada del evento
    $("#btnRegistrar").prop("disabled", true);
    var formData = new FormData($("#formulario")[0]);

    $.ajax({
        url: "../ajax/registro.php?op=guardaryeditar",
        type: "POST",
        data: formData,
        contentType: false,
        processData: false,
        success: function (datos) {
            alert(datos);
            window.location.href = 'http://www.audamex.com/';


        }
    });

}

/*
//Función cancelarform
function cancelarform() {
    limpiar();
    mostrarform(false);
}*/
/*
function mostrar(idCliente) {

    $.post("../ajax/registro.php?op=mostrar", {
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
        $("#multiSitio").val(data.multiSitio);
        $("#multiSitio").selectpicker('refresh');


        $("#fechaProbable").val(data.fechaProbable);
        $("#fechaImplementado").val(data.fechaImplementado);
        $("#requerimientoAdd").val(data.requerimientoAdd);
        $("#integral").val(data.integral);
        $("#nivelIntegrado").val(data.nivelIntegrado);
        $("#observaciones").val(data.observaciones);

        //Ocultar y mostrar los botones
        //$("#btnGuardar").hide();
        //$("#btnCancelar").show();
        //$("#btnAgregarArt").hide();
    });

    //$.post("../ajax/ingreso.php?op=listarDetalle&id="+idingreso,function(r){
    //      $("#detalles").html(r);
    //});
}*/


init();
