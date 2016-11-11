//パネルにマウスが乗った時に色が反転する
$(function(){
  $(".main__body--raw-box-panel").on("mouseover",function(){
    $(this).css('background','#1f3748');
      $(this).children(".main__body--raw-box-panel-firstName").css('color','white');
      $(this).children(".main__body--raw-box-panel-vs").css('background','white')
      $(this).children(".main__body--raw-box-panel-vs").css('color','#1f3748')
      $(this).children(".main__body--raw-box-panel-secondName").css('color','white');

  });
  $(".main__body--raw-box-panel").on("mouseout",function(){
    $(this).css('background','white');
    $(".main__body--raw-box-panel-firstName").css('color','#1f3748');
    $(".main__body--raw-box-panel-vs").css('background','#1f3748')
      $(this).children(".main__body--raw-box-panel-vs").css('color','white')
    $(".main__body--raw-box-panel-secondName").css('color','#1f3748');
  });
});

//アイコンにマウスが乗った時に色が反転する
$(function(){
  $(".fa-facebook").on("mouseover",function(){
    $(this).css('background','white');
      $('.fa-facebook').css('color','#1f3748');
  });
  $(".fa-twitter").on("mouseover",function(){
    $(this).css('background','white');
      $('.fa-twitter').css('color','#1f3748');
  });
  $(".fa-hatena").on("mouseover",function(){
    $(this).css('background','white');
      $('.fa-hatena').css('color','#1f3748');
  });

  $(".fa").on("mouseout",function(){
    $(this).css('background',' #1f3748');
    $('.fa-facebook').css('color','white');
    $('.fa-twitter').css('color','white');
    $('.fa-hatena').css('color','white');
  });
});

//もっと詳しくボタンにマウスが乗った時に色が変わる
$(function(){
  $(".button").on("mouseover",function(){
    $(this).css('background','#579087');
  });
  $(".button").on("mouseout",function(){
    $(this).css('background','#81b3ab');
  });
});
