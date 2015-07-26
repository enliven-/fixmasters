class Assignment < ActiveRecord::Base

	belongs_to :fix
	belongs_to :service_provider

	# after_create :update_history1
	# after_update :update_history2

	# after_save :update_fix_history


	# private
		# def update_history1
		# 	self.fix.history.events << ";"
		# 	self.fix.history.events << "New Assignment created - " + self.service_provider.name
		# 	self.fix.history.save!
		# end

		# def update_history2
		# 	self.fix.history.events << ";"
		# 	self.fix.history.events << "Assignment udpated - " + self.service_provider.name
		# 	self.fix.history.events << as_str( self.changes.except(:updated_at).to_s )
		# 	self.fix.history.save!
		# end

		# def as_str(changes)
		# 	result = ""
		# 	changes.each do |k, v|
		# 		result << k
		# 		result << " => "
		# 		result << v.last.to_s
		# 	end
		# 	result
		# end

end
