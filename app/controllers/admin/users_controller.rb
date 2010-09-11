class Admin::UsersController < ApplicationController
  before_filter :require_admin_role, :set_variables

  layout 'admin'
  
  active_scaffold :users

  private

  def set_variables
    @title = 'Users'
  end
end
