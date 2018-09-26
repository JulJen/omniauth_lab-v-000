# Google's OAuth2 docs. Make sure you are familiar with all the options
# before attempting to configure this gem.
# https://developers.google.com/accounts/docs/OAuth2Login

# Rails.application.config.middleware.use OmniAuth::Builder do
#   provider :google_oauth2, Rails.application.secrets.google_client_id, Rails.application.secrets.google_client_secret
# end

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['FACEBOOK_KEY'], ENV['FACEBOOK_SECRET']
end
