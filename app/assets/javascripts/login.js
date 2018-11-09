$(document).ready(function(){
  // force the login modal window to appear if it has errors to show
  if( $('.modal-header .loginError').length ){
    $("#exampleModal").modal('show');
  }
});
