<html>
<body>
<?php


function verificar_estado(){
        $out = shell_exec('sh accion.sh info');
        return $out;
}

$id=$_GET['id'];
$accion=$_GET['accion'];
if ( $id == "a666" )
	{
	if ( $accion == "on" ) 
		{
		shell_exec('sh accion.sh on');
		header("Location: boton.php?id=$id");
       		}
	elseif ($accion == "off") 
		{
		shell_exec('sh accion.sh off');
		header("Location: boton.php?id=$id");
       		}
	else 
	{
		$st = chop(verificar_estado());
		if ( $st == "on" )
		{
			echo "<a href=\"boton.php?id=$id&accion=off\"><img src=on.png width=90px height=30px></a>";
       		}
		else 
		{
			echo "<a href=\"boton.php?id=$id&accion=on\"><img src=off.png width=90px height=30px></a>";
		}
	}
	}
else {
	echo "Hola";
}
?>

