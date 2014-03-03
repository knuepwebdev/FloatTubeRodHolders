Deface::Override.new(
  :virtual_path => "spree/orders/edit",
  :replace => "erb[loud]:contains('link_to Spree.t(:continue_shopping)')",
  :text => "<%= link_to Spree.t(:continue_shopping), products_path, :class => 'button continue' %>",
  :name => "remove_gray_css_class_from_link_in_edit_orders"
)
