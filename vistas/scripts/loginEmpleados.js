$("#frmAcceso").on('submit', function (e) {
    e.preventDefault();
    usuarioa = $("#usuarioa").val();
    passworda = $("#passworda").val();


    $.post("../ajax/loginEmpleados.php?op=verificar", {
             "usuarioa": usuarioa,
            "passworda": passworda
        },
        function (data) {
            if (data != "null") {
              
                $(location).attr("href", "cotizacion.php");
            } else {
                bootbox.alert("Usuario y/o Password incorrectos");
            }
        });
})
