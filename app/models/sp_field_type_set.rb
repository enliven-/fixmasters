class SpFieldTypeSet < ActiveRecord::Base
	has_one :service_provider
	has_one :field_type
end
