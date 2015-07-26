class Address < ActiveRecord::Base
	belongs_to :entity, polymorphic: true

	enum address_type:  { primary: 0, alt: 1 }
	enum property_type: { society: 0, row_house: 1, bungalow: 2 }

end
