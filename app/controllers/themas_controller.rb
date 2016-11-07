class ThemasController < ApplicationController
  def index
    @thema = Thema.new
  end
  def show
    @thema = Thema.new
    
  end
end
