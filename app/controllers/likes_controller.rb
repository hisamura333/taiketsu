class LikesController < ApplicationController
  def create
    @like = Like.create(create_params)
    @likes = Like.where(review_id: params[:review_id])
    @review = Review.find(@like.review_id)
    @thema = Thema.find(@review.thema_id)
    @index = params[:index]
  end

  private 
  def create_params
    params.permit(:review_id,:index)
  end

end
