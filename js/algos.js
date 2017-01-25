// Release 0: Find the Longest Phrase pseudocode
// Declare a function that takes in an array of words
// Set up a variable longest to equal null
// Use if else statements, stating that if variable longest is null or if the current item in the array is 
// longer than variable longest, set variable longest to equal the current item in the index

function longestPhrase(array) {
    var longest = null;
    for (var i = 0; i < array.length; i++) {
        if (longest == null || array[i].length > longest.length) {
            longest = array[i];
        }
    }
    return longest
}

// Release 1: Find a Key-Value Match
// Declare a function that takes two objects
// Use a nested loop to find at least key value match between the two objects
// Set key to a new variable to easily differentiate between the keys and the values of each object
// By using a nested loop, we can test every combination of keys and values

function match(object1, object2) {
    for (key in object1) {
        key1 = key;
        for (key in object2) {
            key2 = key;
            if (key1 == key2 && object1[key1] == object2[key2]) {
                return true
            }
        }
    }
    return false;
}

// Release 2: Generate Random Test Data
// Declare a function that takes in one parameter
// Set up an empty array
// Set up a counter variable that ends once we hit the integer thats put into the parameter
// Declare another function that will generate a random number between min and max
// Setup another loop using the random number generated to input letters
// Append the newWords into the data structure

function randomNumber(min, max) {
    return Math.floor(Math.random() * max) + min;
}


function randomTest(int) {
    letters = "abcdefghijklmnopqrstuvwxyz "
    data = [];
    for (var i = 0; i < int; i++) {
        random = randomNumber(0, 10);
        newWord = ""
        for (var j = 0; j < random; j ++) {
            randomLetter = letters[(randomNumber(0,27))];
            newWord += randomLetter;
            
        }
        data.push(newWord);
    }
    return data;
}



//DRIVER CODE
console.log(longestPhrase(["long phrase","longest phrase","longer phrase"]))
console.log(longestPhrase(["I like bananas", "I really like bananas", "I love bananas more than anything in the world!"]))

// Should return true 
console.log(match({name: "Steven", age: 54}, {name: "Tamir", age: 54}) )  

// Should return false because nothing matches
console.log(match({name: "Steven", age: 52}, {name: "Tamir", age: 59}) )  

//Should return an array with seven nonsense words
console.log(randomTest(7))
// Find the longest word from each iteration that randomTest is fed into longestPhrase
for (i = 0; i < 10; i++) {
    console.log(longestPhrase(randomTest(10)));
}


