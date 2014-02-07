Deface::Override.new(
	:virtual_path => "spree/user_registrations/new",
	:insert_bottom => "div#new-customer",
	:text => "<script>$('#new_spree_user').validate();</script>",
	:name => 'add_validation_to_signup_form'
)