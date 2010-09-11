class Admin::HomeController < ApplicationController
  before_filter :require_admin_role
end
