class Product < ActiveRecord::Base
  attr_accessible :category, :description, :img_url, :name, :price, :quanity, :tags

  serialize :tags
end
