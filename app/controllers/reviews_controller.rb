class ReviewsController < ApplicationController
  def create
    Review.create(review_params)
    redirect_to thema_path(params[:thema_id]),notice: '意見が投稿されました！'
  end

  private
  def review_params
    params.require(:review).permit(:first_body,:second_body).merge(thema_id: params[:thema_id])
    
  end
end
