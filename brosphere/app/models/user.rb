class User < ActiveRecord::Base
  attr_accessor :name, :email
  validates :name, presence:true, length: {maximum: 50}
  validates :email, presence:true, length: {maximum: 255}
  
end
