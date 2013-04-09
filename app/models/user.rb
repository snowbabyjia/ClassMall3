class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :token_authenticatable, :confirmable,
         :lockable, :timeoutable

  has_and_belongs_to_many :courses
  has_many :comments, inverse_of: :user
  has_many :ratings, inverse_of: :user
  has_and_belongs_to_many :majors

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body
end
