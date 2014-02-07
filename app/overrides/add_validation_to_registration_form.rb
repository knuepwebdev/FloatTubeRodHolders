Deface::Override.new(
	:virtual_path => "spree/checkout/registration",
	:insert_bottom => "div#guest_checkout",
	:text => "<script>$('#checkout_form_registration').validate();</script>",
	:name => 'add_validation_to_registration_form'
)
