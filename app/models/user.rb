class User < ActiveRecord::Base

	validates_presence_of	:email

	has_many  :instructors
	has_many  :students

end
