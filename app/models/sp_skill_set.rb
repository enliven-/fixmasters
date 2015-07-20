class SpSkillSet < ActiveRecord::Base
	has_one :service_provider
	has_one :skill
end
