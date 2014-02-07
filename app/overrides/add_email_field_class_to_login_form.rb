Deface::Override.new(
	:virtual_path => 'spree/shared/_login',
	:replace => "erb[loud]:contains('f.email_field :email')",
	:text => "<%= f.email_field :email, :class => 'email_field required title', :tabindex => 1 %>",
	:name => 'add_email_field_class_to_login_form'
)
