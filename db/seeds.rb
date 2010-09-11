# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)
admin = User.create(:login => 'admin', :email => 'admin@rorra.com.ar', :password => '1234', :password_confirmation => '1234', :role => 'admin').save!
user = User.create(:login => 'user', :email => 'user@rorra.com.ar', :password => '1234', :password_confirmation => '1234', :role => 'user').save!

# Create some categories
categories = []
%w(computers pants toys games packs).each { |c| categories << Category.create!(:name => c) }

# Create some products
1.upto(100) do |i|
  Product.create(:name => "#{Random.firstname} #{Random.lastname}",
                 :description => Random.paragraphs(2),
                 :price => Random.number(100..10000),
                 :category => categories.rand)
end
