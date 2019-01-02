

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>Show Projeto</title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir:'')}">Home</a></span>
            <span class="menuButton"><g:link class="list" action="list">Projeto List</g:link></span>
            <span class="menuButton"><g:link class="create" action="create">New Projeto</g:link></span>
        </div>
        <div class="body">
            <h1>Show Projeto</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="dialog">
                <table>
                    <tbody>

                    
                        <tr class="prop">
                            <td valign="top" class="name">Id:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:projeto, field:'id')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Data Cadastro:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:projeto, field:'dataCadastro')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Data Edicao:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:projeto, field:'dataEdicao')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Descricao Projeto:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:projeto, field:'descricaoProjeto')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Diagramaprocesso:</td>
                            
                            <td  valign="top" style="text-align:left;" class="value">
                                <ul>
                                <g:each var="d" in="${projeto.diagramaprocesso}">
                                    <li><g:link controller="diagramaprocesso" action="show" id="${d.id}">${d?.encodeAsHTML()}</g:link></li>
						        </g:each>
						        </ul>
                            </td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Email Projeto:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:projeto, field:'emailProjeto')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Nome Projeto:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:projeto, field:'nomeProjeto')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Usuario:</td>
                            <td valign="top" class="value"><g:link controller="usuario" action="show" id="${projeto?.usuario?.id}">${projeto?.usuario?.encodeAsHTML()}</g:link></td>
                        </tr>
						
						 <tr class="prop">
                            <td valign="top" class="name">Download Diagramas:</td>
                            
                            <td  valign="top" style="text-align:left;" class="value">
                                <ul>
                                <g:each var="d" in="${projeto.diagramaprocesso}">
                                    <li><g:link controller="diagramaprocesso" action="download" id="${d.id}">${d?.fileName.encodeAsHTML()}</g:link></li>
						        </g:each>
						        </ul>
                            </td>
                            
                        </tr> 
						
						<!--<tr class="prop">
                            <td valign="top" class="name">Imagem:</td>
                            <td valign="top" class="value"><img src="imagem.jpg" width="320" height="205" /></td>
                        </tr>-->
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <input type="hidden" name="id" value="${projeto?.id}" />
                    <span class="button"><g:actionSubmit class="edit" value="Edit" /></span>
                    <span class="button"><g:actionSubmit class="delete" onclick="return confirm('Are you sure?');" value="Delete" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
