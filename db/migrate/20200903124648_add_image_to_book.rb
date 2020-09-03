class AddImageToBook < ActiveRecord::Migration[6.0]
  def change
    add_column :books, :image, :string
  end
end
