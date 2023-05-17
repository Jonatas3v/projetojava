<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=3, initial-scale=1.0">
    <link rel="shortcut icon" href="./imagens/logooficial.png" type="image/x-icon">
    <link rel="stylesheet" href="./css/footernovo.css">
    <!-- <link rel="stylesheet" href="./css/apresentacao.css"> -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://getbootstrap.com/docs/5.2/assets/css/docs.css" rel="stylesheet">
    <title>Sobre Nós</title>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</head>

<style>
    body {
        background-color: #f5f5f5;
    }

    /* .container {
        width: 300px;
        height: 150px;
        background: #900;
        color: #FFF;
        padding: 20px;
        border: 5px solid #CCC;
    } */
</style>

<body>
    <!-- NavBar  -->
    <nav class="navbar navbar-expand-lg bg-body-tertiary" style="margin-bottom: 10px; margin-top: -10px; justify-content: space-between;">
        <div class="container-fluid" Style="background-color: #ff7c00;">
            <a class="navbar-brand" href="paginicial.php">
                <img src="./imagens/logooficial.png" width="70px" alt="">
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link active" href="pagcardapio.jsp" style="font-size: larger;">Cardápio</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link active" href="pagapresentacao.jsp" style="font-size: larger;">Sobre</a>
                    </li>
                </ul>
                <!-- <div class="search-box">
          <input type="text" class="search-txt" placeholder="Pesquisa">
          <a href="#">
            <img src="./imagens/lupa.png" alt="lupa" height="20px" width="20px">
          </a>
        </div> -->

                <ul class="nav-item" style="margin-top: 15px;">
                    <a class="nav-link active" href="./telalogin.php">
                        <img src="./imagens/iconchef.svg" alt="login" style="width: 50px;">
                    </a>
                </ul>
                <ul class="nav-item" style="margin-top: 15px;">
                    <a class="nav-link active" href="./pagcarrinho.php">
                        <img src="./imagens/carrinho.svg" alt="carrinho" style="width: 35px;">
                    </a>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Banner -->
    <div class="container">
        <div class="card text-bg-dark" style="margin:0 10px 10px 10px; border: none">
            <img src="./imagens/criadores.png" class="card-img" href="..." alt="...">
            <div class="card-img-overlay">
                <h1 class="card-title"></h1>
                <p class="card-text"></p>
                <p class="card-text">
                    <small></small>
                </p>
            </div>
        </div>
    </div>
    <br><br>

    <!-- Texto Apresentação -->
    <div class="container">
        <div class="row">
            <div class="col-sm" style="width: 300px; height: 280px; padding: 10px 10px; margin: 15px; border: 5px solid White; background: white">
                <center>
                    <h1 style="font-family: Trebuchet MS, sans-serif;" >Missão</h1>
                    
                </center>
                <p style="padding: 0 40px;  font-family: 'Nunito', sans-serif;">
                    Empresa de produtos alimentícios voltados para facilitar o bem estar diário de quem busca uma alimentação saudável.
                    Oferecendo-lhes a praticidade e acessibilidade a um cronograma alimentar estruturado de acordo com o perfil de cada um dos nossos clientes.
                </p>
            </div>
            <div class="col-sm" style="width: 300px; height: 280px; padding: 10px 10px; margin: 15px; border: 5px solid White; background: white">
                <center>
                    <h1 style="font-family: Trebuchet MS, sans-serif;">Visão</h1>
                    <br>
                    <p style="padding: 0 45px; font-family: 'Nunito', sans-serif;">
                        Participar da alimentação saudável diária dos brasileiros, buscando se consolidar e ser referência no mercado até 2030.
                    </p>
                </center>
            </div>
            <div class="col-sm" style="width: 300px; height: 280px; padding: 10px 10px; margin: 15px; border: 5px solid White; background: white">
                <center>
                    <h1 style="font-family: Trebuchet MS, sans-serif;">Valores</h1>
                    <br>
                    1. Responsabilidade Socioambiental. 
                    <br>
                </center>
                <p style="padding: 0 62px; font-family: 'Nunito', sans-serif;">
                    2. Agilidade.
                    <br>
                    3. Prontidão.
                </p>
            </div>
        </div>
    </div>
    <br><br>

    <!-- Foto em grupo -->
    <section>
        <div class="container" style="width: 800px; height: 520px; padding: 10px 10px; border: 5px solid White; background: white">
            <center>
                <h1 style="font-family: Trebuchet MS, sans-serif;">Criadores do Click Chef</h1>
                <img src="./imagens/fotogrupo2.jpg" alt="Foto de grupo">
                <p style="font-size: smaller; color: gray;">(Da esquerda pra direita: Jéssica Mattos, Sara Ketelim, Beatriz Ferreira, Amanda Miranda e Caio Gomes.)</p>
            </center>

        </div>
    </section>


    <!-- footer novo -->
    <footer>
        <div class="container">
            <footer class="d-flex flex-wrap justify-content-between align-items-center py-3 my-4 border-top">
                <div class="col-md-4 d-flex align-items-center">
                    <a href="/" class="mb-3 me-2 mb-md-0 text-muted text-decoration-none lh-1">
                        <svg class="bi" width="30" height="24">
                            <use xlink:href="#bootstrap" />
                        </svg>
                    </a>
                    <span class="mb-3 mb-md-0 text-muted">&copy;2022 Click<a style="color: #ff7c00;">Chef</a></span>
                </div>

                <ul class="nav col-md-4 justify-content-end list-unstyled d-flex">
                    <li class="ms-3">
                        <a class="text-muted" href="#">
                            <a href="#">
                                <i class="fa fa-linkedin" style="color: #ff7c00"></i>
                            </a>
                    </li>
                    <li class="ms-3">
                        <a class="text-muted" href="#">
                            <a href="https://www.instagram.com/click_chefrj/">
                                <i class="fa fa-instagram" style="color: #ff7c00"></i>
                            </a>
                    </li>
                    <li class="ms-3">
                        <a class="text-muted" href="#">
                            <a href="#" img="">
                                <i class="fa fa-whatsapp" style="color: #ff7c00"></i>
                            </a>
                    </li>
                </ul>
            </footer>
        </div>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/93c1a40890.js" crossorigin="anonymous"></script>
</body>

</html>