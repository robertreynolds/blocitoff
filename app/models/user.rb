class User < ActiveRecord::Base

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable


  attr_accessible :email, :password, :password_confirmation, :remember_me


 has_many :tasks

 before_create :set_member

 
end
