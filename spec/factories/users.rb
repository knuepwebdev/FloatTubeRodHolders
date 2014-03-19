require 'faker'

FactoryGirl.define do
  factory :user, class: 'Spree::User' do
    email { Faker::Internet.email }
    password 'p@ssw0rd'
    password_confirmation 'p@ssw0rd'
  end
end
