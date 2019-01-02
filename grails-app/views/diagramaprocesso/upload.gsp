<html>
<head>
  <title>jCloud BPMN Modelador</title>
  
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:regular,bold,italic,thin,light,bolditalic,black,medium&amp;lang=en">
  <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
  <link rel="stylesheet" href="https://code.getmdl.io/1.3.0/material.grey-orange.min.css">
	
  <!-- Compiled and minified CSS -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/css/materialize.min.css">
  <!-- Compiled and minified JavaScript -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js"></script>

  <link type="text/css" rel="stylesheet" href="${createLinkTo(dir:'css',file:'diagram-js.css')}" media="screen,projection"/>
  <link type="text/css" rel="stylesheet" href="${createLinkTo(dir:'css',file:'bpmn-embedded.css')}" media="screen,projection"/>
  <link type="text/css" rel="stylesheet" href="${createLinkTo(dir:'css',file:'app.css')}" media="screen,projection"/>  
  <link type="text/css" rel="stylesheet" href="${createLinkTo(dir:'css',file:'styles.css')}" media="screen,projection"/>
  <link type="text/css" rel="stylesheet" href="${createLinkTo(dir:'css',file:'materialize.min.css')}" media="screen,projection"/>
</head>
<body>
  <div class="content" id="js-drop-zone">

    <div class="message intro">	  
      <div class="note">
	  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>j</b>Cloud <b>BPMN</b> Diagrama <a id="js-create-diagram" href><U>Novo Diagrama</U></a> &nbsp; ou &nbsp;
	  <i class="material-icons">add_circle</i>&nbsp;Arraste o arquivo para carrega-lo...Extençao *.BPMN <div class="message">${flash.message}</div>
      </div>
    </div>

    <div class="message error">
      <div class="note">
        <p>Ooops, o arquivo não é um diagrama com a notação BPMN 2.0 diagram.</p>
        <div class="details">
          <span>Causa do problema</span>
          <pre></pre>
        </div>
      </div>
    </div>
	
	<nav class="nav-extended btn waves-light blue">  
		    <div class="nav-content">
		      <ul class="tabs tabs-transparent">
		        <li class="tab"><a href="http://localhost:8080/jcloudbpmn/menu.gsp">Sair</a></li>
		        <li class="tab"><a class="active" href="">Editor-BPMN</a></li>
		        <li class="tab"><a align="right" data-activates="slide-out"  class="button-collapse"><i class="material-icons">format_align_justify</i></a></li>
		      </ul>
		    </div>
	</nav>
  
    <div class="canvas" id="js-canvas"></div>
  </div>
 
   <ul id="slide-out" class="side-nav">
		<li><div class="user-view">
		  <div class="background" style="background-image:url(${createLinkTo(dir:'images',file:'futuro-redes-sociais-214-comportamento.jpg')});">
		</div>
		  <a href="#!user"><img class="circle" src="${createLinkTo(dir:'images',file:'default-user-image.png')}"></a>
		  <a href="#!name"><span class="white-text name">Paulo Castro</span></a>
		  <a href="#!email"><span class="white-text email">paullocasttro@gmail.com</span></a>
		</div></li>
		<li align=center><b>Projeto</li>
		<li><div class="divider"></div></li>
		<tr>Nome Projeto:&nbsp;&nbsp;${nomeProjeto}</tr><br>
		<tr>Criador:&nbsp;&nbsp;${nomeUsuario}</tr><br>
		<tr>Data Criaçao:&nbsp;&nbsp;${dataCadastro}</tr>
		<li class="tab"><a href="/jcloudbpmn/menu.gsp">Sair</a></li>
		<li><div class="divider"></div></li>
		<li align=center><b>Download</b></li>
		<li><div class="divider"></div></li>	
		<li><a class="collapsible-header waves-effect waves-teal active" id="js-download-diagram" href title="download BPMN diagram" ><i class="material-icons">cloud_download</i>Salvar em Arquivo BPMN</a></li>
		<li><div class="divider"></div></li>
		<li><a class="collapsible-header waves-effect waves-teal active" id="js-download-svg" href title="download as SVG image"><i class="material-icons">cloud_download</i>Salvar em Arquivo SVG</a></li>
		<li><div class="divider"></div></li>
		<li align=center><b>Upload Arquivo Autmoatizar Processo</b></li>
		<li><div class="divider"></div></li>
		<!--<li><a class="collapsible-header waves-effect waves-teal active" id="js-download-svg" href title="Upload dsenho do processo, arquivo (BPMN)"><i class="material-icons">cloud_upload</i>Carregar desenho do Processo</a></li>-->
		<g:uploadForm action="upload">
		    <div class="file-field input-field">
		      <div class="btn blue">
		        <span>File</span>
		        <input type="file" name="file">
		      </div>
		      <div class="file-path-wrapper">
		        <input class="file-path validate" type="text" placeholder="Carregar Arquivo">
		      </div>
		    </div>
			<li align=center><g:submitButton name="upload" class="waves-effect waves-light btn blue" value="Salvar" /></li>
		</g:uploadForm>
		<li><div class="divider"></div></li>
	</ul>
  
   <div class="fixed-action-btn"> 
		  <a href="#" data-activates="slide-out" class="button-collapse btn btn-floating pulse light-blue darken-4" style="background-image:url(${createLinkTo(dir:'images',file:'')});"><i class="material-icons">menu</i></a>
   </div>
   
	   <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
	   <script type="text/javascript" src="${createLinkTo(dir:'js',file:'materialize.js')}"></script>
	   <script type="text/javascript" src="${createLinkTo(dir:'js',file:'materialize.min.js')}"></script>
	   <script>$(".button-collapse").sideNav();</script>
  
  <script type="text/javascript" src="${createLinkTo(dir:'js',file:'modeladorBPMN.js')}"></script>
  <script>
	  $('.button-collapse').sideNav({
      menuWidth: 300, // Default is 300
      edge: 'right', // Choose the horizontal origin
      closeOnClick: true, // Closes side-nav on <a> clicks, useful for Angular/Meteor
      draggable: true, // Choose whether you can drag to open on touch screens,
      onOpen: function(el) { /* Do Stuff* / }, // A function to be called when sideNav is opened
      onClose: function(el) { /* Do Stuff* / }, // A function to be called when sideNav is closed
    }
  );
  </script>
</html>
