<?php
ob_start();
session_start();
if(!isset($_SESSION['idUsuarioExt']) ){
    header("Location: loginClientes.php");
}
else
{ 
include "../vistas/header.php";
if($_SESSION['permiso']=='Cliente' )
{
?>
    <script>
        $(document).ready(function () {
            //$(".dial").knob();
            $('.dial').knob({
                'min': 0
                , 'max': 100
                , 'width': 250
                , 'height': 250
                , 'displayInput': true
                , 'fgColor': "#04B404"
                , 'release': function (v) {
                    $("p").text(v);
                }
                , 'readOnly': true
            });
        });
    </script>
    <style>
     
        
        h1 {
            font-family: 'raleway';
            font-size: 40px;
            margin-bottom: 100px;
        }
    </style>
    <div class="container-fluid">
        <!-- Main content -->
         <h1>Solicitudes</h1>
        <section class="content">
           
            <div class="col">
                <input type="text" value="20" class="dial" disabled>
            </div>
        </section>
        </div>
        <!-- /.content -->
   
    <!-- End of Main Content -->
    <?php
                                                }else{
                                                
                                                 require 'sinPermisos.php';}
                                                 
                                                 include "footer.html";


?>
        <!--<script type="text/javascript" src="../public/js/bootstrap-select.min.js"></script> -->
        <script type="text/javascript" src="scripts/step.js"></script>
        <script type="text/javascript" src="scripts/jquery.knob.js"></script>
        <?php 
} 
ob_end_flush(); 
?>