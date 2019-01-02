<html>
<head>
  <title>jCloud BPMN Modelador</title>
  
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:regular,bold,italic,thin,light,bolditalic,black,medium&amp;lang=en">
  <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
  <link rel="stylesheet" href="https://code.getmdl.io/1.3.0/material.grey-orange.min.css">
  <link rel="stylesheet" href="styles.css">
	
  <!-- Compiled and minified CSS -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/css/materialize.min.css">
  <!-- Compiled and minified JavaScript -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js"></script>

  <link rel="stylesheet" href="css/diagram-js.css" />
  <link rel="stylesheet" href="css/bpmn-embedded.css" />
  <link rel="stylesheet" href="css/app.css" />

</head>
<body>
  <div class="content" id="js-drop-zone">

    <div class="message intro">
      <div class="note">
	  
	  
        <b>j</b>Cloud <b>BPMN</b> Diagrama <a id="js-create-diagram" href><U>Novo Diagrama</U></a> Início.
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
    <div class="canvas" id="js-canvas"></div>
  </div>
 
   <ul id="slide-out" class="side-nav">
		<li><div class="user-view">
		  <div class="background" style="background-image:url(./images/futuro-redes-sociais-214-comportamento.jpg);">
		  </div>
		  <a href="#!user"><img class="circle" src="images/default-user-image.png"></a>
		  <a href="#!name"><span class="white-text name">Paulo Castro</span></a>
		  <a href="#!email"><span class="white-text email">paullocasttro@gmail.com</span></a>
		</div></li>
		<li align=center><b>Download Diagrama</li>
		<li><div class="divider"></div></li>
		<tr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Projeto</tr><br>
		<li><div class="divider"></div></li>
		<tr>Nome Projeto:</tr><br>
		<tr>Criador:</tr><br>
		<tr>Data Criaçao:</tr>		
		<li><div class="divider"></div></li>
		<li><a class="collapsible-header waves-effect waves-teal active" id="js-download-diagram" href title="download BPMN diagram"><i class="material-icons">cloud_download</i>Salvar em Arquivo BPMN</a></li>
		<li><div class="divider"></div></li>
		<li><a class="collapsible-header waves-effect waves-teal active" id="js-download-svg" href title="download as SVG image"><i class="material-icons">cloud_download</i>Salvar em Arquivo SVG</a></li>
		<li><div class="divider"></div></li>
		<li align=center>Autmoatizar Processo</b></li>
		<li><div class="divider"></div></li>
		<li><a class="collapsible-header waves-effect waves-teal active" id="js-download-svg" href title="Upload dsenho do processo, arquivo (BPMN)"><i class="material-icons">cloud_upload</i>Carregar desenho do Processo</a></li>
		<input type="file" name="file" />
		<li><div class="divider"></div></li>
		
	</ul>
  
  
  <div class="fixed-action-btn"> 
		  <a href="#" data-activates="slide-out" class="button-collapse btn btn-floating pulse light-blue darken-4" style="background-image:url(${createLinkTo(dir:'images',file:'')});"><i class="material-icons">menu</i></a>
   </div>
   
	   <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
	   <script type="text/javascript" src="${createLinkTo(dir:'js',file:'materialize.js')}"></script>
	   <script>$(".button-collapse").sideNav();</script>
  <script src="js/modeladorBPMN.js"></script>
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
