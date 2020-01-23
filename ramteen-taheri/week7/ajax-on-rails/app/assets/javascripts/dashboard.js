$(document).ready(function() {
    $.getJSON('/uptime')
    .done(function(data) {
        console.log('response', data);

        // Append the JSON response data to the dom
        $('#uptime').append(data.output);
    })
    .fail(console.warn);
}); // ready