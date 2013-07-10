class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.string :img_url
      t.string :category
      t.float :price
      t.integer :quanity
      t.text :tags

      t.timestamps
    end
  end
end
