Deface::Override.new(
  virtual_path: 'spree/shared/_login_bar',
  insert_after: '#link-to-login',
  text: "<li id='link-to-register'><%= link_to Spree.t(:register), spree.signup_path %></li>",
  name: 'add_register_link_to_login_bar'
)
