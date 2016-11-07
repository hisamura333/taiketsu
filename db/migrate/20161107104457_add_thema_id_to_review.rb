class AddThemaIdToReview < ActiveRecord::Migration[5.0]
  def change
    add_column :reviews, :thema_id, :integer
  end
end
