Deface::Override.new(:virtual_path => 'spree/admin/orders/index',
	:name => "add_shipment_status_field_to_admin_orders",
	:insert_after => "div.date-range-filter",
	:text => "
		<div class='field' id='q_shipment_state'>
			<label>
				Shipment Status
				<br>
				<select class='select2' id='ship_state' name='q[shipment_state]'>
					<option value></option>
					<option value='ready'>Ready</option>
					<option value='pending'>Pending</option>
					<option value='shipped'>Shipped</option>
				</select>
			</label>
		</div>
	")