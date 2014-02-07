Deface::Override.new(
	:virtual_path => "spree/user_sessions/new",
	:insert_bottom => "div#existing-customer",
	:text => "<script>$('#new_spree_user').validate();</script>",
	:name => 'add_validation_to_login_form'
)
