Deface::Override.new(
	:virtual_path => 'spree/shared/_login',
	:replace => "erb[loud]:contains('f.password_field :password')",
	:text => "<%= f.password_field :password, :class => 'password_field required title', :tabindex => 2 %>",
	:name => 'add_password_field_class_to_login_form'
)
