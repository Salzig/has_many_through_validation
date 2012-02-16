class Role < ActiveRecord::Base
  has_many :users_roles
end
