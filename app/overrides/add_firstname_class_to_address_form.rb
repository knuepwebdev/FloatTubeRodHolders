Deface::Override.new(
	:virtual_path => 'spree/address/_form',
	:replace => "erb[loud]:contains('form.text_field :firstname')",
	:text => "<%= form.text_field :firstname, :class => 'name required' %>",
	:name => 'add_firstname_class_to_address_form'
)
