Deface::Override.new(
	:virtual_path => 'spree/checkout/registration',
	:replace => "erb[loud]:contains('f.email_field :email')",
	:text => "<%= f.email_field :email, :class => 'email_field required title' %>",
	:name => 'add_email_field_class_to_registration_form'
)
