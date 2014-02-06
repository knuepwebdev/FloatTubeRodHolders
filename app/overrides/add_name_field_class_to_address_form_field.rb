Deface::Override.new(
	:virtual_path => 'spree/address/_form',
	:replace => "erb[loud]:contains('form.text_field :lastname')",
	:text => "<%= form.text_field :lastname, :class => 'name_field required' %>",
	:name => 'add_name_field_class_to_address_form_field'
)
