class Appointment < ActiveRecord::Base
	belongs_to :fix
	belongs_to :service_provider

	# after_create :update_history1
	# after_update :update_history2



	# private
	# 	def update_history1
	# 		self.fix.history.events << ";"
	# 		self.fix.history.events << "New Appointment created;"
	# 		self.fix.history.save!
	# 	end

	# 	def update_history2
	# 		self.fix.history.events << ";"
	# 		self.fix.history.events << "Appointment updated;"
	# 		self.fix.history.events << as_str( self.changes.except(:updated_at) )
	# 		self.fix.history.save!
	# 	end

	# 	def as_str(changes)
	# 		result = ""
	# 		changes.each do |k, v|
	# 			result << k
	# 			result << " => "
	# 			result << v.last.to_s
	# 		end
	# 		result
	# 	end

		
end
