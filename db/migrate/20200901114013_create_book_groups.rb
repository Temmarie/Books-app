class CreateBookGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :book_groups do |t|
      t.references :book, null: false, foreign_key: true
      t.references :group, null: false, foreign_key: true

      t.timestamps
    end
  end
end
