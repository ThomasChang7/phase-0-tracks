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

console.log(longestPhrase(["long phrase","longest phrase","longer phrase"]))

// Release 1: Find a Key-Value Match
// 