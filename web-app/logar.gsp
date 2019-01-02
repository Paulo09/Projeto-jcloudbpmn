
<html>
    <head>
        <title>Cloud Developer</title>
     <link type="text/css" rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.0/css/materialize.min.css"/>
     <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
	 
		 <!--Materilize embarcado-->
      <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
      <!--Import materialize.css-->
      <link type="text/css" rel="stylesheet" href="../css/materialize.min.css"  media="screen,projection"/>
      <!--Let browser know website is optimized for mobile-->
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
	  <link rel="stylesheet" href="../css/materialize.css">
	  <!--Materilize embarcado-->
	  
    </head>

    <body class="teal lighten-2">    
   	<div class="container" style="margin-top:40px;">
   
          <div class="card">
            <div class="card-image">
              <img src="${createLinkTo(dir:'images',file:'1-sap-fiori-design-stencils-ui-library.png')}">
              <span class="card-title"><b>E</b>ntrar</span>
            </div>
              <div class="container">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			    <form class="col s12">
			      <div class="row">
			        <div class="input-field col s12">
			          <i class="material-icons prefix">account_circle</i>
			          <input id="icon_prefix" type="text" class="validate">
			          <label for="icon_prefix">Login</label>
			        </div>
					<div class="input-field col s12">
			          <i class="material-icons prefix">lock</i>
			          <input id="icon_telephone" type="password" class="validate">
			          <label for="icon_telephone">Senha</label>
			        </div>
			      </div>
			    </form>
			  </div>
			  
			 
            <div class="card-action" align="center">
               <a class="btn waves-effect waves-light" href="http://localhost:8080/menu">Logar</a>&nbsp;&nbsp;&nbsp;&nbsp;
			   <!--<a class="btn waves-effect waves-light" onClick="history.go(0)" >Limpar</a>-->
			  <!--<input class="btn waves-effect waves-light" type="button" onClick="history.go(0)" value="Limpar" />-->
	        </div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			
          </div>
        </div>
      </div>

	  
	  </div><!--card-->
	  
	
	<!--Import jQuery before materialize.js-->
      <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
      <script type="text/javascript" src="js/materialize.js"></script>   
    </body>
</html>