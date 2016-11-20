class CreateDislikes < ActiveRecord::Migration[5.0]
  def change
    create_table :dislikes do |t|
      t.integer :review_id

      t.timestamps
    end
  end
end
