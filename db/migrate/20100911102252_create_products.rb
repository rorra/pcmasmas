class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
      t.belongs_to :category

      t.string :name
      t.text :description
      t.float :price

      t.timestamps
    end

    add_index :products, :category_id
  end

  def self.down
    drop_table :products
  end
end
