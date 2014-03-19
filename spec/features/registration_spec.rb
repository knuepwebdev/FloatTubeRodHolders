require 'spec_helper'

feature 'New user registers' do
  scenario 'with valid email and password' do
    expect{ 
      register('chuck@gmail.com', 'p@ssw0rd')
    }.to change(Spree::User, :count).by(1)
    expect(page).to have_content 'Welcome'    
  end

  scenario 'with invalid email' do
    expect{
      register('invalid_email', 'p@ssw0rd')
    }.not_to change(Spree::User, :count)
  end

  scenario 'with a password that is too short' do
    expect{
      register('chuck@gmail.com', '12345')
    }.not_to change(Spree::User, :count)
    expect(page).to have_content 'Password is too short'
  end

  scenario 'with a minimum length password' do
    expect{
      register('chuck@gmail.com', '123456')
    }.to change(Spree::User, :count).by(1)
    expect(page).to have_content 'Welcome'     
  end

  scenario 'with a maximum length password' do
    expect{
      register('chuck@gmail.com', '12345678901234567890')
    }.to change(Spree::User, :count).by(1)
    expect(page).to have_content 'Welcome'     
  end  

  scenario 'with a password that is too long' do
    expect{
      register('chuck@gmail.com', '123456789012345678901')
    }.not_to change(Spree::User, :count)
    expect(page).to have_content 'Password is too long'
  end
end
