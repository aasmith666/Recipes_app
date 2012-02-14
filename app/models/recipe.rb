class Recipe < ActiveRecord::Base
  has_many :ingredients
  validates :category, :presence => true
end
