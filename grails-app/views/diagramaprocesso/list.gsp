

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>Diagramaprocesso List</title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir:'')}">Home</a></span>
            <span class="menuButton"><g:link class="create" action="create">New Diagramaprocesso</g:link></span>
        </div>
        <div class="body">
            <h1>Diagramaprocesso List</h1>
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
                        
                   	        <g:sortableColumn property="fileName" title="File Name" />
                        
                   	        <g:sortableColumn property="fullPath" title="Full Path" />
                        
                   	        <g:sortableColumn property="projeto" title="Projeto" />
							
							 <g:sortableColumn property="projeto" title="Download Diagrama" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${diagramaprocessoList}" status="i" var="diagramaprocesso">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${diagramaprocesso.id}">${fieldValue(bean:diagramaprocesso, field:'id')}</g:link></td>
                        
                            <td>${fieldValue(bean:diagramaprocesso, field:'dataCadastro')}</td>
                        
                            <td>${fieldValue(bean:diagramaprocesso, field:'dataEdicao')}</td>
                        
                            <td>${fieldValue(bean:diagramaprocesso, field:'fileName')}</td>
                        
                            <td>${fieldValue(bean:diagramaprocesso, field:'fullPath')}</td>
                        
                            <td>${fieldValue(bean:diagramaprocesso, field:'projeto')}</td>
							
							<td><g:link action="download" id="${diagramaprocesso.id}">${diagramaprocesso.fileName}</g:link></td>
                        
                        </tr>
                    </g:each>
					
					
					
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${Diagramaprocesso.count()}" />
            </div>
        </div>
    </body>
</html>
