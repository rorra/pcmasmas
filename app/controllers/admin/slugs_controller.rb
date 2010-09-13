class Admin::SlugsController < ApplicationController
  before_filter :require_admin_role, :set_variables

  layout 'admin'

  active_scaffold :slugs

  private

  def set_variables
    @title = 'Slugs'
  end
end
