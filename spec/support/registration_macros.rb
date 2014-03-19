module RegistrationMacros
  def register(email, password)
    visit spree.root_path
    click_link 'Register'
    fill_in 'Email', with: email
    fill_in 'Password', with: password
    fill_in 'Password Confirmation', with: password
    click_button 'Create'
  end
end
