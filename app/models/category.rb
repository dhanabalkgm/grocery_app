class Category < ActiveRecord::Base
  #for slug
  include FriendlyId
  friendly_id :name

  #act as tree
  has_ancestry

  has_many :category_products
  has_many :products, through: :category_products

end
