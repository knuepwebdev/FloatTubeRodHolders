Deface::Override.new(
	:virtual_path => "spree/address/_form",
	:replace => "erb[loud]:contains('form.phone_field :phone')",
	:text => "<%= form.phone_field :phone, :class => 'phone required' %>",
	:name => "add_phone_class_to_address_form"
)
