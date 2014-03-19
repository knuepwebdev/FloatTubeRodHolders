module LoginMacros
  def log_in_with(email, password)
    visit spree.root_path
    click_link 'Login'
    fill_in 'Email', with: email
    fill_in 'Password', with: password
    click_button 'Login'
  end
end
