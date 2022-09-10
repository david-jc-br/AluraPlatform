<?php
  include("./config.php");
  $con = mysqli_connect($host, $login, $senha, $bd);
  if(isset($_POST["idCurso"])){
    $sql = "SELECT idCurso FROM Curso WHERE idCurso=".$_POST["idCurso"];
    $result = mysqli_query($con, $sql);
    if(mysqli_num_rows($result)!=0){
      $sql = "UPDATE Curso
              SET nomeCurso       ='".$_POST["nomeCurso"]."',
                  plano           ='"   .$_POST["plano"]."'
              WHERE idCurso=".$_POST["idCurso"];
    }
  }
  else
  {
    $sql = "INSERT INTO Curso VALUES (NULL,'".$_POST["nomeCurso"]."','".$_POST["plano"]."')";
  }
  mysqli_query($con, $sql);
  mysqli_close($con);
  header("location: ./index.php");
?>
