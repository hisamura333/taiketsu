class ReviewsController < ApplicationController
  def create
    Review.create(review_params)
    redirect_to root_path
  end

  private
  def review_params
    params.require(:review).permit(:first_body,:second_body).merge(thema_id: params[:thema_id])
    
  end
end
