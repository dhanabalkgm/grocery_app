class Category < ActiveRecord::Base
  #for slug
  include FriendlyId
  friendly_id :name

  #act as tree
  has_ancestry

  has_many :category_products
  has_many :products, through: :category_products

  #required for view dropdown
  def parent_paths
    path.pluck(:name).try(:join, " >> ")
  end

  def self.parent_paths
    pluck(:name, :id)
  end

end
