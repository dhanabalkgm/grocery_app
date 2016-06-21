class Volume < ActiveRecord::Base
  has_many :products

  validates :number, :unit, presence: true

  def name
    "#{number} #{unit}"
  end
end
