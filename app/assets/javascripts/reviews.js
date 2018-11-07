$(document).ready(function(){
  const url = 'http://localhost:3000/reviews';

$('#reviewSubmit').on('click',() =>{

  const comment = $('#reviewComment').val();
  console.log( 'submit!', comment);

//Perform a POST ajax request to our Rails server,passing the form data as second //argument object
// Posts to '/reviews', i.e. "reviews#create"
  $.post(url, { comment, attraction_id })  //because variable and  key same
  .done( response => {
    console.log(response);

    $(`<h6><strong>${response.user.name} | just now</strong></h6>
       <p>${response.comment}</p>
       <p><a href="/reviews/${response.id}" data-method="delete" rel="nofollow">Delete</a></p>
       <hr>`
     ).prependTo('#showReview');
  })
  .fail( console.warn );

}); // review submit handler


  const displayReviews = response => {

    console.log( response );

    response.forEach( review => {

      // console.log(dog.name);

      $('<li>').html(`${review.comment}`)
      //.append( $('<img>', {src: dog.image}))
      .appendTo('#dogList');
    });

  };

  // $.getJSON(url)
  // .done( displayReviews )
  // .fail(console.warn);

});  // $(document).ready()
