Spree::Address.class_eval do
	include ActiveModel::Validations
	require 'my_address_validator'
	validates_with MyAddressValidator
end
