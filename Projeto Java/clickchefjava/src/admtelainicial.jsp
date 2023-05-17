<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="pt-br">
<meta charset="ISO-8859-1">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/adminicial.css">
    <link rel="shortcut icon" href="./imagens/logooficial.jsp" type="image/x-icon">
    <title>Click Chef</title>
</head>

<style>
    body {
        background-color: #f5f5f5;
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

<body>
    <div class="navlateral">
        <center>
            <img src="./imagens/logooficial.png" width="60px" alt="">
        </center>
        <a href="#">Pedidos</a>
        <a href="#">Funcionários</a>
        <a href="#">Clientes</a>
        <a href="#">Cardápio</a>
    </div>
    <main>

    </main>

</body>
</html>
