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
    }
    else {
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

		        ]
        , "ajax": {
            url: '../ajax/cotizacion.php?op=listar'
            , type: "get"
            , dataType: "json"
            , error: function (e) {
                console.log(e.responseText);
            }
        }
        , "bDestroy": true
        , "iDisplayLength": 5, //Paginación
        "order": [[0, "desc"]] //Ordenar (columna,orden)
    }).DataTable();
}
//guardar o editar
function guardaryeditar(e) {
    e.preventDefault(); //No se activará la acción predeterminada del evento
    $("#btnGuardar").prop("disabled", true);
    var formData = new FormData($("#formulario")[0]);
    $.ajax({
        url: "../ajax/cotizacion.php?op=editarCostoFinal"
        , type: "POST"
        , data: formData
        , contentType: false
        , processData: false
        , success: function (datos) {
            bootbox.alert("Costo de la Cotización Guardado con Éxito");
            //mostrarform(false);
            tabla.ajax.reload();
            setTimeout("redireccionar()", 1500); //tiempo expresado en milisegundos
        }
    });
}

function redireccionar() {
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
        }
        else {
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
    });
    $.post("../ajax/cotizacion.php?op=listarCostoFinal&id=" + idCliente, function (x) {
        document.getElementById("costoFinal").value = x;
    });
}

function aprobar(idCliente) {

     alertify.confirm('Aprobar', '¿Seguro quieres Aprobar la solicitud?', function(){
        
         $.post("../ajax/cotizacion.php?op=aprobar&id=" + idCliente, function (x) {
       
         if(x){
             alertify.success("Aprobado");
              location.reload(true) ;
         }else{
             alertify.error("No se pudo aprobar la solicitud");
             location.reload(true) ;
         }

        
    }//post
               
               );
       
    }, function(){}  );
    
    
    
    
}

function baja(idCliente) {
    
    alertify.confirm('Eliminar', '¿Seguro quieres eliminar la solicitud?', function(){
        
         $.post("../ajax/cotizacion.php?op=baja&id=" + idCliente, function (x) {
       
         if(x){
             alertify.success("Eliminado");
              location.reload(true) ;
         }else{
             alertify.error("No se pudo eliminar la solicitud");
             location.reload(true) ;
         }

        
    }//post
               
               );
       
    }, function(){}  );
    
   
    
}


function recalcular() {
    var diasTabla = document.getElementById("diasTabla").value;
    var diasExtra = document.getElementById("diasExtra").value;
    var costoDescuento = document.getElementById("costoDescuento").value;
    var costoNormal = document.getElementById("costoNormal").value;
    var costoAumento = document.getElementById("costoAumento").value;
    //var semestral = document.getElementById("semestral").value;
    //var anual = document.getElementById("anual").value;
    if (diasExtra == "") {
        bootbox.alert("Debes ingresar un numero para hacer el calculo");
    }
    else {
        var diasNuevos = (parseFloat(diasTabla) + parseFloat(diasExtra));
        var costoDiaAdd = (16875 * 0.66 * diasExtra);
        var aux = (parseFloat(costoNormal) + parseFloat(costoDiaAdd));
        //alert(aux);
        $("#costos").html('<thead style="background-color:#A9D0F5"> <th>No. Dias de acuerdo a Tabla</th> <th>Costo con Descuento </th> <th>Costo Normal</th><th>Costo con Aumento</th></thead><tr class="filas "><td id="">' + diasNuevos + '</td>  <td id="costoDescuento">$' + (aux * 0.9) + '</td><td id="costoNormal" >$' + aux + '</td><td id="costoAumento">$' + (aux * 1.2) + '</td> </tr> ');
    }
}
init();