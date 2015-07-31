class Fix < ActiveRecord::Base
	# enum types: {
	# 	plumbing: 1,
	# 	electrical: 2,
	# 	carpenting: 3,
	# 	painting: 4,
	# 	pest_control: 5,
	# 	appliances: 6,
	# 	other: 7 
	# }

	enum status: {
		first_sp_assigned: 1,
		alt_sp_assigned: 2,
		first_apt_fixed: 3,
		next_apt_fixed: 4,
		sp_geared_up: 5,
		sp_on_way: 6,
		sp_reached: 7,
		estimate_given: 8,
		estimate_approved: 9,
		estimate_rejected: 10,
		job_in_process: 11,
		job_finished: 12,
		money_collected: 13,
		commission_collected: 14 
	}

	enum flag_reason: {
		sp_phone_off: 1,
		sp_unavailable: 2,
		customer_phone_off: 3,
		customer_unavailable: 4,
		apt_missed: 5,
		unsatisfactory_service: 6,
		pricing_issue: 7,
		no_sp_available: 8
	}

	belongs_to :field_type
	belongs_to :customer
	has_many 	:assignments
	has_many 	:service_providers, through: :assignments
	has_many 	:appointments
	has_one		:history


	# change and handle via associations
	def current_sp
		sp_id = self.assignments.last.service_provider_id
		ServiceProvider.find(sp_id)
	end

	def get_status
		Fix.statuses[self.status]
	end

	def current_apt
		self.appointments.last
	end

	def current_assignment
		self.assignments.last
	end

	def criticality
		td = Time.now - self.current_apt.time
		if td > 10000
			0
		elsif (0 < td) && (td < 10000)
			1
		elsif td < 0
			2
		end
	end

	def criticality_class
		case self.criticality
		when 0
			"info"
		when 1
			"warning"
		when 2
			"danger"
		end
	end


	def status_obj
		{ criticality: criticality, criticality_class: criticality_class, }
	end

	def sorted_history
		nodes = []
		self.assignments.each  { |a| nodes << a }
		self.appointments.each { |a| nodes << a }
		nodes.sort {|x,y| x.created_at <=> y.created_at }
	end


	def history_str
		result = ""

		sorted_history.each do |e|
			ac  = e.created_at.to_formatted_s(:short)
			result << "<em>(" + ac + ")</em>"

			case e.class.name
			when "Assignment"
				spn = e.service_provider.name
				result << " SP => " + spn + ";"
			when "Appointment"
				at  = e.time.to_formatted_s(:long)
				result << " Apt => " + at + ";"
			else
				raise "error!"
			end

		end
		result
	end


end
