class Student < ActiveRecord::Base
  
  validate_presence_of  :user
  validate_presence_of  :course

  validate_presence_of  :user
  validate_presence_of  :course
  
end
