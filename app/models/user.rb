class User < ActiveRecord::Base
  attr_accessible :email, :login

  has_many :microposts

  validates :login, presence: true, :length => {:minimum => 5, :maximum => 50}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }
  
 end
