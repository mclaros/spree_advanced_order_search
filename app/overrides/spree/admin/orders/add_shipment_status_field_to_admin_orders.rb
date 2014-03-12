Deface::Override.new(:virtual_path => 'spree/admin/orders/index',
	:name => "add_shipment_status_field_to_admin_orders",
	:insert_after => "div.date-range-filter",
	:text => "
		<div class='field'>
			<%= f.label :ship_state, 'Shipment Status' %>
			<%= f.select :shipment_state_eq, Spree::Order.state_machines[:shipment_state].states.collect {|s| [t('order_shipment_state.' + s.name.to_s), s.value]}, {:include_blank => true}, :class => 'select2' %>}
		</div>
		")