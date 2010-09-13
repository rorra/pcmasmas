class Product < ActiveRecord::Base
  belongs_to :category

  validates_presence_of :name
  validates_numericality_of :price, :allow_blank => false

  has_friendly_id :name, :use_slug => true
end
