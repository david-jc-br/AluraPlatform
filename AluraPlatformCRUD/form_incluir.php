<?php
header("Content-Type: text/html; charset=UTF-8",true);
?>
<html>
<head><title>Inserir/Editar um curso.</title></head>
<body>
<body style ="background-color:#63A5AF;">
<form name="form1" method="POST" action="incluir.php">
<?php
if(isset($_GET["idCurso"])){
  include("./config.php");
  $con = mysqli_connect($host, $login, $senha, $bd);
?>
  <center><h1>Editar Curso</h1></center>
<?php
  $sql = "SELECT Curso.*
          FROM Curso
          WHERE idCurso=".$_GET['idCurso'];
  $result = mysqli_query($con, $sql);
  $vetor = mysqli_fetch_array($result, MYSQLI_ASSOC);
  mysqli_close($con);
?>
  <input type="hidden" name="idCurso" value="<?php echo $_GET['idCurso']; ?>">
<?php
}else{
?>
  <center><h1>Cadastrar novo Curso</h1></center>
<?php
}
?>
<table border="0" align="center" width="60%">
<tr><td width="20%">Nome Do Curso:</td>
    <td colspan="2" width="90%">
    <input type="text" name="nomeCurso" value="<?php echo @$vetor['nomeCurso']; ?>" maxlength="70" size="70">
  </td>
</tr>
<tr><td width="20%">Tipo de Plano:</td>
    <td colspan="2" width="90%">
	  <input type="text" name="plano" value="<?php echo @$vetor['plano']; ?>" maxlength="70" size="70">
</tr>
<tr><td colspan="5" align="center">
      <input type="submit" value="Salvar">
      <input type="button" value="Cancelar" onclick="location.href='index.php'">
    </td>
</tr>
</table>
</form>
</body>
</html>
