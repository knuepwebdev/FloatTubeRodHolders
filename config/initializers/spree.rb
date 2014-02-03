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
  config.use_s3 = true
  config.s3_bucket = ENV['AWS_BUCKET_NAME']
  config.s3_access_key = ENV["AWS_ACCESS_KEY_ID"]
  config.s3_secret = ENV["AWS_SECRET_ACCESS_KEY"]
end

Spree.user_class = "Spree::User"

Paperclip.interpolates(:s3_eu_url) do |attachment, style|
"#{attachment.s3_protocol}://#{Spree::Config[:s3_host_alias]}/#{attachment.bucket_name}/#{attachment.path(style).gsub(%r{^/},"")}"
end