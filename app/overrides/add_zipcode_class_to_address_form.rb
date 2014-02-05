Deface::Override.new(
	:virtual_path => 'spree/address/_form',
	:replace => "erb[loud]:contains('form.text_field :zipcode')",
	:text => "<%= form.text_field :zipcode, :class => 'zipcode required' %>",
	:name => 'add_zipcode_class_to_address_form'
)
