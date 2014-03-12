Deface::Override.new(:virtual_path => 'spree/admin/orders/index',
	:name => "add_price_range_fields_to_admin_orders",
	:insert_after => "div.date-range-filter",
	:text => "
		<div class='field' id='q_range_fields'>
			<label>
				Price Range
				<br>
					<input id='q_price_min' type='text' name='q[price_range][]' placeholder='Min.'>
					<span class='range-divider'>
						<i class='icon-arrow-right'></i>
					</span>
					<input id='q_price_max' type='text' name='q[price_range][]' placeholder='Max.'>
			</label>
		</div>
	")