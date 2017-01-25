// In phase-0-tracks/js, create a file called explore.js.
// Ruby has lots of handy functions like .reverse, but in JavaScript, we mostly have to write our own. In comments, pseudocode a function that takes a string as a parameter and reverses the string. 
// reverse("hello"), for example, should return "olleh". This isn't a task specific to JavaScript -- your pseudocode should be in plain English and use phrases like "for each" instead of JavaScript-specific 
// terms. Remember that you can add strings in JavaScript, so '' + 'a' would result in the string 'a'. Take your time. This is the most valuable skill in programming: being able to think through a problem 
// logically.
// Under your commented pseudocode, implement your function in JavaScript. Test it with driver code if you like. Anytime you'd like to run your code, you can run node explore.js from the js folder in your 
// terminal, similar to how you run Ruby programs.
// Add driver code that calls the function in order to reverse a string of your choice (as long as it's not a palindrome!), and stores the result of the function in a variable.
// Add driver code that prints the variable if some condition is true. The condition can be a silly one, like 1 == 1.

// Declare a function that takes in a parameter.
// In the function, declare an empty string
// Using the length of the string in the parameter, we are going to loop through every character
// Add the character to the empty string, for example, new_string = character + new string

function reverse(string) {
    var reversed = "";
    for (var i = 0; i < string.length ; i ++) {
        reversed = string[i] + reversed;
    }
    if (reversed == string) {
        console.log("You put in a palindrome!");
    }
    else {
        console.log(reversed)
    }    
}
// Driver Code
if (1 == 1) {
    console.log(reverse("racecar"));
}
else {
    console.log("This will print if 1 does not equal to 1");
}

