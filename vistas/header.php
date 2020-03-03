<?php
if(strlen(session_id())<1){
    session_start();
}


$nombre= $_SESSION['usuario'];

?>

<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Daniel Cibrian Nieto">
    <title>SIRE</title>
    <!--FONTS-->
    <link href="../public/vendor/font-awesome-4.7/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
    <!--Styles-->
    <link href="../public/css/sb-admin-2.min.css" rel="stylesheet">
    <!-- DataTables -->
    <link rel="stylesheet" href="../public/datatables/buttons.dataTables.min.css">
    <link rel="stylesheet" href="../public/datatables/jquery.dataTables.min.css">
    <link rel="stylesheet" href="../public/datatables/responsive.dataTables.min.css">
    <link rel="stylesheet" href="../public/css/bootstrap-select.min.css">
    
     <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
	<!--Alertify-->
		<link rel="stylesheet" href="../public/js/alertifyjs/css/alertify.min.css" />
		<!-- include a theme -->
		<link rel="stylesheet" href="../public/js/alertifyjs/css/themes/semantic.rtl.min.css" />
	
	<script src="../public/js/alertifyjs/alertify.min.js"></script>
    <!--Alertify-->


	
</head>

<body id="page-top">
    <div id="wrapper">
        <ul class="navbar-nav bg-gradient-primarydash sidebar sidebar-dark accordion" id="accordionSidebar">
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="#">
                <div class="sidebar-brand-icon rotate-n-15"> </div>
                <div class="sidebar-brand-text mx-3"> <img src="../public/images/nuevo_sire_sin2.png" alt="" height="100px"> </div>
            </a>
            <hr class="sidebar-divider my-0">
            <?php  ?>
            <li class="nav-item active">
                <a class="nav-link" href="#"> <i class="fas fa-fw fa-home"></i> <span>AUDAMEX</span></a>
            </li>
            <!-- divisor -->
            <hr class="sidebar-divider">
            <!--inicia menu lateral-->
            <div class="sidebar-heading"> Areas </div>
            <li class="nav-item ">
                <a class="nav-link" href="#"> <i class="fas fa-fw fa-calendar-alt "></i> <span>Calendario</span></a>
            </li>
             <li class="nav-item ">
                <a class="nav-link" href="cotizacion.php"> <i class="fas fa-file-invoice-dollar"></i> <span>Cotización</span></a>
            </li>

            <!-- item de menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseClientes" aria-expanded="true" aria-controls="collapseClientes"> <i class="fas fa-fw fa-address-book "></i> <span>Clientes</span> </a>
                <div id="collapseClientes" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Acciones:</h6> <a class="collapse-item" href="insert_clientes.php">
                            Alta
                        </a> <a class="collapse-item" href="#">
                            Consulta
                        </a>
                    </div>
                </div>
            </li>
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseAuditoria" aria-expanded="true" aria-controls="collapseAuditoria"> <i class="fas fa-fw fa-file-signature"></i> <span>Auditorias</span> </a>
                <div id="collapseAuditoria" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Acciones:</h6>
                        <a class="collapse-item" href="#">Alta</a>
                        <a class="collapse-item" href="#">Consulta</a>
                        <a class="collapse-item" href="#">General</a>
                        <a class="collapse-item" href="#">Mensual</a>
                        <a class="collapse-item" href="#">Auditores</a>
                    </div> 
                </div>
            </li>
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseCertif" aria-expanded="true" aria-controls="collapseCertif"> <i class="fas fa-fw fa-certificate"></i> <span>Certificados</span> </a>
                <div id="collapseCertif" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Acciones:</h6> <a class="collapse-item" href="#">Alta</a> <a class="collapse-item" href="#">Consulta</a>
                    </div>
                </div>
            </li>
           <!-- <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseCotizacion" aria-expanded="true" aria-controls="collapseAuditoria"> <i class="fas fa-file-invoice-dollar"></i> <span>Cotización</span> </a>
                <div id="collapseAuditoria" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Acciones:</h6>
                        <a class="collapse-item" href="insert_auditorias.php">Alta</a>
                        <a class="collapse-item" href="cons_auditorias.php">Consulta</a>
                        <a class="collapse-item" href="#">General</a>
                        <a class="collapse-item" href="../view/programacion_auditorias.php">Mensual</a>
                        <a class="collapse-item" href="../view/disponibilidad_auditor.php">Auditores</a>
                    </div>
                </div>
            </li>-->
            
           
            
            <!-- item de menu -->
            <!-- Divider -->
            <hr class="sidebar-divider d-none d-md-block">
            <!-- Sidebar Toggler (Sidebar) -->
            <div class="text-center d-none d-md-inline">
                <button class="rounded-circle border-0" id="sidebarToggle"></button>
            </div>
        </ul>
        <!-- End of Sidebar -->
        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">
            <!-- Main Content -->
            <div id="content">
                <!-- Topbar -->
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">
                    <!-- Sidebar Toggle (Topbar) -->
                    <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3"> <i class="fa fa-bars"></i> </button>
                    <!-- Topbar Navbar -->
                    <ul class="navbar-nav ml-auto">
                        <!-- Nav Item - Search Dropdown (Visible Only XS) -->
                        <li class="nav-item dropdown no-arrow d-sm-none">
                            <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="fas fa-search fa-fw"></i> </a>
                            <!-- Dropdown - Messages -->
                            <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in" aria-labelledby="searchDropdown">
                                <form class="form-inline mr-auto w-100 navbar-search">
                                    <div class="input-group">
                                        <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
                                        <div class="input-group-append">
                                            <button class="btn btn-primary" type="button"> <i class="fas fa-search fa-sm"></i> </button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </li>
                      
                        <div class="topbar-divider d-none d-sm-block"></div>
                        <!-- Nav Item - User Information -->
                        <li class="nav-item dropdown no-arrow">
                            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <span class="mr-2 d-none d-lg-inline text-gray-600 small"><?php echo $nombre ?></span> <img class="img-profile rounded-circle" src="https://cdn.pixabay.com/photo/2013/07/13/13/38/man-161282_960_720.png"> </a>
                            <!-- Dropdown - User Information -->
                            <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                              <!--  <a class="dropdown-item" href="#"> <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i> Perfil </a>
                                <a class="dropdown-item" href="#"> <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i> Configuraciones </a>
                                <a class="dropdown-item" href="#"> <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i> Historial de Actividad </a>
                                <div class="dropdown-divider"></div>-->
                                <a class="dropdown-item"href="../vistas/cerrar_sesion.php"  data-toggle="modal" data-target="#logoutModal"> <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i> Cerrar Sesión </a>
                               
                            </div>
                        </li>
                    </ul>
                </nav>
                <!-- termina menu lateral-->
