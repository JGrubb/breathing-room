class User < ActiveRecord::Base
  attr_accessible :email, :password_digest

  has_secure_password

  attr_accessible :email, :password, :password_confirmation

  validates_presence_of :password, :on => :create
  validates_presence_of :email
  validates_uniqueness_of :email
end
