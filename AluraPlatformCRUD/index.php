<?php
header("Content-Type: text/html; charset=UTF-8",true);
?>
<html>
<head><title>Plataforma Alura</title></head>
<style>
  h1 { font-family: Sans-serif; color: #172F33; } 
  body{background-color:#6D7F82;}
  td{font-family: Sans-serif; color: #172F33; font-size: 18px}
  table, td {border-collapse: separate; border-spacing: 0; border: 1px solid black; border-radius: 5px;}

</style>
<body>
<body>
<center><h1>Plataforma Alura</h1></center>

<!-- Tabela Curso -->

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
                     <td width="60%" align="center"><b>Nome </b></td>
                     <td width="15%" align="center"><b>Tipo de Plano</b></td>
                     <td width="20%" align="center"><b>Opções</b></td>
    </tr>
<?php
  while($dados = mysqli_fetch_row($tabela)){
?>
  <tr bgcolor="#63A5AF" align="center">
      <td><?php echo $dados[0]; ?></td>
      <td><?php echo $dados[1]; ?></td>
      <td><?php echo $dados[2]; ?></td>
	  <td align="center">
	    <input type="button"value="Editar" style="background-color:#12488B;color:white;font-family:Sans-serif;font-size: 18px;border-radius: 5px;width:95px" onclick="location.href='form_incluir.php?idCurso=<?php echo $dados[0]; ?>'">

      <input type="button" style="background-color:#C01C28;color:white;font-family:Sans-serif;font-size: 18px;border-radius: 5px;width:95px" value="Excluir"  onclick="location.href='excluir.php?idCurso=<?php echo $dados[0]; ?>'">
	  </td>
  </tr>
<?php
  }
?>
<tr bgcolor="#26A269"><td colspan="30" height="15"></td></tr>
<?php
mysqli_close($con);
?>
<tr><td colspan="20" align="center"><input type="submit" style="background-color:#004525;color:white;font-family: Sans-serif;font-size: 18px;border-radius: 5px;width:1000px;" value="Adicionar novo Curso"></td></tr>
<?php
}
?>
</table>
</form>

<!-- Tabela Aluno -->

<center><h1>Alunos</h1></center>
<form name="form1" method="POST" action="form_incluir.php">
<table align="center" width="50%">
<?php
include("./config.php");
$con = mysqli_connect($host, $login, $senha, $bd);
$sql = "SELECT Aluno.*
        FROM Aluno
        ORDER BY idAluno";
$tabela = mysqli_query($con, $sql);
?>
	<tr border="2" frame="hsides" rules="rows" bgcolor="#26A269">
                     <td width="5%" align="center"><b>ID</b></td>
                     <td width="50%" align="center"><b>Nome</b></td>
                     <td width="5%" align="center"><b>Sexo</b></td>
    </tr>
<?php
  while($dados = mysqli_fetch_row($tabela)){
?>
  <tr bgcolor="#63A5AF" align="center">
      <td><?php echo $dados[0]; ?></td>
      <td><?php echo $dados[1]; ?></td>
      <td><?php echo $dados[2]; ?></td>
  </tr>
<?php
  }
?>
<tr bgcolor="#26A269"><td colspan="24" height="10"></td></tr>
<?php
mysqli_close($con);
?>
</table>
</form>

<!-- Tabela Matrícula -->

<center><h1>Matrículas</h1></center>
<form name="form1" method="POST" action="form_incluir.php">
<table align="center" width="50%">
<?php
include("./config.php");
$con = mysqli_connect($host, $login, $senha, $bd);
$sql = "SELECT Matricula.*
        FROM Matricula
        ORDER BY idAluno";
$tabela = mysqli_query($con, $sql);
?>
	<tr border="2" frame="hsides" rules="rows" bgcolor="#26A269">
                     <td width="5%" align="center"><b>Progresso</b></td>
                     <td width="20%" align="center"><b>Data de Inicío</b></td>
                     <td width="15%" align="center"><b>ID Curso</b></td>
                     <td width="15%" align="center"><b>ID Aluno</b></td>
                     <td width="5%" align="center"><b>Certificado</b></td>
    </tr>
<?php
  while($dados = mysqli_fetch_row($tabela)){
?>
  <tr bgcolor="#63A5AF" align="center">
      <td><?php echo $dados[0]; ?></td>
      <td><?php echo $dados[1]; ?></td>
      <td><?php echo $dados[2]; ?></td>
      <td><?php echo $dados[3]; ?></td>
      <td><?php echo $dados[4]; ?></td>
  </tr>
<?php
  }
?>
<tr bgcolor="#26A269"><td colspan="24" height="10"></td></tr>
<?php
mysqli_close($con);
?>
</table>
</form>

<!-- Tabela Professor -->

<center><h1>Professores</h1></center>
<form name="form1" method="POST" action="form_incluir.php">
<table align="center" width="70%">
<?php
include("./config.php");
$con = mysqli_connect($host, $login, $senha, $bd);
$sql = "SELECT Professor.*
        FROM Professor
        ORDER BY idProfessor";
$tabela = mysqli_query($con, $sql);
?>
	<tr border="2" frame="hsides" rules="rows" bgcolor="#26A269">
                     <td width="5%" align="center"><b>ID</b></td>
                     <td width="40%" align="center"><b>Nome</b></td>
                     <td width="35%" align="center"><b>Especialidade</b></td>
                     <td width="10%" align="center"><b>Salário</b></td>
                     <td width="5%" align="center"><b>Sexo</b></td>
    </tr>
<?php
  while($dados = mysqli_fetch_row($tabela)){
?>
  <tr bgcolor="#63A5AF" align="center">
      <td><?php echo $dados[0]; ?></td>
      <td><?php echo $dados[1]; ?></td>
      <td><?php echo $dados[2]; ?></td>
      <td><?php echo $dados[3]; ?></td>
      <td><?php echo $dados[4]; ?></td>
  </tr>
<?php
  }
?>
<tr bgcolor="#26A269"><td colspan="24" height="10"></td></tr>
<?php
mysqli_close($con);
?>
</table>
</form>

<!-- Tabela Licencia -->

<center><h1>Licencia</h1></center>
<form name="form1" method="POST" action="form_incluir.php">
<table align="center" width="11%">
<?php
include("./config.php");
$con = mysqli_connect($host, $login, $senha, $bd);
$sql = "SELECT Licencia.*
        FROM Licencia
        ORDER BY idProfessor";
$tabela = mysqli_query($con, $sql);
?>
	<tr border="2" frame="hsides" rules="rows" bgcolor="#26A269">
                     <td width="5%" align="center"><b>ID Professor</b></td>
                     <td width="5%" align="center"><b>ID Curso</b></td>
    </tr>
<?php
  while($dados = mysqli_fetch_row($tabela)){
?>
  <tr bgcolor="#63A5AF" align="center">
      <td><?php echo $dados[0]; ?></td>
      <td><?php echo $dados[1]; ?></td>
  </tr>
<?php
  }
?>
<tr bgcolor="#26A269"><td colspan="24" height="10"></td></tr>
<?php
mysqli_close($con);
?>
</table>
</form>

<!-- Tabela Evento -->

<center><h1>Eventos</h1></center>
<form name="form1" method="POST" action="form_incluir.php">
<table align="center" width="70%">
<?php
include("./config.php");
$con = mysqli_connect($host, $login, $senha, $bd);
$sql = "SELECT Evento.*
        FROM Evento
        ORDER BY idEvento";
$tabela = mysqli_query($con, $sql);
?>
	<tr border="2" frame="hsides" rules="rows" bgcolor="#26A269">
                     <td width="5%" align="center"><b>ID</b></td>
                     <td width="40%" align="center"><b>Nome</b></td>
                     <td width="10%" align="center"><b>Carga Horária</b></td>
                     <td width="15%" align="center"><b>Data de Inicío</b></td>
                     <td width="15%" align="center"><b>Data de Término</b></td>
    </tr>
<?php
  while($dados = mysqli_fetch_row($tabela)){
?>
  <tr bgcolor="#63A5AF" align="center">
      <td><?php echo $dados[0]; ?></td>
      <td><?php echo $dados[1]; ?></td>
      <td><?php echo $dados[2]; ?></td>
      <td><?php echo $dados[3]; ?></td>
      <td><?php echo $dados[4]; ?></td>
  </tr>
<?php
  }
?>
<tr bgcolor="#26A269"><td colspan="24" height="10"></td></tr>
<?php
mysqli_close($con);
?>
</table>
</form>

<!-- Tabela Coordena -->

<center><h1>Coordena</h1></center>
<form name="form1" method="POST" action="form_incluir.php">
<table align="center" width="11%">
<?php
include("./config.php");
$con = mysqli_connect($host, $login, $senha, $bd);
$sql = "SELECT Coordena.*
        FROM Coordena
        ORDER BY idEvento";
$tabela = mysqli_query($con, $sql);
?>
	<tr border="2" frame="hsides" rules="rows" bgcolor="#26A269">
                     <td width="5%" align="center"><b>ID Evento</b></td>
                     <td width="5%" align="center"><b>ID Professor</b></td>
    </tr>
<?php
  while($dados = mysqli_fetch_row($tabela)){
?>
  <tr bgcolor="#63A5AF" align="center">
      <td><?php echo $dados[0]; ?></td>
      <td><?php echo $dados[1]; ?></td>
  </tr>
<?php
  }
?>
<tr bgcolor="#26A269"><td colspan="24" height="10"></td></tr>
<?php
mysqli_close($con);
?>
</table>
</form>

<!-- Tabela HoraAcesso -->

<center><h1>Horário de Acesso</h1></center>
<form name="form1" method="POST" action="form_incluir.php">
<table align="center" width="50%">
<?php
include("./config.php");
$con = mysqli_connect($host, $login, $senha, $bd);
$sql = "SELECT HoraAcesso.*
        FROM HoraAcesso
        ORDER BY idEvento";
$tabela = mysqli_query($con, $sql);
?>
	<tr border="2" frame="hsides" rules="rows" bgcolor="#26A269">
                     <td width="10%" align="center"><b>ID Evento</b></td>
                     <td width="10%" align="center"><b>ID Funcionário</b></td>
                     <td width="10%" align="center"><b>Data de Acesso</b></td>
                     <td width="10%" align="center"><b>Horário Inicial</b></td>
                     <td width="10%" align="center"><b>Horário Final</b></td>
    </tr>
<?php
  while($dados = mysqli_fetch_row($tabela)){
?>
  <tr bgcolor="#63A5AF" align="center">
      <td><?php echo $dados[0]; ?></td>
      <td><?php echo $dados[1]; ?></td>
      <td><?php echo $dados[2]; ?></td>
      <td><?php echo $dados[3]; ?></td>
      <td><?php echo $dados[4]; ?></td>
  </tr>
<?php
  }
?>
<tr bgcolor="#26A269"><td colspan="24" height="10"></td></tr>
<?php
mysqli_close($con);
?>
</table>
</form>

<!-- Tabela Empresa -->
<center><h1>Empresas</h1></center>
<form name="form1" method="POST" action="form_incluir.php">
<table align="center" width="30%">
<?php
include("./config.php");
$con = mysqli_connect($host, $login, $senha, $bd);
$sql = "SELECT Empresa.*
        FROM Empresa
        ORDER BY idEmpresa";
$tabela = mysqli_query($con, $sql);
?>
	<tr border="2" frame="hsides" rules="rows" bgcolor="#26A269">
                     <td width="5%" align="center"><b>ID</b></td>
                     <td width="40%" align="center"><b>Nome</b></td>
    </tr>
<?php
  while($dados = mysqli_fetch_row($tabela)){
?>
  <tr bgcolor="#63A5AF" align="center">
      <td><?php echo $dados[0]; ?></td>
      <td><?php echo $dados[1]; ?></td>
  </tr>
<?php
  }
?>
<tr bgcolor="#26A269"><td colspan="24" height="10"></td></tr>
<?php
mysqli_close($con);
?>
</table>
</form>

<!-- Tabela Funcionário -->

<center><h1>Funcionários</h1></center>
<form name="form1" method="POST" action="form_incluir.php">
<table align="center" width="60%">
<?php
include("./config.php");
$con = mysqli_connect($host, $login, $senha, $bd);
$sql = "SELECT Funcionario.*
        FROM Funcionario
        ORDER BY idFuncionário";
$tabela = mysqli_query($con, $sql);
?>
	<tr border="2" frame="hsides" rules="rows" bgcolor="#26A269">
                     <td width="5%" align="center"><b>ID</b></td>
                     <td width="40%" align="center"><b>Nome</b></td>
                     <td width="30%" align="center"><b>Cargo</b></td>
                     <td width="15%" align="center"><b>ID Empresa</b></td>
    </tr>
<?php
  while($dados = mysqli_fetch_row($tabela)){
?>
  <tr bgcolor="#63A5AF" align="center">
      <td><?php echo $dados[0]; ?></td>
      <td><?php echo $dados[1]; ?></td>
      <td><?php echo $dados[2]; ?></td>
      <td><?php echo $dados[3]; ?></td>
  </tr>
<?php
  }
?>
<tr bgcolor="#26A269"><td colspan="24" height="10"></td></tr>
<?php
mysqli_close($con);
?>
</table>
</form>

<!-- Tabela Participa -->

<center><h1>Participa</h1></center>
<form name="form1" method="POST" action="form_incluir.php">
<table align="center" width="11%">
<?php
include("./config.php");
$con = mysqli_connect($host, $login, $senha, $bd);
$sql = "SELECT Participa.*
        FROM Participa
        ORDER BY idEvento";
$tabela = mysqli_query($con, $sql);
?>
	<tr border="2" frame="hsides" rules="rows" bgcolor="#26A269">
                     <td width="5%" align="center"><b>ID Evento</b></td>
                     <td width="5%" align="center"><b>ID Funcionário</b></td>
    </tr>
<?php
  while($dados = mysqli_fetch_row($tabela)){
?>
  <tr bgcolor="#63A5AF" align="center">
      <td><?php echo $dados[0]; ?></td>
      <td><?php echo $dados[1]; ?></td>
  </tr>
<?php
  }
?>
<tr bgcolor="#26A269"><td colspan="24" height="10"></td></tr>
<?php
mysqli_close($con);
?>
</table>
</form>

</body>
</html>


