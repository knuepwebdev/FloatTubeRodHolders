require 'spec_helper'

feature 'Log in' do
  let(:user) { create(:user) }

  scenario 'with valid credentials' do
    log_in_with(user.email, user.password)
    expect(page).to have_content 'Logged in successfully'
  end

  scenario 'with an invalid email' do
    log_in_with('invalid_email', user.password)
    expect(page).to have_content 'Invalid email or password'
    expect(current_path).to eq spree.login_path
  end

  scenario 'with an invalid password' do
    log_in_with(user.email, 'invalid_password')
    expect(page).to have_content 'Invalid email or password'
    expect(current_path).to eq spree.login_path
  end
end
