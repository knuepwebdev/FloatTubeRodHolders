Deface::Override.new(
	:virtual_path => 'spree/shared/_main_nav_bar',
	:insert_after => "li#home-link",
	:text => "<li id='contact-link'><%= link_to 'Contact', main_app.new_contact_path %></li>",
	:name => 'add_contact_link_to_main_nav_bar'
)
