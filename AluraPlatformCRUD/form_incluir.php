<?php
header("Content-Type: text/html; charset=UTF-8",true);
?>
<html>
<head><title>Inserir | Editar uma Curso.</title></head>
<style>
  h1 { font-family: Sans-serif; color: #172F33; } 
  body{background-color:#63A5AF;}
  td, input{font-family: Sans-serif; color: #172F33; font-size: 18px}


</style>
<body>
<body>
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
  <center><h1>Cadastrar Novo Curso</h1></center>
<?php
}
?>
<table border="0" align="center" width="60%">
<tr><td width="25%">Nome:</td>
    <td colspan="2" width="90%">
    <input type="text" name="nomeCurso" value="<?php echo @$vetor['nomeCurso']; ?>" maxlength="70" size="70">
  </td>
</tr>
<tr><td width="25%">Tipo de Plano:</td>
    <td colspan="1" width="90%">
	  <input type="text" name="plano" value="<?php echo @$vetor['plano']; ?>" maxlength="70" size="70">
</tr>
<tr><td colspan="5" align="center">
      <input type="submit" style="background-color:#004525;color:white;font-family:Sans-serif;font-size: 18px;border-radius: 5px;width:90px" value="Salvar">
      <input type="button" style="background-color:#C01C28;color:white;font-family:Sans-serif;font-size: 18px;border-radius: 5px;width:90px" value="Cancelar" onclick="location.href='index.php'">
    </td>
</tr>
</table>
</form>
</body>
</html>