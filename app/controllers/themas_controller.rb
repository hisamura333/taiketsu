class ThemasController < ApplicationController
  def index
    @thema = Thema.new
    thema_ids = Review.group(:thema_id).order('count_thema_id DESC').count(:thema_id).keys

    @ranking = thema_ids.map { |id| Thema.find(id)}
    @themas = Thema.all

    @themas.each do |thema|
      if thema.reviews.blank?
        @ranking << thema
      end
    end
  end
  def show
    @new_thema = Thema.new
    @thema = Thema.find(params[:id])
    @review = Review.new

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
    redirect_to thema_path(@thema.id), notice: 'お題が作成されました！'
  end

  private
  def thema_params
    params.require(:thema).permit(:first_name,:second_name)
  end
end
