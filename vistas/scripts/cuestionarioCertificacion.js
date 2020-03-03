var tabla;
//Funcion inicial
function init() {
    // mostrarform(false);
    $.post("../ajax/cuestionarioCertificacion.php?op=normas", function (r) {
        $("#normas").html(r);
    });
    $("#formulario").on("submit", function (e) {
        guardaryeditar(e);
    });
}
//guardar o editar
function guardaryeditar(e) {
    e.preventDefault(); //No se activará la acción predeterminada del evento
    $("#btnRegistrar").prop("disabled", true);
    var formData = new FormData($("#formulario")[0]);
    $.ajax({
        url: "../ajax/cuestionarioCertificacion.php?op=guardaryeditar"
        , type: "POST"
        , data: formData
        , contentType: false
        , processData: false
        , success: function (datos) {
            
            if(datos!=false){
                 alertify.confirm('Registro Exitoso',
                                  '<center><legend> Tu folio es: F5-'+datos+'</legend></center>', 
                                  function(){redireccionar();}, 
                                  function(){redireccionar();}).set('labels',{ok:'Confirmar',cancel:'cancelar'});                
               }else{
                 
                alertify.confirm('Registro Fallo', 
                                 'La información no se pudo registrar',
                                 function(){guardaryeditar(e);}, 
                                 function(){alertify.error("error");}).set('labels',{ok:'Reintentar',cancel:'cancelar'});
                   
               }
            
            //.set('labels',{ok:'Reintentar',cancel:'cancelar'})
      
         
        }
    });
}

function redireccionar() {
    alertify.success("Redireccionando");
    window.location.href = 'http://www.audamex.com/';
}


function confirmar(){

var pre = document.createElement('pre');
//Estilo editado.
pre.style.maxHeight = "100%";
pre.style.margin = "0";
pre.style.padding = "100px";
pre.style.whiteSpace = "pre-wrap";
pre.style.fontFamily="Arial";
pre.style.fontSize="23px";
pre.style.textAlign = "justify";
pre.appendChild(document.createTextNode("¿Está seguro de continuar?\nA partir de ahora no podrá editar los datos fiscales de la solicitud\ny declara que los datos son verídicos y están verificados"));
//motrar mensaje de confirmacion

alertify.confirm('<h2>Atencion!</h2>',
                 pre,
                 function(){$('#btn_edit_f1').prop('disabled',true);$('#btn_edit_f1').prop('hidden',true);alertify.success('Habilitado');habilitarCampos(false);},
                 function(){/Al cancelar no ejecuta ninguna accion/}).set({labels:{ok:'Editar', cancel: 'Cancelar'}, padding: false});	
}



init();