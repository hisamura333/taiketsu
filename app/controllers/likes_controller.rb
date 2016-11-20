class LikesController < ApplicationController
  def create
    @like = Like.create(create_params)
    @likes = Like.where(review_id: params[:review_id])
    @review = Review.find(@like.review_id)
    @thema = Thema.find(@review.thema_id)
    @index = params[:index]
  end

  def destroy
    like = Like.find_by(user_id: current_user.id, review_id: params[:review_id])
    like.destroy
    @likes = Like.where(review_id: params[:review_id])
    @review = Review.all
  end

  private 
  def create_params
    params.permit(:review_id,:index)
  end

end
