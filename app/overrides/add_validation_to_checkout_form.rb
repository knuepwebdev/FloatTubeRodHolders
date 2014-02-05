Deface::Override.new(
  :virtual_path => 'spree/checkout/edit',
  :insert_before => "erb[silent]:contains('if @order.state !=')",
  :text => "<script>$('#checkout_form_address').validate();</script>",
  :name => 'add_validation_to_checkout_form'
)
