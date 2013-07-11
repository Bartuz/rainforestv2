class Product < ActiveRecord::Base
  attr_accessible :category, :description, :img_url, :name, :price, :quantity, :tags

  serialize :tags
end
