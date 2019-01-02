

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
				<g:uploadForm action="upload">
					<g:if test="${flash.message}">
						<nav class="nav-extended btn waves-effect waves-light" style="background-image:url(${createLinkTo(dir:'images',file:'1-sap-fiori-design-stencils-ui-library.png')});">${flash.message}</nav>
		            </g:if>
					
					<fieldset class="form">
					<input type="file" name="file" />
					</fieldset>
					<fieldset class="buttons">
					<g:submitButton name="upload" class="save" value="Salvar" />
                    <g:
					</fieldset>
				</g:uploadForm>
    </body>
</html>
