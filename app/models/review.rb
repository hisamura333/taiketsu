class Review < ApplicationRecord
  belongs_to :thema
  has_many :likes, dependent: :destroy
  has_many :dislikes, dependent: :destroy
  def like_user(user_id)
    likes.find_by(user_id: user_id)
    
  end
  def dislike_user(user_id)
    dislikes.find_by(user_id: user_id)
    
  end

  scope :subtraction, -> {order("likes_count - dislikes_count DESC")}
end
