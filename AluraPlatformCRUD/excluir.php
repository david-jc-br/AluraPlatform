<?php
include("./config.php");
$con = mysqli_connect($host, $login, $senha, $bd);
$sql = "DELETE FROM Curso WHERE idCurso=".$_GET["idCurso"];
mysqli_query($con, $sql);
header("location: ./index.php");
?>