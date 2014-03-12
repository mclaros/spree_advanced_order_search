module Spree
	Order.class_eval do

		def self.shipment_status(status)
			#Alternatively, using ActiveRecord's method_missing magic:
			#  Spree::Order.find_by_shipment_state(status)
			@orders = where(:shipment_state => status)
		end

		def self.price_between(*range_values)
			min, max = range_values

			if min && max
				@orders = where('total BETWEEN ? AND ?', min, max)
			elsif min
				@orders = where('total >= ?', min)
			elsif max
				@orders = where('total <= ?', max)
			end
		end

	end

end