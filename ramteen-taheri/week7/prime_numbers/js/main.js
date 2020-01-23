let integers = [];
const n = +prompt("Enter a max number: ");

const isPrime = (num) => {
    for(var i = 2; i < num; i++)
        if(num % i === 0) 
            return false;
    return num > 1;
};

const generatePrimes = (maxPrime) => {

    // generate number list
    for(let x = 2; x <= maxPrime; x++) {
        integers.push(x);
    }


    // check if each number is prime
    // mark multiples of each prime number in the list as 0
    // stop if the prime number squared is bigger than the max number in the list
    for(let i = 0; i <= integers.length; i++) {
        if(isPrime(integers[i]) === true) {
            // number is prime
            let squared = integers[i]*integers[i];
            if(squared <= maxPrime) {
                for(let j = i+1; j <= integers.length; j++) {
                    if(integers[j] % integers[i] === 0) {
                        integers[j] = 0;
                    }
                }
            } else {
                break;
            }
        }
    } 

    // get rid of zeroes from final array
    // go back one space after each deletion
    for(let x = 0; x < integers.length; x++) {
        if(integers[x] == 0) {
            integers.splice(x, 1);
            x--;
        }
    }

    console.log('Final list: ' + integers);
};

generatePrimes(n);

