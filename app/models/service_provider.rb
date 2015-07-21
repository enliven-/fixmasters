class ServiceProvider < ActiveRecord::Base
	has_one  :address, as: :entity
	has_one  :kyc_profile
	has_one  :raiting_profile
	has_many :areas,  through: 	:sp_area_set
	has_many :skills, through:  :sp_skill_set

	# enum active:     [ :no, :yes ]
	# enum regular:    [ :no, :yes ]
	# enum smartphone: [ :no, :yes ]
	# enum app:  			 [ :no, :yes ]
end
