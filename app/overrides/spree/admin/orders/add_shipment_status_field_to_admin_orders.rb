Deface::Override.new(:virtual_path => 'spree/admin/orders/index',
	:name => "add_shipment_status_field_to_admin_orders",
	:insert_after => "div.date-range-filter",
	:text => "
		<div class='field'>
			<%= f.label :ship_state, 'Shipment Status' %>
			<%= f.select :shipment_state_eq, ['', 'ready', 'pending', 'shipped'], {:include_blank => true}, :class => 'select2' %>
		</div>
		")