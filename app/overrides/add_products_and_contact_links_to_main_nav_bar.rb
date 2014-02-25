Deface::Override.new(
	:virtual_path => 'spree/shared/_main_nav_bar',
	:insert_after => "li#home-link",
	:text => "<li id='products-link'>
							<%= link_to 'Products', spree.products_path %>
						</li>
						<li id='contact-link'>
							<%= link_to 'Contact', main_app.new_inquiry_path %>
						</li>",
	:name => 'add_products_and_contact_links_to_main_nav_bar'
)
