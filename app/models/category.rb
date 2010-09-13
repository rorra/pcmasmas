class Category < ActiveRecord::Base
  has_many :products

  validates_presence_of :name
  validates_uniqueness_of :name

  has_friendly_id :name, :use_slug => true
end
