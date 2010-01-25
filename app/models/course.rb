class Course < ActiveRecord::Base
  
  has_many  :lessons, :dependent => :destroy
  belongs_to  :semester
  
  validates_presence_of :name
  validates_presence_of :description
  
end
