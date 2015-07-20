class SpFieldSet < ActiveRecord::Base
	has_one :service_provider
	has_one :field
end
