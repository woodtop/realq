jQuery(document).ready(function($){ 
　$(document).ready(function(){
    $('.nav').on('click',function(){
      $(this).toggleClass('active');
      $('.user_nav').fadeToggle();
    });
  });
});