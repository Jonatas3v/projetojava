<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <?php
include "conexao.php";

$admnome = $_POST['admnome'];
$admsobrenome = $_POST['admsobrenome'];
$admcpf = $_POST['admcpf'];
$admfuncao = $_POST['admfuncao'];
$admtelefone = $_POST['admtelefone'];
$admemail = $_POST['admemail'];
$admsenha = $_POST['admsenha'];

$sql = "INSERT INTO `cadastroadm`(`admnome`, `admsobrenome`, `admcpf`, `admfuncao`, `admtelefone`, `admemail`, `admsenha`) 
VALUES ('$admnome','$admsobrenome','$admcpf','$admfuncao','$admtelefone','$admemail','$admsenha')";

$inserir = mysqli_query($conexao, $sql);

?>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
<link rel="shortcut icon" href="./imagens/logooficial.png" type="image/x-icon">
<title>Cadastro</title>
<style>
    body {
        background-color: #f9e3cf;
    }

    .botao {
        background-color: #ff7c00;
        border: none;
        color: white;
        padding: 8px 32px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 20px;
        margin: 10px 2px;
        cursor: pointer;
        border-radius: 20px;
    }

    * {
        margin: 0px;
        padding: 0px;
    }

    .navlateral {
        background-color: #ff7c00;
        height: 100%;
        width: 150px;
        position: fixed;
        z-index: 1;
        overflow: hidden;
        padding-top: 20px;
    }

    .navlateral a {
        text-decoration: none;
        color: black;
        font-size: 20px;
        padding: 6px 10px 6px 18px;
        display: block;
    }

    .navlateral a:hover {
        background-color: #ff7c00;
        color: whitesmoke
    }

    main {
        margin-left: 150px;
        padding: 0 10px;
    }

    @media (max-width:800px) {
        .navlateral {
            width: 120px;
        }

        .navlateral a {
            font-size: 15px;
        }

        main {
            margin-left: 120px;
        }
    }
</style>
<div class="navlateral">
    <center>
        <img src="./imagens/logooficial.png" width="60px" alt="">
    </center>
    <a href="#">Pedidos</a>
    <a href="./admlistafuncionario.php">Funcionários</a>
    <a href="./admlistacliente.php">Clientes</a>
    <a href="#">Cardápio</a>
</div>
<main>
    <div class="container" style="width: 800px;">
        <center>
            <h3>Cadastrar novo funcionário</h3>
            <div style="padding-top: 5px;">
                <a href="admcadastro.php" class="botao" role="button">Cadastrar</a>
                <br>
                <br>
            </div>
            <h3>Lista de funcionários</h3>
            <div style="padding-top: 5px;">
                <a href="admlistafuncionario.php" class="botao" role="button">Listagem</a>
            </div>
        </center>
    </div>
</main>