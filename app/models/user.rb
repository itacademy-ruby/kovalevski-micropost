class User < ActiveRecord::Base
  attr_accessible :email, :login

  has_many :microposts

  validates :login, :length => {:minimum => 5}
end
