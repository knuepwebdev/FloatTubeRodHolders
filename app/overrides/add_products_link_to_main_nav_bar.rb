Deface::Override.new(
	:virtual_path => 'spree/shared/_main_nav_bar',
	:insert_after => "li#home-link",
	:text => "<li id='products-link'><%= link_to 'Products', spree.products_path %></li>",
	:name => 'add_products_link_to_main_nav_bar'
)
