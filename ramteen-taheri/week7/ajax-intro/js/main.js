$(document).ready(function() {


    $('#getFactoid').on('click', function() {
        //do stuff when button is clicked
        

        const xhr = new XMLHttpRequest();


        // the long way
        // xhr.onreadystatechange = function() {
        //     if(xhr.readyState === 4) {
        //         console.log('Ready state changed:', xhr.readyState);
        //         console.log('Response:', xhr.response);
        //     }
        // }

        xhr.onload = function() {
            // console.log('Response:', xhr.response);

            // Turn the JSON response string into an actual JS data structure
            const data = JSON.parse(xhr.response);

            console.log(`
                Number: ${ data.number }
                Factoid: ${ data.text }
            `);

            $('#output').append(`<p><strong>${data.number}</strong><br>${data.text}</p>`);

            // number attribute in return data object
            // console.log(data.number);
        };

        xhr.open('GET', 'http://numbersapi.com/random/trivia?json');
        xhr.send();
    }); // .on()
});

