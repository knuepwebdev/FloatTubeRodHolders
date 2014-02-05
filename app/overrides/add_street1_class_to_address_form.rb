Deface::Override.new(
	:virtual_path => 'spree/address/_form',
	:replace => "erb[loud]:contains('form.text_field :address1')",
	:text => "<%= form.text_field :address1, :class => 'street1 required' %>",
	:name => 'add_street1_class_to_address_form'
)
