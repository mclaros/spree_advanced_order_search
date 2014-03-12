Deface::Override.new(:virtual_path => 'spree/admin/orders/index',
	:name => "add_price_range_fields_to_admin_orders",
	:insert_after => "div.date-range-filter",
	:text => "
		<div class='field' id='q_range_fields'>
			<%= f.label :total_gteq, 'Price between' %>
			<%= f.text_field :total_gteq %>
			<span class='range-divider'>
				<i class='icon-arrow-right'></i>
			</span>			 
			<%= f.text_field :total_lteq %>
		</div>
	")