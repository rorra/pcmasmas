class Admin::ProductsController < ApplicationController
  before_filter :require_admin_role, :set_variables
  
  layout 'admin'

  active_scaffold :products do |config|
    config.list.columns = [:category, :name, :description, :price]
  end

  private

  def set_variables
    @title = 'Products'
  end
end
