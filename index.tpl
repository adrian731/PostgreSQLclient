<!DOCTYPE HTML>

<html>
	<head> 
		<link rel="shortcut icon" type="image/x-icon" href="https://upload.wikimedia.org/wikipedia/en/6/62/MySQL.svg" />
		<title>Formulario</title> 
		<link rel="stylesheet" href="/static/css/perfil.css" />
	</head> 
</html>
<body> 
	<div id="search-form">
		<form class="form-container" action="/connect" method="post">
		<p>Host: <input name="host" type="text" class="search-field"/>
		<p>Usuario: <input name="user" type="text" class="search-field"/>
		<p>Contraseña: <input name="passwd" type="password" class="search-field"/>
		<p>Base de datos: <input name="db" type="text" class="search-field"/>
		<div class="submit-container">
			<input type="submit" value="Acceder" class="submit" />
		</div>
	</div> 
</body> 
</html>  
