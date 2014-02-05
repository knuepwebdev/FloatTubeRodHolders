Deface::Override.new(
	:virtual_path => 'spree/address/_form',
	:replace => "erb[loud]:contains('form.text_field :address2')",
	:text => "<%= form.text_field :address2, :class => 'street2' %>",
	:name => 'add_street2_class_to_address_form'
)