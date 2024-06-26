<#import "blocks/template.ftlh" as t>
<@t.template user>
    <h1 style="text-align: center">Личный кабинет</h1>
    <hr>
    <br>
    <div style="text-align: center">
        <img src="/static/images/avatar.png"
             style="border:2px solid black; border-radius: 20px" height="120">
        <br>
        <br>
        <h2>${user.name}</h2>
        <br>
        Электоронная почта: <b>${user.email}</b>
        <br>
        Номер телефона: <b>${user.phoneNumber}</b>
        <br>
        <br>
        <#if user.isAdmin()>
            <a class="btn btn-info mb-3 text-dark" style="text-align: center; width: 100%; font-size: 1.2rem; font-weight: 500;"
               href="/admin">
                Панель администратора
            </a><br>
        </#if>
        <a class="btn btn-info mb-3 text-dark" style="text-align: center; width: 100%; font-size: 1.2rem; font-weight: 500;"
           href="/my/products">
            Мои товары
        </a>
        <form action="/logout" method="post">
            <input type="hidden" name="_csrf" value="${_csrf.token}"/>
            <button type="submit" style="text-align: center; width: 100%; font-size: 1.2rem; font-weight: 500;" class="btn btn-danger mb-2 text-light">
                Выйти из аккаунта
            </button>
        </form>
    </div>
</@t.template>