<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <!-- <link rel="stylesheet" href="./css/cardcardapio.css"> -->
    <link rel="shortcut icon" href="./imagens/logooficial.png" type="image/x-icon">
    <title>Cadastro de Produtos</title>
</head>

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
        font-size: 16px;
        margin: 10px 2px;
        cursor: pointer;
        border-radius: 20px;
    }
</style>

<body>

    <div class="container" style="margin-top: 20px; width: 700px; font-size: larger;">
        <center>
            <img src="./imagens/logooficial.png" alt="logo Click Chef" width="80px">
            <h1>Cadastro de Produtos</h1>
        </center>
        <form action="cadastrarproduto.php" method="post">
            <div class="mb3">
                <label for="">Nome</label>
                <input type="text" class="form-control" name="prodnome" placeholder="" required>
            </div>

            <div class="mb3">
                <label for="">Descrição</label>
                <input type="text" class="form-control" name="proddescricao" placeholder="" >
            </div>

            <div class="mb3">
                <label for="">Categoria</label>
                <select class="form-select" name="prodcategoria" required>
                    <option>Almoço</option>
                    <option>Janta</option>
                    <option>Lanche</option>
                    <option>Suco</option>
                    <option>Cup Salada</option>
                    <option>Sopas</option>
                </select>
            </div>

            <div class="mb3">
                <label for="">Preço</label>
                <input type="float" class="form-control" name="prodpreco" placeholder="" >
            </div>
            <center>
                <button type="submit" class="botao">Cadastrar</button>
            </center>
        </form>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</body>

</html>