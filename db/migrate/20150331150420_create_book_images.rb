class CreateBookImages < ActiveRecord::Migration
  def change
    create_table :book_images do |t|
      t.integer :book_id
      t.string :image

      t.timestamps null: false
    end
  end
end
