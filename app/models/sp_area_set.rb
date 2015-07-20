class SpAreaSet < ActiveRecord::Base
	has_one :service_provider
	has_one :area
end
