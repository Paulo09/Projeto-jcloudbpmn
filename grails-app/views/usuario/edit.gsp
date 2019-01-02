

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>Edit Usuario</title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir:'')}">Home</a></span>
            <span class="menuButton"><g:link class="list" action="list">Usuario List</g:link></span>
            <span class="menuButton"><g:link class="create" action="create">New Usuario</g:link></span>
        </div>
        <div class="body">
            <h1>Edit Usuario</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${usuario}">
            <div class="errors">
                <g:renderErrors bean="${usuario}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <input type="hidden" name="id" value="${usuario?.id}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="nome">Nome:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:usuario,field:'nome','errors')}">
                                    <input type="text" maxlength="20" id="nome" name="nome" value="${fieldValue(bean:usuario,field:'nome')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="sobreNome">Sobre Nome:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:usuario,field:'sobreNome','errors')}">
                                    <input type="text" maxlength="20" id="sobreNome" name="sobreNome" value="${fieldValue(bean:usuario,field:'sobreNome')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="loginEmail">Login Email:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:usuario,field:'loginEmail','errors')}">
                                    <input type="text" id="loginEmail" name="loginEmail" value="${fieldValue(bean:usuario,field:'loginEmail')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="senha">Senha:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:usuario,field:'senha','errors')}">
                                    <input type="text" maxlength="12" id="senha" name="senha" value="${fieldValue(bean:usuario,field:'senha')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="confirmaSenha">Confirma Senha:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:usuario,field:'confirmaSenha','errors')}">
                                    <input type="text" maxlength="12" id="confirmaSenha" name="confirmaSenha" value="${fieldValue(bean:usuario,field:'confirmaSenha')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="deacordo">Deacordo:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:usuario,field:'deacordo','errors')}">
                                    <g:checkBox name="deacordo" value="${usuario?.deacordo}" ></g:checkBox>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="permissao">Permissao:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:usuario,field:'permissao','errors')}">
                                    <g:select id="permissao" name="permissao" from="${usuario.constraints.permissao.inList}" value="${usuario.permissao}" ></g:select>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="dataCadastro">Data Cadastro:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:usuario,field:'dataCadastro','errors')}">
                                    <g:datePicker name="dataCadastro" value="${usuario?.dataCadastro}" ></g:datePicker>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="dataEdicao">Data Edicao:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:usuario,field:'dataEdicao','errors')}">
                                    <g:datePicker name="dataEdicao" value="${usuario?.dataEdicao}" ></g:datePicker>
                                </td>
                            </tr> 
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:actionSubmit class="save" value="Update" /></span>
                    <span class="button"><g:actionSubmit class="delete" onclick="return confirm('Are you sure?');" value="Delete" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
