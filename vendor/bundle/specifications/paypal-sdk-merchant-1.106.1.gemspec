# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "paypal-sdk-merchant"
  s.version = "1.106.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["PayPal"]
  s.date = "2013-10-23"
  s.description = "The PayPal Merchant SDK provides Ruby APIs for processing payments, recurring payments, subscriptions and transactions using PayPal's Merchant APIs, which include Express Checkout, Recurring Payments, Direct Payment and Transactional APIs."
  s.email = ["DL-PP-Platform-Ruby-SDK@ebay.com"]
  s.homepage = "https://developer.paypal.com"
  s.licenses = ["PayPal SDK License"]
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.2"
  s.summary = "PayPal Merchant SDK"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<paypal-sdk-core>, ["~> 0.2.3"])
    else
      s.add_dependency(%q<paypal-sdk-core>, ["~> 0.2.3"])
    end
  else
    s.add_dependency(%q<paypal-sdk-core>, ["~> 0.2.3"])
  end
end
