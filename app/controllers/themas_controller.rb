class ThemasController < ApplicationController
  def index
    @thema = Thema.new
    
  end
end
