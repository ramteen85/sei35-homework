console.log('hello vue!');

Vue.component('dogs-form', {
    props: ['title', 'roundness'],
    data: function() {
        return {
            name: '',
            age: ''
        }
    },
    template: `
    <div>
        <h4>{{ title }}</h4>
        Roundness: {{ roundness }}
    </div>
    `
});

const myApp = new Vue({
    // Where does this app live in the DOM
    el: '#app',
    // What is the state for this app:
    data: {
        message: 'Hello World!',
        loadTime: 'You loaded this page on ' + new Date().toLocaleString(),
        canSee: true,
        errorStatus: 'allGood',
        todoList: [
            { text: 'Learn Vue.js' },
            { text: 'Finish Homework' },
            { text: 'Relax' }
        ],

        dogs: []
    },
    // Like jQuery's $(document).ready(); this
    // function will be run for you when the DOM
    // is loaded and the Vue app has been mounted
    // onto it
    created: function () {
        console.log('vue loaded up!');
        $.getJSON('http://localhost:3000/dogs')
        .done( data => this.dogs = data )
        .fail( console.warn )
    },
    // What are the event handlers or other functions
    // our template might need to run:
    methods: {
        sayHello: function () {
            console.log('Hello!!!!!');
        },
        reverseMessage: function() {
            this.message = this.message.split('').reverse().join('');
        }
    }
});