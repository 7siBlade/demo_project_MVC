<!DOCTYPE html>
<html>
<head>
    <title>WebSell</title>
</head>
<body>
<h1>WebSell | <a href="/login">Войти</a></h1><hr>
<form action="/logut" method="post">
    <input type="hidden" name="_csrf" value="${_csrf.token}>
    <input type="submit" value="Выйти"/>
</form>
<h4>All products</h4>
<form action="/" method="get">
    Поиск по названию объявления: <input type="text", name="title"><br>
    <input type="submit" value="Поиск"/>
</form>
<#list products as product>
    <div>
        <p><b>${product.title}</b> ${product.price} | <a href="/product/${product.id}">Подробнее</a></p>
    </div>
    <#else>
    <h3>Sold out</h3>
</#list>
<hr>
<h3>Создать новый товар</h3>
<form action="/product/create" method="post" enctype='multipart/form-data'>
	Title Ad: <input type="text" name="title" required/><br>
	Description Ad: <input type="text" name="description" required/><br>
	Price: <input type="number" name="price" required/><br>
	City: <input type="text" name="city" required/><br>
	Author: <input type="text" name="author"/><br>
	First photo: <input type="file" name="file1"/><br>
	Second photo: <input type="file" name="file2"/><br>
	Third photo: <input type="file" name="file3"/><br>
	<input type="submit" value="Add ad"/>
</form>
</body>
</html>
