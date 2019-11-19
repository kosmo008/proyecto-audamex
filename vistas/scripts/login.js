$("#frmAcceso").on('submit',function(e)
{
	e.preventDefault();
    logina=$("#logina").val();
    clavea=$("#clavea").val();

    $.post("../ajax/usuario_f.php?op=verificar", 
        {"logina":logina,"clavea":clavea},
         function(data)
    {
        if (data!="null")
        {
            bootbox.alert("Bienvenido! ");
             $(location).attr("href","cotizacion.php");            
        }
        else
        {
            bootbox.alert("Usuario y/o Password incorrectos");
        }
    });
})