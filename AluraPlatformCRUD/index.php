<?php
header("Content-Type: text/html; charset=UTF-8",true);
?>
<html>
<head><title>Plataforma Alura</title></head>
<body>
<body style ="background-color:#6D7F82;">
<center><h1>Cursos</h1></center>
<form name="form1" method="POST" action="form_incluir.php">
<table align="center" width="60%">
<?php
include("./config.php");
$con = mysqli_connect($host, $login, $senha, $bd);
$sql = "SELECT Curso.*
        FROM Curso
        ORDER BY idCurso";
$tabela = mysqli_query($con, $sql);
if(mysqli_num_rows($tabela)==0){
?>
  <tr><td align="center">Nenhum Curso Cadastrado.</td></tr>
  <tr><td align="center"><input type="submit" value="Inserir curso"></td></tr>
<?php
}else{
?>
	<tr border="2" frame="hsides" rules="rows" bgcolor="#26A269">
                     <td width="5%" align="center"><b>ID</b></td>
                     <td width="60%" align="center"><b>Nome do Curso</b></td>
                     <td width="15%" align="center"><b>Tipo de Plano</b></td>
                     <td width="20%" align="center"><b>Editar | Excluir</b></td>
    </tr>
<?php
  while($dados = mysqli_fetch_row($tabela)){
?>
  <tr bgcolor="#63A5AF" align="center">
      <td><?php echo $dados[0]; ?></td>
      <td><?php echo $dados[1]; ?></td>
      <td><?php echo $dados[2]; ?></td>
	  <td align="center">
	    <input type="button" value="Editar" onclick="location.href='form_incluir.php?idCurso=<?php echo $dados[0]; ?>'">
      <input type="button" value="Excluir" onclick="location.href='excluir.php?idCurso=<?php echo $dados[0]; ?>'">
	  </td>
  </tr>
<?php
  }
?>
<tr bgcolor="#26A269"><td colspan="24" height="10"></td></tr>
<?php
mysqli_close($con);
?>
<tr><td colspan="16" align="center"><input type="submit" value="Adicionar novo Curso"></td></tr>
<?php
}
?>
</table>
</form>
</body>
</html>
