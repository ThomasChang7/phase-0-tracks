var colors = ['red', 'blue', 'yellow', 'green'];
var horses = ['bob', 'ed', 'joe', 'fred'];

colors.push('brown');
horses.push('jim');

var horses_colors = {};
for (var i = 0; i < colors.length; i++) {
	horses_colors[horses[i]] = colors[i];
}

//console.log(horses_colors);

function Car(color, model, year, winter_tires) {
	this.color = color;
	this.model = model;
	this.year = year;
	this.winter_tires = winter_tires;

	this.honk = function() { console.log('Beep beep!'); };
}

var car1 = new Car('blue', 'bmw', 1999, false);
var car2 = new Car('black', 'ford', 2006, true);
var car3 = new Car('green', 'toyota', 2015, false);

//console.log(car1);
//car2.honk();

/*
for (var key in validation_messages) {
    // skip loop if the property is from prototype
    if (!validation_messages.hasOwnProperty(key)) continue;

    var obj = validation_messages[key];
    for (var prop in obj) {
        // skip loop if the property is from prototype
        if(!obj.hasOwnProperty(prop)) continue;

        // your code
        alert(prop + " = " + obj[prop]);
    }
}
*/

for (var key in car1) {
	console.log(key);
	console.log(car1[key]);
}