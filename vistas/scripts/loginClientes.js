$("#frmAcceso").on('submit', function (e) {
    e.preventDefault();
    usuarioa = $("#usuarioa").val();
    passworda = $("#passworda").val();

    $.post("../ajax/loginClientes.php?op=verificar", {
            "usuarioa": usuarioa,
            "passworda": passworda
        },
        function (data) {

            if (data != "null") {
               
                $(location).attr("href", "listaSolicitud.php");

            } else {
                bootbox.alert("Usuario y/o Password incorrectos");
            }
        });
})
