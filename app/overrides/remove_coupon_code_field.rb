Deface::Override.new(
	:virtual_path => "spree/orders/edit",
	:replace_contents => "[data-hook='cart_buttons']",
	:text => "<%= button_tag :class => 'button checkout primary', :id => 'checkout-link', :name => 'checkout' do %><%= Spree.t(:checkout) %><% end %>",
	:name => "remove_coupon_code_field"
)
