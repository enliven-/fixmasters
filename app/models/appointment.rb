class Appointment < ActiveRecord::Base
	belongs_to :fix
	belongs_to :service_provider
end
