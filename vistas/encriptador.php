<?php


    $key='Audamex10!'; 	
    $cadena="UGM2420";
	$encrypted = base64_encode(mcrypt_encrypt(MCRYPT_RIJNDAEL_256, md5($key),$cadena, MCRYPT_MODE_CBC, md5(md5($key))));
	$aux=''.$encrypted;
	echo $aux;
    $eje = "IGT9173";

echo " <br> \n    ------>";

	$estatus =is_null($eje) ;

    if($eje !=""){
      echo $eje;
        
    }else{
        echo "variable vacia"; 
    }



echo "<br>";


//Abastos y Distribuciones Institucionales S.A. de C..


$cadena = "Abastos y Distribuciones Institucionales S.A. de C..";
$arrayCadena = str_split($cadena);
echo count($arrayCadena)."<br>";

$usuario="";

for($i=0;$i<6;$i++){
    
    $usuario=$usuario.$arrayCadena[$i];
    
}






echo $usuario;
echo "<br>";
echo "<br>";

$usuario=$usuario.date("d").date("m");
echo "<br>";
echo rand(10, 99);
echo "<br>";
$str = strtoupper($usuario);
echo "<br>";

echo "usuario y fecha----> ".$str;
echo "<br>";









function cifradoPassword($cadena){
	$key='Audamex10!'; 	
    //$cadena="S1st3masg3";
	$encrypted = base64_encode(mcrypt_encrypt(MCRYPT_RIJNDAEL_256, md5($key),$cadena, MCRYPT_MODE_CBC, md5(md5($key))));
	$aux=''.$encrypted;
	return $aux;
	}
	

?>