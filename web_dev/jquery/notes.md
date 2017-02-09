# 9.3

## JQuery

> <script>
 $(function() {
    $(selector).hide().show();
 };
 
 - Functions
 1. Hide
 2. Show
 3. fadeToggle
 4. delay
 5. slideDown


> $(function) {

   > $('#btn1').on('click', function() {
   $('#panel1').slideToggle(200);
   });
   
  > });
  
  ### Writing Smarter, Better Code
  DRY up code
  Write one piece of code that does everything
  >$(function(){
  >$('.panel-button').on('click', function() {
  var panelID = $(this)
  }); 
  
   
> DOM Traversal
>
    
