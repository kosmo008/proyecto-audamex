$("#frmAcceso").on('submit',function(e)
{
	e.preventDefault();
    logina=$("#logina").val();
    clavea=$("#clavea").val();

    $.post("../ajax/login.php?op=verificar", 
        {"logina":logina,"clavea":clavea},
         function(data)
    {
        if (data!=null)
        {
              alert("Bienvenido! "+data);
             $(location).attr("href","form-step.php"); 
					
        }
        else
        {
            alert("Usuario y/o Password incorrectos");
        }
    });
})