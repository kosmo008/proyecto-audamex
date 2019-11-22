<!DOCTYPE html>
<html lang="es">
<?PHP
session_start();
if(isset($_SESSION["usuario"])){
session_destroy();  
}
?>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>SIRE</title>
    <!--FONT-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
    <!-- Styles-->
    <link href="../public/css/sb-admin-2.min.css" rel="stylesheet">
    <link rel="shortcut icon" href="../public/images/logo.png" type="image/png"> </header>

    <body class="bg-gradient-primary">
        <header class="container">
            <div class="container row ">
                <div class="col-sm-2 col-md-2 col-lg-3"> <img class="imgh" src="../public/images/creador_logo_sire2.png" alt="logo sire"> </div>
                <div class="col-sm-8 col-md-8 col-lg-6 align-self-center">
                    <h2 class="h2h">Sistema de Inteligencia y Rendimiento Empresarial</h2> </div>
                <div class="col-sm-2 col-md-2 col-lg-3"> <img class="imgh" src="../public/images/logo.png" alt=""> </div>
            </div>
        </header>
        <div class="container">
            <!-- Outer Row -->
            <div class="row justify-content-center">
                <div class="col-xl-12 col-lg-12 col-md-9">
                    <div class="card o-hidden border-0 shadow-lg my-5">
                        <div class="card-body p-0">
                            <!-- Nested Row within Card Body -->
                            <div class="row  d-flex justify-content-center">
                                <div class="col-lg-5 d-flex justify-content-center ">
                                    <!-- d-none d-lg-block bg-login-image -->
                                    <div id="carouselExampleFade" class="carousel carousel-fade align-self-center" data-ride="carousel">
                                        <div class="carousel-inner">
                                            <div class="carousel-item active"> <img class="d-block w-100" src="../public/images/carrusel/audit-4576720_1920.jpg" alt=""> </div>
                                            <div class="carousel-item"> <img class="d-block w-100" src="../public/images/carrusel/business-3365360_1920.jpg" alt=" "> </div>
                                            <div class="carousel-item"> <img class="d-block w-100" src="../public/images/carrusel/paper-3213924_1920.jpg" alt=" "> </div>
                                        </div>
                                        <a class="carousel-control-prev" href="#carouselExampleFade" role="button" data-slide="prev"> <span class="carousel-control-prev-icon" aria-hidden="true"></span> <span class="sr-only">Anterior</span> </a>
                                        <a class="carousel-control-next" href="#carouselExampleFade" role="button" data-slide="next"> <span class="carousel-control-next-icon" aria-hidden="true"></span> <span class="sr-only">Siguiente</span> </a>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="p-5">
                                        <div class="text-center">
                                            <hr>
                                            <h1 class="h4 text-gray-900 mb-4">Inicio de Sesión</h1> </div>
                                        <form name="frmAcceso" id="frmAcceso" method="POST" class="user">
                                            <input type="hidden" name="action" value="LogIn">
                                            <div class="form-group">
                                                <input type="text" class="form-control form-control-user" id="logina" name="logina" placeholder="Usuario" required> </div>
                                            <div class="form-group">
                                                <input type="password" class="form-control form-control-user" id="clavea" name="clavea" placeholder="Contraseña" required> </div>
                                            <div class="form-group"> </div>
                                            <input type="submit" class="btn btn-primary btn-user btn-block" value="Entrar"></input>
                                            <hr> </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Bootstrap core JavaScript-->
        <script src="../public/js/jquery-3.1.1.min.js"></script>
        <script src="../public/js/bootstrap/js/bootstrap.bundle.min.js"></script>
        <!-- Core plugin JavaScript-->
        <script src="../public/js/jquery-easing/jquery.easing.min.js"></script>
        <!-- Custom scripts for all pages-->
        <script src="../public/js/sb-admin-2.min.js"></script>
        <script src="../public/js/bootbox.min.js"></script>
        <script type="text/javascript" src="../vistas/scripts/login.js"></script>
    </body>
    <footer class="sticky-footer">
        <div class="container col align-items-end">
            <div class="copyright">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-6 col-md-6 col-lg-6"> Copyright &copy; 2019 desarrollado por <a href="https:/www.audamex.com/" target="_blank"> Audamex</a>
                            <a href="#"></a>
                        </div>
                        <!--<div class="col-sm-6 col-md-6 col-lg-6 text-right"> <a href="#">Términos & Condiciones</a></div> --></div>
                </div>
            </div>
    </footer>

</html>