<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

include "conexao.jsp";

header("Location: telalogin.php");

$nome = $_POST['nome'];
$sobrenome = $_POST['sobrenome'];
$cpf = $_POST['cpf'];
$telefone = $_POST['telefone'];
$endereco = $_POST['endereco'];
$complemento = $_POST['complemento'];
$email = $_POST['email'];
$senha = $_POST['senha'];

$sql = "INSERT INTO `cadastrocliente`( `nome`, `sobrenome`, `endereco`, `telefone`, `complemento`, `cpf`, `email`, `senha`) 
VALUES ('$nome','$sobrenome','$endereco','$telefone','$complemento','$cpf','$email','$senha')";

$inserir = mysqli_query($conexao, $sql);

<h1> Cadastro concluido! </h1>

</body>
</html>