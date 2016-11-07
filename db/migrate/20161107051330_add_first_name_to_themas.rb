class AddFirstNameToThemas < ActiveRecord::Migration[5.0]
  def change
    add_column :themas, :first_name, :string
    add_column :themas, :second_name, :string
  end
end
