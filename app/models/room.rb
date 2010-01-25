class Room < ActiveRecord::Base
  
  validate_presence_of  :building
  validate_presence_of  :name
  
  # Only allow one room of a given name per building.
  validate_uniqueness_of  :building, :scope => [:name]
  
end
