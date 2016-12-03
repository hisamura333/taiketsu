//２つの投稿欄が埋まらないと送信できない
$(function(){
  if ($('.first_post').val().length ==0 || $('.second_post').val().length ==0){
    $('.submit__form').attr('disabled', 'disabled');
  }
  $('.first_post,.second_post').bind('keydown keyup keypress change', function() {
    if ($('.first_post').val().length > 0 && $('.second_post').val().length >0) {
      $('.submit__form').removeAttr('disabled');
      $('.submit__form').css('background','#81b3ab');
    } else {
      $('.submit__form').attr('disabled', 'disabled');
      $('.submit__form').css('background','#4e8078');
    }
    console.log('ccccc')
  });
});

