class ProductDetail < ActiveRecord::Base
  belongs_to :product
  belongs_to :brand
  belongs_to :volume
end
