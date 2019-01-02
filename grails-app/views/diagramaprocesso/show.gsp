

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>Show Diagramaprocesso</title>
		
		<script>
							
								function carregarDados() {
								  var xhttp = new XMLHttpRequest();
								  xhttp.onreadystatechange = function() {
								    if (xhttp.readyState == 4 && xhttp.status == 200) {
								     document.getElementById("display").innerHTML = xhttp.responseText;
								    }
								  };
								  xhttp.open("GET", "http://localhost:1010/testejson/runner/show/1", true);
								  xhttp.send();
								}

						</script>

    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir:'')}">Home</a></span>
            <span class="menuButton"><g:link class="list" action="list">Diagramaprocesso List</g:link></span>
            <span class="menuButton"><g:link class="create" action="create">New Diagramaprocesso</g:link></span>
        </div>
        <div class="body">
            <h1>Show Diagramaprocesso</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="dialog">
                <table>
                    <tbody>

                    
                        <tr class="prop">
                            <td valign="top" class="name">Id:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:diagramaprocesso, field:'id')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Data Cadastro:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:diagramaprocesso, field:'dataCadastro')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Data Edicao:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:diagramaprocesso, field:'dataEdicao')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">File Name:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:diagramaprocesso, field:'fileName')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Full Path:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:diagramaprocesso, field:'fullPath')}</td>
                            
                        </tr>
                    
                      
					
                    
                        <tr class="prop">
                            <td valign="top" class="name">Type:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:diagramaprocesso, field:'type')}</td>
                            
                        </tr>
                    
						 <tr class="prop">
                            <td valign="top" class="name">Diagrama Processo:</td>
                            
                            <td valign="top" class="value"><g:link action="download" id="${diagramaprocesso.id}">${diagramaprocesso.fileName}</g:link></td>
                            
                        </tr>
						
						
						
						<div id="display">
						
						</div>
						
						<script>
						  carregarDados();
						</script>
						
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <input type="hidden" name="id" value="${diagramaprocesso?.id}" />
                    <span class="button"><g:actionSubmit class="edit" value="Edit" /></span>
                    <span class="button"><g:actionSubmit class="delete" onclick="return confirm('Are you sure?');" value="Delete" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
