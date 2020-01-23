console.log('hello! woooorld!!');
const BASE_URL = 'https://api.themoviedb.org/3/';
const API_KEY = 'api_key=24d863d54c86392e6e1df55b9a328755'
$(document).ready(function () {
    $('#go').on('click', function () {
        $(`#results`).show().empty();
        $(`#details`).hide();
        const searchText = $('#query').val();
        console.log(searchText);
        $.getJSON(`${BASE_URL}search/movie?${ API_KEY }&query=${searchText}`)
        .done(function(data) {
            console.log('Success:', data );
            data.results.forEach(function(movie){
                // console.log(movie.title);
                // const $movieItem = $(`<p>${ movie.title }</p>`);
                // $(`#results`).append($movieItem);
                const $movieItem = $(`<img src="https://image.tmdb.org/t/p/w185${ movie.poster_path }">`);
                // Each image gets its own unique click handler, which knows the ID of the current movie;
                // this saves us working out the from a more generic click handler function, but it
                // is kind of inefficient - we end up creating 20 functions in memory for these 20 images
                // Also, the nesting is becoming a bit out of control..
                $movieItem.on('click', function(){
                  console.log('clicked ID', movie.id ); // this works because of a 'closure'
                  $.getJSON(`${BASE_URL}movie/${movie.id}?${ API_KEY }`)
                  .done(function(data){
                    // When we get the details data for the clicked movie result
                    console.log('movie details:', data );
                    $('#results').hide();
                    $('#details').html(`
                      <strong>Title:</strong> ${ data.title } <br>
                      <strong>Tagline:</strong> ${ data.tagline } <br><br>
                      <p>Overview:</p> ${ data.overview } <br>
                      <strong>Budget:</strong> ${ data.budget } <br>
                    `).show();
                  })
                  .fail( console.warn );
                }); // .on() click handler for each movie
                $(`#results`).append($movieItem);
                // $movieItemappendTo('#results');
            });
        })
        .fail(function(err) {
            console.log("ERROR:", err);
        });
    });
    // jQuery version of XMLHttpRequest
    // $.ajax({
    //     url: 'http://numbersapi.com/random/trivia?json',
    //     method: 'get',
    //     dataType: 'json'
    // })
    // $.getJSON('http://numbersapi.com/random/trivia?json')
    // .done(function( response ){
    //     console.log('response:', response);
    //     $('body').append(`<p>${response.text}</p>`);
    // })
    // .fail(function(err) {
    //     console.log("ERROR", err);
    // });
    // .always(function(a, b, c) {
    //     console.log('always:', a, b, c);
    // });
});