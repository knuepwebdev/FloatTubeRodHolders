Deface::Override.new(
	:virtual_path => 'spree/address/_form',
	:replace => "erb[loud]:contains('form.text_field :lastname')",
	:text => "<%= form.text_field :lastname, :class => 'name required' %>",
	:name => 'add_lastname_class_to_address_form'
)