class Product < ActiveRecord::Base
  mount_uploader :image, ImageUploader

  has_many :category_products
  has_many :categories, through: :category_products
  belongs_to :volume
  belongs_to :brand

  validates :name, :price, :delivery_period, :image, :brand_id, :volume_id, presence: true
end
