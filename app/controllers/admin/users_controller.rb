class Admin::UsersController < ApplicationController
  before_filter :require_admin_role, :set_variables

  layout 'admin'
  
  active_scaffold :user do |config|
    config.list.columns = [:login, :email, :login_count, :last_login_at]
    config.create.columns = [:login, :email, :password, :password_confirmation, :role]
    config.show.columns = [:login, :email, :role, :current_login_at, :current_login_ip, :last_login_at, :last_login_ip,
                           :last_request_at, :login_count, :failed_login_count, :created_at, :updated_at]
    config.columns[:role].form_ui = :select
    config.columns[:role].options = {:options => User::ROLES.map(&:to_sym)}
  end
  private

  def set_variables
    @title = 'Users'
  end
end
