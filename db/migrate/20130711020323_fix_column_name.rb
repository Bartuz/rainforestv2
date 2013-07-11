class FixColumnName < ActiveRecord::Migration
  def change
  		rename_column :products, :quanity, :quantity
  end
end
