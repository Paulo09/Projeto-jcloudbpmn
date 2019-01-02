

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>Usuario List</title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir:'')}">Home</a></span>
            <span class="menuButton"><g:link class="create" action="create">New Usuario</g:link></span>
        </div>
        <div class="body">
            <h1>Usuario List</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                   	        <g:sortableColumn property="id" title="Id" />
                        
                   	        <g:sortableColumn property="nome" title="Nome" />
                        
                   	        <g:sortableColumn property="sobreNome" title="Sobre Nome" />
                        
                   	        <g:sortableColumn property="loginEmail" title="Login Email" />
                        
                   	        <g:sortableColumn property="senha" title="Senha" />
                        
                   	        <g:sortableColumn property="confirmaSenha" title="Confirma Senha" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${usuarioList}" status="i" var="usuario">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${usuario.id}">${fieldValue(bean:usuario, field:'id')}</g:link></td>
                        
                            <td>${fieldValue(bean:usuario, field:'nome')}</td>
                        
                            <td>${fieldValue(bean:usuario, field:'sobreNome')}</td>
                        
                            <td>${fieldValue(bean:usuario, field:'loginEmail')}</td>
                        
                            <td>${fieldValue(bean:usuario, field:'senha')}</td>
                        
                            <td>${fieldValue(bean:usuario, field:'confirmaSenha')}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${Usuario.count()}" />
            </div>
        </div>
    </body>
</html>
