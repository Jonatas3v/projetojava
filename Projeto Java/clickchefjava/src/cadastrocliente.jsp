<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
  <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/adminicial.css">
    <link rel="shortcut icon" href="./imagens/logooficial.jsp" type="image/x-icon">
<title>Cadastro de Cliente</title>
</head>

<Style>
@import
	url('https://fonts.googleapis.com/css2?family=Inter:wght@200;300;400;500&family=Open+Sans:wght@300;400;500;600&display=swap')
	;

* {
	padding: 0;
	margin: 0;
	box-sizing: border-box;
	font-family: 'Inter', sans-serif;
}

body {
	width: 100%;
	height: 100vh;
	display: flex;
	justify-content: center;
	align-items: center;
	background-color: #f9e3cf;
	;
}

.container {
	width: 70%;
	height: 85vh;
	display: flex;
	box-shadow: 10px 10px 10px rgba(0, 0, 0, 0.212);
}

.form-image {
	width: 50%;
	display: flex;
	justify-content: center;
	align-items: center;
	background-color: #FF7C00;
	padding: 1rem;
	border-radius: 10px 0 0 10px;
}

.form-image img {
	width: 20rem;
}

.form {
	width: 60%;
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	background-color: #fff;
	padding: 3rem;
	border-radius: 0 10px 10px 0;
}

.form-header {
	margin-bottom: 3rem;
	display: flex;
	justify-content: space-between;
}

.login-button {
	display: flex;
	align-items: center;
}

.login-button button {
	border: none;
	background-color: #FF7C00;
	padding: 0.4rem 1rem;
	border-radius: 5px;
	cursor: pointer;
}

.login-button button:hover {
	background-color: #FF7C00;
}

.login-button button a {
	text-decoration: none;
	font-weight: 500;
	color: #fff;
}

.form-header h1::after {
	content: '';
	display: block;
	width: 5rem;
	height: 0.3rem;
	background-color: #FF7C00;
	margin: 0 auto;
	position: absolute;
	border-radius: 10px;
}

.input-group {
	display: flex;
	flex-wrap: wrap;
	justify-content: space-between;
	padding: 1rem 0;
}

.input-box {
	display: flex;
	flex-direction: column;
	margin-bottom: 1.1rem;
}

.input-box input {
	margin: 0.6rem 0;
	padding: 0.8rem 1.2rem;
	border: none;
	border-radius: 10px;
	box-shadow: 1px 1px 6px #0000001c;
	font-size: 0.8rem;
}

.input-box input:hover {
	background-color: #eeeeee75;
}

.input-box input:focus-visible {
	outline: 1px solid #6c63ff;
}

.input-box label, .gender-title h6 {
	font-size: 0.75rem;
	font-weight: 600;
	color: #000000c0;
}

.input-box input::placeholder {
	color: #000000be;
}

.gender-group {
	display: flex;
	justify-content: space-between;
	margin-top: 0.62rem;
	padding: 0 .5rem;
}

.gender-input {
	display: flex;
	align-items: center;
}

.gender-input input {
	margin-right: 0.35rem;
}

.gender-input label {
	font-size: 0.81rem;
	font-weight: 600;
	color: #000000c0;
}

.continue-button button {
	width: 100%;
	margin-top: 2.5rem;
	border: none;
	background-color: #FF7C00;
	padding: 0.62rem;
	border-radius: 5px;
	cursor: pointer;
}

.continue-button button:hover {
	background-color: #FF7C00;
}

.continue-button button a {
	text-decoration: none;
	font-size: 0.93rem;
	font-weight: 500;
	color: #fff;
}

@media screen and (max-width: 1330px) {
	.form-image {
		display: none;
	}
	.container {
		width: 50%;
	}
	.form {
		width: 100%;
	}
}

@media screen and (max-width: 1064px) {
	.container {
		width: 90%;
		height: auto;
	}
	.input-group {
		flex-direction: column;
		z-index: 5;
		padding-right: 5rem;
		max-height: 10rem;
		overflow-y: scroll;
		flex-wrap: nowrap;
	}
	.gender-inputs {
		margin-top: 2rem;
	}
	.gender-group {
		flex-direction: column;
	}
	.gender-title h6 {
		margin: 0;
	}
	.gender-input {
		margin-top: 0.5rem;
	}
}
</Style>

<body>
	<form action="telalogin.jsp" method="post"></form>

	<div class="container">
		<div class="form-image">
			<img src="./imagens/Logo click chef (1102).png" alt="">
		</div>

		<div class="form">
			<form action="Cadastroservlet" method="post">
				<div class="form-header">
					<div class="title">
						<h1>Cadastre-se</h1>
					</div>
					<div class="login-button">
						<button>
							<p>Entrar</p>
						</button>
					</div>
				</div>
				<div class="input-group">
					<div class="input-box">
						<label for="firstname">Nome</label> <input id="nome"
							type="text" name="nome" placeholder="Digite seu primeiro nome"
							required>
					</div>
					<div class="input-box">
						<label for="lastname">Sobrenome</label> <input id="sobrenome"
							type="text" name="sobrenome" placeholder="Digite seu sobrenome"
							required>
					</div>
					<div class="input-box">
						<label for="endereco" scope="col">Endereço</label> <input
							id="endereco" type="text" name="endereco"
							placeholder="Digite o endereço" required>
					</div>
					<div class="input-box">
						<label for="number">Telefone</label> <input id="telefone" type="tel"
							name="telefone" placeholder="" required>
					</div>
					<div class="input-box">
						<label for="complemento">Complemento</label> <input
							id="complemento" type="text" name="complemento"
							placeholder="Complemento">
					</div>

					<div class="input-box">
						<label for="cpf">Cpf</label> <input id="cpf" type="text" name="cpf"
							placeholder="Digite seu cpf" required>
					</div>
					<div class="input-box">
						<label for="email">E-mail</label> <input id="email" type="email"
							name="email" placeholder="Digite seu e-mail" required>
					</div>
					<div class="input-box">
						<label for="password">Senha</label> <input id="password"
							type="password" name="senha" placeholder="Digite sua senha"
							required>
					</div>

				</div>

				<div class="continue-button">
					<button>
						<p>Continuar</p>
					</button>
				</div>
			</form>
		</div>

	</div>
</body>
</html>