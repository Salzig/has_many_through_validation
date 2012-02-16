class User < ActiveRecord::Base
  has_many :users_roles
  has_many :roles, :through => :users_roles
  
  validates :name, :presence => true, :if => :owner?
  
  def owner?
    roles.include? Role.find_by_name("admin")
  end
end
