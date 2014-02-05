Deface::Override.new(
	:virtual_path => 'spree/address/_form',
	:replace => "erb[loud]:contains('form.text_field :city')",
	:text => "<%= form.text_field :city, :class => 'city required' %>",
	:name => 'add_city_class_to_address_form'
)
