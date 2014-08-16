function createform(){
  event.preventDefault();
  if (document.getElementById('url').value == "" || document.getElementById('description').value == "" || document.getElementById('username').value == "" || document.getElementById('password').value == "" ) {
    if($('#warning').val() == null){
        $('#modal-body').prepend("<h3 id='warning'><font color='red'>All fields are required</font></h3><br>");
    }
  } else {
    var formData = {
        'url' 				: $('#url').val(),
        'description' : $('#description').val(),
        'username' 	: $('#username').val(),
        'password' 	: $('#password').val()
      };

      $.ajax({
        type 		: 'POST', // define the type of HTTP verb we want to use (POST for our form)
        url 		: 'http://0.0.0.0:3000/dashboard', // the url where we want to POST
        data 		: formData, // our data object

      })

      // $('#myModal').modal('toggle');
      window.location.href = "http://0.0.0.0:3000/dashboard";
  }
};

// 
// function updateform(id){
//   console.log(id)
//   event.preventDefault();
//   if ($('#url').val() == "" || $('#url').val() == null || $('#description').val() == "" || $('#description').val() == null || $('#username').val() == ""
//     || $('#username').val() == null || $('#password').val() == "" || $('#passwprd').val() == null) {
//     if($('#warning').val() == null || $('#warning').val() == ""){
//         $('#modal-body-2').prepend("<h3 id='warning'><font color='red'>All fields are required</font></h3><br>");
//     }
//   } else {
//     var formData = {
//         'url' 				: $('#url').val(),
//         'description' : $('#description').val(),
//         'username' 	: $('#username').val(),
//         'password' 	: $('#password').val()
//       };
//
//       $.ajax({
//         type 		: 'POST', // define the type of HTTP verb we want to use (POST for our form)
//         url 		: 'http://0.0.0.0:3000/dashboard', // the url where we want to POST
//         data 		: formData, // our data object
//
//       })
//
//       // $('#myModal').modal('toggle');
//       window.location.href = "http://0.0.0.0:3000/dashboard";
//   }
// };
