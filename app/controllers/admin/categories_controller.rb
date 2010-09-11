class Admin::CategoriesController < ApplicationController
  before_filter :require_admin_role, :set_variables

  layout 'admin'

  active_scaffold :categories do |config|
    config.list.columns = [:name, :products]
  end

  private

  def set_variables
    @title = 'Categories'
  end
end
