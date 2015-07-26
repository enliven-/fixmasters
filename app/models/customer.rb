class Customer < ActiveRecord::Base
	has_many :addresses, as: :entity
	has_many :fixes
	has_many :appointments, through: :fixes


  #change this to be handled via relations
  def primary_address
    Address.where(entity_id: self.id).first
  end

  def name
  	[self.first_name, self.last_name].join(" ")
  end
  
end
