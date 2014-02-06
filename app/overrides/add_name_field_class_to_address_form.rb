Deface::Override.new(
	:virtual_path => 'spree/address/_form',
	:replace => "erb[loud]:contains('form.text_field :firstname')",
	:text => "<%= form.text_field :firstname, :class => 'name_field required' %>",
	:name => 'add_name_field_class_to_address_form'
)
