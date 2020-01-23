console.log('hello world');

const sayHello = function() {
  console.log('Hello from inside sayHello()!');  
};

const runNicely = function(functionToRun) {
    console.log('Hi, I am excited to run your function for you!');
    functionToRun(); // run the given argument as a function
    console.log("It was so rewarding to run your function! i hope to do it again soon!");
}

window.onload = sayHello;

const arr = [ 'one', 'two', 'three', 'four' ];

const each = function (arrayToLoopOver, functionToRun) {
    for(let i = 0; i < arrayToLoopOver.length; i++) {
        const currentElem = arrayToLoopOver[i];

        // Inside the loop which lets us access each element in the array
        // (the first argument), run the function that was passded in as
        // the second argument - and when we run that function, pass in to
        // it the current element fro the array, for it to do whatever it
        // wants with.
        functionToRun(currentElem, i);
    }
}

// Usage:
each(arr, function(item, index) {
    if(index % 2 === 0) {
        console.log(index, item);
    }
});


arr.forEach( function(item, blah, a) {
    console.log(blah, item, a);
});

// arr.each do |elem|
//     puts elem
// end

arr.forEach(function(elem) {
    console.log(elem);
});