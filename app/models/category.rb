class Category < ActiveRecord::Base
  #for slug
  include FriendlyId
  friendly_id :name

  #act as tree
  has_ancestry

  has_many :category_products
  has_many :products, through: :category_products

  validates :name, presence: true

  #ancestry not converting empty string into nil
  #try to find some better ways
  def ancestry=(value)
    if value == ""
      write_attribute(:ancestry, nil)
    else
      write_attribute(:ancestry, value)
    end
  end

  #required for view dropdown
  def self.parent_paths
    (all.collect{|category| [category.parent_path_names, category.parent_path_ids]}.presence || [])
    .unshift(["No Parent", nil])
  end

  def parent_path_names
    path.pluck(:name).try(:join, " >> ")
  end

  def parent_path_ids
    path_ids.join('/')
  end

  def ancestry_path_names
    ancestors.pluck(:name).try(:join," >> ")
  end

end
