class Course < ActiveRecord::Base
  has_and_belongs_to_many :users
  has_and_belongs_to_many :majors
  has_and_belongs_to_many :distributions
  has_and_belongs_to_many :professors
  has_many :comments, inverse_of: :course
  has_many :ratings, inverse_of: :course
  attr_accessible :description, :end, :start, :title
end
