Deface::Override.new(
  :virtual_path => "spree/orders/edit",
  :replace => "erb[loud]:contains('submit_tag Spree.t(:empty_cart)')",
  :original => "<%= submit_tag Spree.t(:empty_cart), :class => 'button gray' %>",
  :text => "<%= submit_tag Spree.t(:empty_cart), :class => 'button' %>",
  :name => "remove_gray_css_class_from_edit_orders"
)
