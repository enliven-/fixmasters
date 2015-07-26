class Fix < ActiveRecord::Base
	# enum field_types [
	# 	:plumbing,
	# 	:electrical,
	# 	:carpenting,
	# 	:painting,
	# 	:pest_control,
	# 	:appliances,
	# 	:other
	# ]

	# enum states [
	# 	:first_sp_assigned,
	# 	:alt_sp_assigned,
	# 	:first_apt_fixed,
	# 	:next_apt_fixed,
	# 	:sp_geared_up,
	# 	:sp_on_way,
	# 	:sp_reached,
	# 	:estimate_given,
	# 	:estimate_approved,
	# 	:estimate_rejected,
	# 	:job_in_process,
	# 	:job_finished,
	# 	:money_collected,
	# 	:commission_collected
	# ]

	# enum flag_reasons [
	# 	:sp_phone_off,
	# 	:sp_unavailable,
	# 	:customer_phone_off,
	# 	:customer_unavailable,
	# 	:apt_missed,
	# 	:unsatisfactory_service,
	# 	:pricing_issue,
	# 	:no_sp_available
	# ]

	belongs_to :customer
	has_many 	:assignments
	has_many 	:service_providers, through: :assignments
	has_many 	:appointments


	# change and handle via associations
	def current_sp
		sp_id = self.assignments.last.service_provider_id
		ServiceProvider.find(sp_id)
	end

end
