class Admin::ProductsController < ApplicationController
  before_filter :require_admin_role, :set_variables
  
  layout 'admin'

  active_scaffold :products do |config|
    config.list.columns = [:category, :name, :description, :price]
    config.create.columns = [:category, :name, :description, :price]
    config.update.columns = [:category, :name, :description, :price, :slug]
  end

  private

  def set_variables
    @title = 'Products'
  end
end
