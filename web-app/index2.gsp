<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge;" />
  <title>SweetAlert2 - a beautiful, responsive, customizable and accessible (WAI-ARIA) replacement for JavaScript's popup boxes</title>

  <link rel="icon" href="./assets/favicon.png">
  <link rel="apple-touch-icon" href="./assets/apple-touch-icon.png">

  <link rel="dns-prefetch" href="https://fonts.googleapis.com">
  <link rel="dns-prefetch" href="https://cdnjs.cloudflare.com">

  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Courgette">
  <link rel="stylesheet" href="./assets/example.css">
  <link rel="stylesheet" href="./assets/bootstrap4-buttons.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

  <link rel="preload" href="https://unsplash.it/400/200/?random" as="image">
  <link rel="preload" href="https://bit.ly/1Nqn9HU" as="image">

  <!-- Include a polyfill for ES6 Promises (optional) for IE11, UC Browser and Android browser support -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/core-js/2.4.1/core.js"></script>

  <!-- This is what you need -->
  <script src="./dist/sweetalert2.all.min.js"></script>
  <!--.......................-->
</head>

<script>
function tim(){
swal({
  title: 'Terms and conditions',
  input: 'checkbox',
  inputValue: 1,
  inputPlaceholder:
    'I agree with the terms and conditions',
  confirmButtonText:
    'Continue <i class="fa fa-arrow-right></i>',
  inputValidator: function (result) {
    return new Promise(function (resolve, reject) {
      if (result) {
        resolve()
      } else {
        reject('You need to agree with T&C')
      }
    })
  }
}).then(function (result) {
  swal({
    type: 'success',
    text: 'You agreed with T&C :)'
  })
})
}
</script>

<body>

<input type="button" onclick='tim();' id="alerta" value="Clique aqui" />		

</body>
</html>
