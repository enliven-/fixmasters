class Customer < ActiveRecord::Base
	has_many :addresses, as: :entity
	has_many :fixes
	has_many :appointments, through: :fixes
end
