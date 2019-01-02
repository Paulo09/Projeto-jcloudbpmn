

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>Show Usuario</title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir:'')}">Home</a></span>
            <span class="menuButton"><g:link class="list" action="list">Usuario List</g:link></span>
            <span class="menuButton"><g:link class="create" action="create">New Usuario</g:link></span>
        </div>
        <div class="body">
            <h1>Show Usuario</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="dialog">
                <table>
                    <tbody>

                    
                        <tr class="prop">
                            <td valign="top" class="name">Id:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:usuario, field:'id')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Nome:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:usuario, field:'nome')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Sobre Nome:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:usuario, field:'sobreNome')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Login Email:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:usuario, field:'loginEmail')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Senha:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:usuario, field:'senha')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Confirma Senha:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:usuario, field:'confirmaSenha')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Deacordo:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:usuario, field:'deacordo')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Permissao:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:usuario, field:'permissao')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Data Cadastro:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:usuario, field:'dataCadastro')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Data Edicao:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:usuario, field:'dataEdicao')}</td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <input type="hidden" name="id" value="${usuario?.id}" />
                    <span class="button"><g:actionSubmit class="edit" value="Edit" /></span>
                    <span class="button"><g:actionSubmit class="delete" onclick="return confirm('Are you sure?');" value="Delete" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
