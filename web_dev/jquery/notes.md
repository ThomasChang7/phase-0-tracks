# 9.3

## JQuery
$ this sign is shorthand for JQuery
Document ready runs when the page is done being ready, basically don't fire off until the document has been parsed by the browser
Shortcut for document ready is: 
>$(function(){
});

Basic Selectors
- Can select id, class, tag, 
- ex: $(body p.lead)
- ex: * will select all

Basic Animations
- hide(time)
- delay(time)
- show(time)
- slideUp
- fadeOut
- .animate({bottom: '200px', left: '200px'})

Index Filters
- 'p:lt, gt(2), first, last, eq(2)' 
- starts counting at 0, hence the index part

Relationship Filters
- '.box:parent' '.box:empty'

Attribute Filters
- 'p[class="lead"] narrow down to paragraphs with a class of lead
- 'p[name^="sho"]
- 'a[href^=".co.uk"]'

Attribute Method
- ('p:first').attr('class', 'not-lead');

Image Swap
- $('img').attr('src', 'img2.jpg');
>$('img').delay(400).fadeOut(500, function(){
$(this).attr('src', 'img2.jpg').fadeIn(500);
});

Class Methods
- Can toggle or remove or add class
- CSS
- 
Content Methods
