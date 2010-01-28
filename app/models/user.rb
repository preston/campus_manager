class User < ActiveRecord::Base

  include Clearance::User
  
  has_many  :instructors
  has_many  :students

end
