class User < ActiveRecord::Base
  attr_accessible :email, :login

  has_many :microposts

  validates(:email, presence: true)
  validates :login, :length => {:minimum => 5}
 end
