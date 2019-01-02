

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>Projeto List</title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir:'')}">Home</a></span>
            <span class="menuButton"><g:link class="create" action="create">New Projeto</g:link></span>
        </div>
        <div class="body">
            <h1>Projeto List</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                   	        <g:sortableColumn property="id" title="Id" />
                        
                   	        <g:sortableColumn property="dataCadastro" title="Data Cadastro" />
                        
                   	        <g:sortableColumn property="dataEdicao" title="Data Edicao" />
                        
                   	        <g:sortableColumn property="descricaoProjeto" title="Descricao Projeto" />
                        
                   	        <g:sortableColumn property="emailProjeto" title="Email Projeto" />
                        
                   	        <g:sortableColumn property="nomeProjeto" title="Nome Projeto" />
							
							<g:sortableColumn property="nomeProjeto" title="Adicionar Diagrama" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${projetoList}" status="i" var="projeto">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${projeto.id}">${fieldValue(bean:projeto, field:'id')}</g:link></td>
                        
                            <td>${fieldValue(bean:projeto, field:'dataCadastro')}</td>
                        
                            <td>${fieldValue(bean:projeto, field:'dataEdicao')}</td>
                        
                            <td>${fieldValue(bean:projeto, field:'descricaoProjeto')}</td>
                        
                            <td>${fieldValue(bean:projeto, field:'emailProjeto')}</td>
                        
                            <td>${fieldValue(bean:projeto, field:'nomeProjeto')}</td>
							
							<td><span class="menuButton"><a class="home" href="${createLinkTo(dir:'/diagramaprocesso/upload/')}${projeto.id}">Adicionar</a></span></td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${Projeto.count()}" />
            </div>
        </div>
    </body>
</html>
