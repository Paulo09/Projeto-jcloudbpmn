

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>Create Diagramaprocesso</title>         
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir:'')}">Home</a></span>
            <span class="menuButton"><g:link class="list" action="list">Diagramaprocesso List</g:link></span>
        </div>
        <div class="body">
            <h1>Create Diagramaprocesso</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${diagramaprocesso}">
            <div class="errors">
                <g:renderErrors bean="${diagramaprocesso}" as="list" />
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
                                <td valign="top" class="value ${hasErrors(bean:diagramaprocesso,field:'dataCadastro','errors')}">
                                    <g:datePicker name="dataCadastro" value="${diagramaprocesso?.dataCadastro}" ></g:datePicker>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="dataEdicao">Data Edicao:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:diagramaprocesso,field:'dataEdicao','errors')}">
                                    <g:datePicker name="dataEdicao" value="${diagramaprocesso?.dataEdicao}" ></g:datePicker>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="fileName">File Name:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:diagramaprocesso,field:'fileName','errors')}">
                                    <input type="text" id="fileName" name="fileName" value="${fieldValue(bean:diagramaprocesso,field:'fileName')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="fullPath">Full Path:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:diagramaprocesso,field:'fullPath','errors')}">
                                    <input type="text" id="fullPath" name="fullPath" value="${fieldValue(bean:diagramaprocesso,field:'fullPath')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="projeto">Projeto:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:diagramaprocesso,field:'projeto','errors')}">
                                    <input type="text" id="projeto" name="projeto" value="${fieldValue(bean:diagramaprocesso,field:'projeto')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="type">Type:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:diagramaprocesso,field:'type','errors')}">
                                    <input type="text" id="type" name="type" value="${fieldValue(bean:diagramaprocesso,field:'type')}"/>
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
