<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <link rel="shortcut icon" href="./imagens/logooficial.png" type="image/x-icon">
    <title>Clientes</title>
</head>
<style>
    body {
        background-color: #f9e3cf;
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

    .botao {
        background-color: #ff7c00;
        border: none;
        color: white;
        padding: 4px 16px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 15px;
        margin: 5px 1px;
        cursor: pointer;
        border-radius: 20px;
    }
</style>

<body>
    <div class="navlateral">
        <center>
            <img src="./imagens/logooficial.png" width="50px" alt="">
        </center>
        <a href="#">Pedidos</a>
        <a href="./admlistafuncionario.php">Funcionários</a>
        <a href="./admlistacliente.php">Clientes</a>
        <a href="./admlistaproduto.php">Cardápio</a>
    </div>

    <main>
        <div class="container">
            <center>
                <img src="./imagens/logooficial.png" alt="logo Click Chef" style="width: 80px;  margin-top: 20px;">
                <h1 style="margin-bottom: 20px;">Lista de Clientes</h1>
            </center>
            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">Nome</th>
                        <th scope="col">Sobrenome</th>
                        <th scope="col">CPF</th>
                        <th scope="col">Telefone</th>
                        <th scope="col">Endereço</th>
                        <th scope="col">Complemento</th>
                        <th scope="col">Email</th>
                        <th scope="col">Ações</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <?php
                        include "conexao.php";
                        $sql = "SELECT * FROM `cadastrocliente`";
                        $busca = mysqli_query($conexao, $sql);

                        while ($array = mysqli_fetch_array($busca)) {
                           $idcliente = $array['idcliente'];
                            $nome = $array['nome'];
                            $sobrenome = $array['sobrenome'];
                            $cpf = $array['cpf'];
                            $telefone = $array['telefone'];
                            $endereco = $array['endereco'];
                            $complemento = $array['complemento'];
                            $email = $array['email'];

                        ?>

                            <td><?php echo $nome ?></td>
                            <td><?php echo $sobrenome ?></td>
                            <td><?php echo $cpf ?></td>
                            <td><?php echo $telefone ?></td>
                            <td><?php echo $endereco ?></td>
                            <td><?php echo $complemento ?></td>
                            <td><?php echo $email ?></td>
                            <td>
                                <a href="clienteeditar.php?id=<?php echo $idcliente ?>" class="botao" role="button" style="margin-right: 5px;">Editar</a>
                                <a href="clienteexcluir.php?id=<?php echo $idcliente ?>" class="botao" role="button" style="margin-right: 5px;">Excluir</a>
                            </td>

                    </tr>
                </tbody>
            <?php } ?>

            </table>
        </div>
    </main>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</body>

</html>