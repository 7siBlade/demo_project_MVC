<!DOCTYPE html>
<html>
<head>
    <title>WebSell</title>
</head>
<body>
<h1>WebSell</h1><hr>
<h4>Detailed information</h4>
<#list images as img>
    <img src="/images/${img.id}" height="60px"/><br><br>
</#list>
<b>Title Ad: </b>${product.title}<br>
<b>Description Ad: </b>${product.description}<br>
<b>Price: </b>${product.price}<br>
<b>City: </b>${product.city}<br>
<b>Author Ad: </b>${product.author}<br>
<hr>
<h3>Создать новый товар</h3>
<form action="/product/delete/${product.id}" method="post">
	<input type="submit" value="Delete product"/>
</form>
</body>
</html>