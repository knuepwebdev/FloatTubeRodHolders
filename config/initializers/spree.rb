# Configure Spree Preferences
#
# Note: Initializing preferences available within the Admin will overwrite any changes that were made through the user interface when you restart.
#       If you would like users to be able to update a setting with the Admin it should NOT be set here.
#
# In order to initialize a setting do:
# config.setting_name = 'new value'
Spree.config do |config|
  config.override_actionmailer_config = true
  config.mails_from = "test@fishingusa.com"
  config.mail_domain = "example.com"
  config.mail_host = "smtp.gmail.com"
  config.mail_port = 587
  config.secure_connection_type = "TLS"
  config.mail_auth_type = "Plain"
  config.smtp_username = ENV["GMAIL_USERNAME"]
  config.smtp_password = ENV["GMAIL_PASSWORD"]
end

Spree.user_class = "Spree::LegacyUser"
