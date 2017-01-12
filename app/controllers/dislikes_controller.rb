class DislikesController < ApplicationController
  def create
    @dislike = Dislike.create(create_params)
    @dislikes = Dislike.where(review_id: params[:review_id])
    @review = Review.find(@dislike.review_id)
    @thema = Thema.find(@review.thema_id)
    @index = params[:index]
  end

  private 
  def create_params
    params.permit(:review_id,:index)
  end
end
