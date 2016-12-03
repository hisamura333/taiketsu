class ThemasController < ApplicationController
  include Ranking
  before_action :ranking_thema,only:[:index]
  before_action :more_less_reviews_thema,only:[:show]

  def index
    @new_thema = Thema.new

    @ranking_page = Kaminari.paginate_array(@ranking).page(params[:page]).per(6)

    @themas_new = Thema.order('created_at DESC').limit(5)

    # substraction == order("likes_count - dislikes_count DESC")
    @reviews_popular = Review.subtraction.limit(10)
  end

  def show
    @new_thema = Thema.new
    @thema = Thema.find(params[:id])
    @review = Review.new
    @like = Like.new


    @review_first_bodys = @thema.reviews.where("second_body":nil).subtraction
    @review_second_bodys = @thema.reviews.where("first_body":nil).subtraction
  end

  def create
    @thema = Thema.create(thema_params)

    if @thema.save
      redirect_to thema_path(@thema.id), notice: 'お題が作成されました！'
    else
      redirect_to root_path, alert: '空欄のため、お題が作成されません！'
    end
  end

  private
  def thema_params
    params.require(:thema).permit(:first_name,:second_name)
  end
end
