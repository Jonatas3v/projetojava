<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <?php
if (!isset($_SESSION)) {
  session_start();
}
?>
<!DOCTYPE html>
<html lang="pt-br">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Click Chef</title>
  <link rel="shortcut icon" href="./imagens/logooficial.png" type="image/x-icon">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
  <link rel="stylesheet" href="./css/footernovo.css">
  <link rel="stylesheet" href="./css/botao.css">
  <!-- <link rel="stylesheet" href="./css/cardcardapio2.css"> -->
  <!-- <link rel="stylesheet" href="./css/pesquisa1.css"> -->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
  <link rel="icon" href="/docs/5.3/assets/img/favicons/favicon.ico">
  <link rel="icon" href="/docs/5.3/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
  <link rel="icon" href="/docs/5.3/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
</head>
<style>
  body {
    background-color: #f5f5f5;
    font-family: Arial;
  }
</style>

<body>
  <!-- NavBar  -->
  <nav class="navbar navbar-expand-lg bg-body-tertiary" style="margin-bottom: 10px; margin-top: -10px; justify-content: space-between;">
    <div class="container-fluid" Style="background-color: #ff7c00;">
      <a class="navbar-brand" href="paginicial.jsp">
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
          <a class="nav-link active" href="./telalogin.jsp">
            <img src="./imagens/iconchef.svg" alt="login" style="width: 50px;">
          </a>
        </ul>
        <ul class="nav-item" style="margin-top: 15px;">
          <a class="nav-link active" href="./pagcarrinho.jsp">
            <img src="./imagens/carrinho.svg" alt="carrinho" style="width: 35px;">
          </a>
        </ul>
      </div>
    </div>
  </nav>

  <!-- Carrossel -->
  <div class="container1">
    <div id="carouselExampleCaptions" class="carousel slide" data-bs-interval="3000" data-bs-ride="carousel" style="margin: 0 10px 25px 10px;">
      <div class="carousel-indicators">
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
      </div>
      <div class="carousel-inner" style="border-radius: 15px;">
        <div class="carousel-item active">
          <img src="./imagens/carrossel/marmitass.jpg" style="height: 350px; border-radius: 15px;" class="d-block w-100" alt="...">
        </div>
        <div class="carousel-item">
          <img src="./imagens/carrossel/marmitass.jpg" style="height: 350px; border-radius: 15px;" class="d-block w-100" alt="...">
        </div>
      </div>
    </div>
  </div>

  <!-- Cards produtos-->
  <div class="container">
    <h2 style="margin: 25px 10px 10px 10px ; font-family: Trebuchet MS, sans-serif;"> <b>Conheça Nossos Principais Produtos</b></h2>
    <div class="card-group" style="margin-bottom: 25px; ">
      <div class="card" style="margin: 10px 10px 10px 30px; border: none; background-color: #f5f5f5;">
        <img src="./imagens/coxinhabatatadoce.jpg" class="card-img-top" alt="Coxinha de Batata Doce" style="border-radius: 45%; width: 370px; margin-left: 10px; border: 8px solid white;">
        <div class="card-body">
          <h5 class="card-title" style="font-family: Trebuchet MS, sans-serif;"><b>Coxinha de Batata Doce</b></h5>
          <p class="card-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Id sit eum sint ullam, ipsa
            dignissimos similique reiciendis nam laboriosam in voluptatibus neque nihil iste ab natus doloremque, quas
            ratione aspernatur.
          </p>
          <center>
            <button class="cta">
              <span>Comprar</span>
              <svg viewBox="0 0 13 10" height="10px" width="15px">
                <path d="M1,5 L11,5"></path>
                <polyline points="8 1 12 5 8 9"></polyline>
              </svg>
            </button>
          </center>
        </div>
      </div>

      <div class="card" style="margin: 10px 10px 10px 10px; border: none; background-color: #f5f5f5;">
        <img src="./imagens/panquecabanana.jpg" class="card-img-top" alt="Panqueca de Banana" style="border-radius: 45%; width: 370px; margin-left: 20px; border: 8px solid white;">
        <div class="card-body">
          <h5 class="card-title" style="font-family: Trebuchet MS, sans-serif;"><b>Panqueca de Banana</b></h5>
          <p class="card-text">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Similique optio dolorum amet
            beatae
            deleniti adipisci itaque, minima eum, rem nisi debitis praesentium. Exercitationem officia similique
            reiciendis
            laudantium in eum? Sed.
          </p>
          <center>
            <button class="cta">
              <span>Comprar</span>
              <svg viewBox="0 0 13 10" height="10px" width="15px">
                <path d="M1,5 L11,5"></path>
                <polyline points="8 1 12 5 8 9"></polyline>
              </svg>
            </button>
          </center>
        </div>
      </div>
    </div>
  </div>

  <!-- Banner -->
  <div class="container">
    <div class="card text-bg-dark" style="margin:25px 10px 25px 10px; border: none">
      <img src="./imagens/pacotemensem.png" class="card-img" href="..." alt="...">
      <div class="card-img-overlay">
        <h5 class="card-title"></h5>
        <p class="card-text"></p>
        <p class="card-text">
          <small></small>
        </p>
      </div>
    </div>
  </div>

  <!-- Card Planos -->
  <div class="container">
    <div class="card-group" style="margin-bottom: 25px 10px 25px 10px;">
      <div class="card" style="margin: 10px 10px 10px 10px; border: 5px solid white; background-color: white;">
        <!-- <img src="..." class="card-img-top" alt="Plano Semanal" style="border-radius: 20px;"> -->
        <div class="card-body">
          <h2 class="card-title" style="font-family: Trebuchet MS, sans-serif;"><b>Pacote Semanal</b></h2>
          <p class="card-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Id sit eum sint ullam, ipsa
            dignissimos similique reiciendis nam laboriosam in voluptatibus neque nihil iste ab natus doloremque, quas
            ratione aspernatur.
          </p>
          <p>4 Refeições diárias por uma semana
            <li>Café da Manhã</li>
            <li>Almoço</li>
            <li>Lanche da Tarde</li>
            <li>Janta</li>
          </p>
          <h5>
            <p><b>Preço: R$299,99</b></p>
          </h5>
          <center>
            <button class="cta">
              <span>Assinar</span>
              <svg viewBox="0 0 13 10" height="10px" width="15px">
                <path d="M1,5 L11,5"></path>
                <polyline points="8 1 12 5 8 9"></polyline>
              </svg>
            </button>
          </center>
        </div>
      </div>

      <div class="card" style="margin: 10px 10px 10px 10px; border: 5px solid white; background-color: white; ">
        <!-- <img src="..." class="card-img-top" alt="Plano Mensal" style="border-radius: 100px;"> -->
        <div class="card-body">
          <h2 class="card-title" style="font-family: Trebuchet MS, sans-serif;"><b>Pacote Mensal</b></h2>
          <p class="card-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Id sit eum sint ullam, ipsa
            dignissimos similique reiciendis nam laboriosam in voluptatibus neque nihil iste ab natus doloremque, quas
            ratione aspernatur.
          </p>
          <p>4 Refeições diárias durante um mês
            <li>Café da Manhã</li>
            <li>Almoço</li>
            <li>Lanche da Tarde</li>
            <li>Janta</li>
          </p>
          <h5>
            <p><b>Preço: R$399,90</b></p>
          </h5>
          <center>
            <button class="cta" href="https://wa.me/5521974023597?text=Ol%C3%A1%21+Estou+interessado%28a%29+em+assinar+um+plano.">
              <span>Assinar</span>
              <svg viewBox="0 0 13 10" height="10px" width="15px">
                <path d="M1,5 L11,5"></path>
                <polyline points="8 1 12 5 8 9"></polyline>
              </svg>
            </button>
          </center>
        </div>
      </div>
    </div>
  </div>

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
              <a href="./admtelalogin.jsp">
                <img src="./imagens/iconchef.svg" alt="login" style="width: 18px; margin-right: -5px; margin-top: -4px; color: #ff7c00;">
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
  <!-- Card -->
  <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
  <script src="./script.js"></script>

</body>

</html>