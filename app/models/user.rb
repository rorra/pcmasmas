class User < ActiveRecord::Base
  acts_as_authentic

  ROLES = %w(user admin)

  validates_inclusion_of :role, :in => ROLES
end
