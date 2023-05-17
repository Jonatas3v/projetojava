<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

  <!DOCTYPE html>
<html lang="pt-br">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
    integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
    integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
    crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
    integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
    crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
    integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
    crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/swiffy-slider@1.6.0/dist/js/swiffy-slider.min.js" crossorigin="anonymous"
    defer></script>
  <link href="https://cdn.jsdelivr.net/npm/swiffy-slider@1.6.0/dist/css/swiffy-slider.min.css" rel="stylesheet"
    crossorigin="anonymous">
  <link rel="shortcut icon" href="./imagens/logooficial.png" type="image/x-icon">
  <link rel="stylesheet" href="../cardcardapio2.css">
  <link rel="stylesheet" href="../botao2.css">
  <link href="../style1.css" rel="stylesheet">

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">

  <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" />

  <title>Cardápio</title>

</head>

<body style="background-color: #f5f5f5;">

  <!-- NavBar  -->
  <nav class="navbar navbar-expand-lg bg-body-tertiary" style="background-color: #f9e3cf;margin-bottom: 10px; margin-top: -10px; justify-content: space-between;">
    <div class="container-fluid" Style="background-color: #ff7c00;">
        <a class="navbar-brand" href="paginicial.php">
            <img src="../img/logooficial.png" width="70px" alt="">
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" href="pagcardapio.php" style="font-size: larger; font-family: Arial;">Cardápio</a>
                </li>
  
                <li class="nav-item">
                    <a class="nav-link active" href="pagapresentacao.php" style="font-size: larger;font-family: Arial;">Sobre</a>
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
                    <img src="../img/iconchef.svg" alt="login" style="width: 50px;">
                </a>
            </ul>
            <ul class="nav-item" style="margin-top: 15px;">
                <a class="nav-link active" href="./pagcarrinho.php">
                    <img src="../img/carrinho.svg" alt="carrinho" style="width: 35px;">
                </a>
            </ul>
        </div>
    </div>
  </nav>
  <section id="portfolio" class="portfolio">
    <div class="container" data-aos="fade-up">
        
      <center>
        <div class="section-header">
          <h2 style="color:#FF7C00"> Cardápio</h2>
        </div>
      </center>

      <div class="row" data-aos="fade-up" data-aos-delay="100">
        <div class="col-lg-12 d-flex justify-content-center">
          <ul id="portfolio-flters">
            <a href="../cardapio.html">
              <li>Todos</li>
            </a>
            <a href="almoco.html">
              <li>Almoço</li>
            </a>
            <a href="jantar.html">
              <li >Jantar</li>
            </a>
            <a href="lanches.html">
              <li >Lanches</li>
            </a>
            <a href="cupSalada.html">
              <li >Cup Salada</li>
            </a>
            <a href="sucos.html">
              <li >Sucos</li>
            </a>
            <a href="sopas.html">
              <li>Sopas</li>
            </a>
          </ul>
        </div>
      </div>

      <div class="row portfolio-container" data-aos="fade-up" data-aos-delay="200">

         <div class="col-lg-4 col-md-6 portfolio-item sopas">
            <img src="../img/sopaabobora.jpg" class="img-fluid" alt="">
            <div class="portfolio-info">
              <h4>Sopa de Abóbora</h4>
              <span class="profession">R$15,00</span>
              <button class="cta">
                <span>Adicionar ao carrinho</span>
                <a class="details-link" title=""><i class=""></i></a>
            </div>
          </div>
          <div class="col-lg-4 col-md-6 portfolio-item sopas">
            <img src="../img/caldoAipim.jpg" class="img-fluid" alt="">
            <div class="portfolio-info">
              <h4>Sopa de Aipim</h4>
              <span class="profession">R$15,00</span>
              <button class="cta">
                <span>Adicionar ao carrinho</span>
                <a class="details-link" title=""><i class=""></i></a>
            </div>
          </div>

    </div>
  </section><!-- End Portfolio Section -->




  <script src="teste.js"></script>
</body>

</html>  