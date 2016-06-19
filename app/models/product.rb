class Product < ActiveRecord::Base
  has_many :category_products
  has_many :categories, through: :category_products
  belongs_to :volume
  belongs_to :brand
end
