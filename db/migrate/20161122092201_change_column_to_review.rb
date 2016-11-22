class ChangeColumnToReview < ActiveRecord::Migration[5.0]
  def change
    change_column_default :reviews, :likes_count,0
    change_column_default :reviews, :dislikes_count,0
  end
end
