class AddDislikesCountToReviews < ActiveRecord::Migration[5.0]
  def change
    add_column :reviews, :dislikes_count, :integer
  end
end
