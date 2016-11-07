class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.text :first_body
      t.text :second_body

      t.timestamps
    end
  end
end
