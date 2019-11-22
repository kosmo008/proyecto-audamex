<?php
session_start(); 

	include '../ajax/conexion2.php';

$cnx = conectar();

switch ($_GET["op"]){
	
case 'verificar':
		$logina=$_POST['logina'];
	    $clavea=MD5($_POST['clavea']);
        
        $tempL = trim($logina);
        $tempL = stripcslashes($tempL);
        $tempL = htmlspecialchars($tempL);  
        
        $tempU = trim($clavea);
        $tempU = stripcslashes($tempU);
        $tempU = htmlspecialchars($tempU);
        

	   $query="SELECT idusuario,usuario,password,tipo,nombre_user FROM usuario WHERE estado != 0 AND usuario='$tempL' AND password='$tempU'"; 
	  // $queryObra="SELECT A.obra_idobra FROM usuario U, asignacion A WHERE U.idusuario=A.usuario_idusuario AND  U.usuario='$tempL' AND U.pasword='$tempU'"; 

		$rspta=$cnx->query($query);
		//$rsptaObra=$cnx->query($queryObra);

		$fetch=$rspta->fetch_object();
		//$fetchObra=$rsptaObra->fetch_object();
        
        

		//if (isset($fetch) || isset($fetchObra))
        
        $resultadoConsulta=null;
        
        if (isset($fetch))
	    {
	        //Declaramos las variables de sesión
	        $_SESSION['idusuario']=$fetch->idusuario;
	        $_SESSION['usuario']=$fetch->usuario;
	        $_SESSION['password']=$fetch->password;
	        $_SESSION['tipo']=$fetch->tipo;
	        $_SESSION['nombre_user']=$fetch->nombre_user;
	        //$_SESSION['obra_idobra']=$fetchObra->obra_idobra;
	    $resultadoConsulta='1';    
	    }else{
          $resultadoConsulta='0';    
        }
        
        
	    echo $resultadoConsulta;
	break;
        
        
 
$cnx->close();
	
}





?>