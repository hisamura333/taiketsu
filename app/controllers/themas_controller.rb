class ThemasController < ApplicationController
  def index
    @thema = Thema.new
    @themas = Thema.all
  end
  def show
    @new_thema = Thema.new
    @thema = Thema.find(params[:id])
    @review = Review.new
  end
  def create
    @thema = Thema.create(thema_params)
    redirect_to root_path
  end

  private
  def thema_params
    params.require(:thema).permit(:first_name,:second_name)
  end
end
