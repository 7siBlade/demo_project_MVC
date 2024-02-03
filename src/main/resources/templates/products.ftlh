<!DOCTYPE html>
<html>
<head>
    <title>WebSell</title>
</head>
<body>
<h1>WebSell</h1><hr>
<h4>All products</h4>
<form action="/" method="get">
    Search by title <input type="text" name="title"><br>
    <input type="submit" name="search">
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
<form action="/product/create" method="post">
	Title Ad: <input type="text" name="title" required/><br>
	Description Ad: <input type="text" name="description" required/><br>
	Price: <input type="number" name="price" required/><br>
	City: <input type="text" name="city" required/><br>
	Author: <input type="text" name="author"/><br>
	<input type="submit" value="Add ad"/>
</form>
</body>
</html>
