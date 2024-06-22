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
<b>Title: </b>${product.title}<br>
<b>Description: </b>${product.description}<br>
<b>Price: </b>${product.price}<br>
<b>City: </b>${product.city}<br>
<b>Author: </b><a href="/user/${product.user.id}">${product.user.name}</a><br>
</body>
</html>