

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>Create Projeto</title>         
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir:'')}">Home</a></span>
            <span class="menuButton"><g:link class="list" action="list">Projeto List</g:link></span>
        </div>
        <div class="body">
            <h1>Create Projeto</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${projeto}">
            <div class="errors">
                <g:renderErrors bean="${projeto}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" method="post" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="dataCadastro">Data Cadastro:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:projeto,field:'dataCadastro','errors')}">
                                    <g:datePicker name="dataCadastro" value="${projeto?.dataCadastro}" ></g:datePicker>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="dataEdicao">Data Edicao:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:projeto,field:'dataEdicao','errors')}">
                                    <g:datePicker name="dataEdicao" value="${projeto?.dataEdicao}" ></g:datePicker>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="descricaoProjeto">Descricao Projeto:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:projeto,field:'descricaoProjeto','errors')}">
                                    <input type="text" id="descricaoProjeto" name="descricaoProjeto" value="${fieldValue(bean:projeto,field:'descricaoProjeto')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="emailProjeto">Email Projeto:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:projeto,field:'emailProjeto','errors')}">
                                    <input type="text" id="emailProjeto" name="emailProjeto" value="${fieldValue(bean:projeto,field:'emailProjeto')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="nomeProjeto">Nome Projeto:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:projeto,field:'nomeProjeto','errors')}">
                                    <input type="text" id="nomeProjeto" name="nomeProjeto" value="${fieldValue(bean:projeto,field:'nomeProjeto')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="usuario">Usuario:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:projeto,field:'usuario','errors')}">
                                    <g:select optionKey="id" from="${Usuario.list()}" name="usuario.id" value="${projeto?.usuario?.id}" ></g:select>
                                </td>
                            </tr> 
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><input class="save" type="submit" value="Create" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
