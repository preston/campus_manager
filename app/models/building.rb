class Building < ActiveRecord::Base
  
  has_name  :rooms
  
  validate_presence_of  :code
  validate_presence_of  :name
  validate_presence_of  :dsecription
  
end
