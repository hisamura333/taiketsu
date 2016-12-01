class ThemasController < ApplicationController
  def index
    @thema = Thema.new
    thema_ids = Review.group(:thema_id).order('count_thema_id DESC').count(:thema_id).keys

    @ranking = thema_ids.map{ |id| Thema.find(id)}

    @themas = Thema.all

    @themas.each do |thema|
      if thema.reviews.blank?
        @ranking << thema
      end
    end

    @ranking_page = Kaminari.paginate_array(@ranking).page(params[:page]).per(6)

    @themas_new = Thema.order('created_at DESC').limit(5)

    @reviews_popular = Review.order("likes_count - dislikes_count DESC").limit(10)

  end
  def show
    @new_thema = Thema.new
    @thema = Thema.find(params[:id])
    @review = Review.new
    @like = Like.new
    @review_first_bodys = @thema.reviews.where("second_body":nil).order("likes_count - dislikes_count DESC")
    @review_second_bodys = @thema.reviews.where("first_body":nil).order("likes_count - dislikes_count DESC")


    thema_ids = Review.group(:thema_id).order('count_thema_id DESC').count(:thema_id).keys
    @ranking = thema_ids.map { |id| Thema.find(id)}
    @themas = Thema.all
    @themas.each do |thema|
      if thema.reviews.blank?
        @ranking << thema
      end
    end
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
