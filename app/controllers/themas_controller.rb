class ThemasController < ApplicationController
  def index
    @thema = Thema.new
    @themas = Thema.all
  end
  def show
    @thema = Thema.find(params[:id])
  end
  def create
    @thema = Thema.create(create_params)
    redirect_to root_path
  end

  private
  def create_params
    params.require(:thema).permit(:first_name,:second_name)
  end
end
