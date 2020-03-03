<?php
	require_once "../modelos/Proceso.php";
	
	$proceso=new Proceso();
	$idSolicitud=isset($_POST['idSolicitud'])?limpiarcadena($_POST['idSolicitud']):"";
	$opcion=isset($_POST['opcion'])?limpiarcadena($_POST['opcion']):"";
	
	$descripcion=isset($_POST['descripcion'])?$_POST['descripcion']:"";
	$intExt=isset($_POST['intExt'])?$_POST['intExt']:"";
	$sitio=isset($_POST['sitio'])? $_POST['sitio']:"";
	$turno=isset($_POST['turno'])?$_POST['turno']:"";
	$totalPersonas=isset($_POST['totalPersonas'])?$_POST['totalPersonas']:"";
	$encargado=isset($_POST['encargado'])?$_POST['encargado']:"";
	$departamento=isset($_POST['departamento'])?$_POST['departamento']:"";


switch($opcion)
{
	case 'guardar':
		$array_Rec=$descripcion;
		$array_Rec2=$intExt;
		$array_Rec3=$sitio;
		$array_Rec4=$turno;
		$array_Rec5=$totalPersonas;
		$array_Rec6=$encargado;
		$array_Rec7=$departamento;
		$error=true;
		
		if(count($array_Rec)<2)
		{
			echo "Declare actividades para continuar";
		}
		else
		{
			for($i=0; $i<=count($array_Rec)-1;$i++)
			{
					if($array_Rec[$i]=='')
					{
						echo "Describa la actividad #".($i+1);
						$error=false;
						break;
					}
					else if($array_Rec5[$i]<1)
					{
						echo "El numero de peronas es incorrecto proceso#".($i+1);
						$error=false;
						break;
					}else if(strlen($array_Rec6[$i])<1)
					{
						echo "El nombre del encargado no esta determinado proceso#".($i+1);
						$error=false;
						break;
					}
					else if(!valida_Nombre($array_Rec6[$i]))
					{
						echo "Nombre de encargado no valido proceso #".($i+1);
						$error=false;
						break;
					}
					else if(strlen($array_Rec6[$i])<1)
					{
						echo "El departamento no esta definifo proceso #".($i+1);
						$error=false;
						break;
					}
			}
				
			if($error){
					for($i=0; $i<=count($array_Rec)-1;$i++){
						$rspta=$proceso->guardar($idSolicitud,
											$array_Rec[$i],$array_Rec2[$i],
											$array_Rec3[$i],$array_Rec4[$i],
											$array_Rec5[$i],
											$array_Rec6[$i],
											$array_Rec7[$i]);	
						}
					echo 1;
			}
				
		}	
		break;
}
	
							
					
				
	
	
	
	
	
	
	
function valida_Nombre($cadena){
	$permitido_Nombre="abcdefghijklmnñopqrstuvwxyzABCDEFGHIJKLMNÑOPQRSTUVWXYZ .";;

		$error=true;
		for ($i=0; $i<strlen($cadena); $i++){
			
			if (strpos($permitido_Nombre, substr($cadena,$i,1))===false){
				$error=false;
				break;
			}
		}
		return $error;
	}
	
?>


