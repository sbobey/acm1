// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

$(document).ready(function(){

   $('a.initclick').click();

});



function checkEnter(myfield,e){
   if (!e){
      var e = window.event;
   } 
   if (e.keyCode){
      code = e.keyCode;    // IE   
   }else if (e.which){
      code = e.which;      // Other browsers
   }
   if ( e.which == 13 ){
      return false;  
   }
}



 

