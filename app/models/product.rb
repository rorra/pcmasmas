class Product < ActiveRecord::Base
  belongs_to :category

  validates_presence_of :name
  validates_numericality_of :price, :allow_blank => false
end
