class Appointment < ActiveRecord::Base
	belongs_to :fix
	has_one 	 :service_provider
end
