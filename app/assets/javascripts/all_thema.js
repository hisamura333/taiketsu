//テーマの一覧
$(function(){
  $('.main__header--body-all').click(function(){
    $('.main__header--body-thema').toggle();
  });
});

$(function(){
  $('.main__body,.main__header--body-thema').click(function(){
    $('.main__header--body-thema').fadeOut();
  });
});

//新着テーマ
$(function(){
  $('.main__header--body-new').click(function(){
    $('.main__header--body-new-thema').toggle();
  });
});

$(function(){
  $('.main__body,.main__header--body-new-thema').click(function(){
    $('.main__header--body-new-thema').fadeOut();
  });
});
//人気のレビュー
$(function(){
  $('.main__header--body-review').click(function(){
    $('.main__header--body-review-popular').toggle();
  });
});

$(function(){
  $('.main__body,.main__header--body-review-popular').click(function(){
    $('.main__header--body-review-popular').fadeOut();
  });
});

