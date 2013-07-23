class Building < ActiveRecord::Base

	has_many	:rooms, dependent: :destroy

end
