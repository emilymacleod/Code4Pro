
Devise.setup do |config|
  config.mailer_sender = 'Emily @ Code4Pro <no-reply@maggiestcloud.com>'

  require 'devise/orm/active_record'
  config.case_insensitive_keys = [ :email ]
  config.strip_whitespace_keys = [ :email ]
  config.skip_session_storage = [:http_auth]
  config.stretches = Rails.env.test? ? 1 : 10

  config.reconfirmable = true
  config.expire_all_remember_me_on_sign_out = true
  config.password_length = 8..128
  config.reset_password_within = 6.hours
  config.sign_out_via = :delete

  require 'omniauth-google-oauth2'
  config.omniauth :google_oauth2, '780428032143-e6as191vsktl2iel4ikg4ff699fb24la.apps.googleusercontent.com', 'YqjDw34OShhNrvkIWdWDKKZO', {access_type: "offline", approval_prompt: ""} 

   require 'omniauth-facebook'
   config.omniauth :facebook, '1673821026172238', 'fce8c8e1adb95a9d49f54553c915866d'

   require 'omniauth-github'
   config.omniauth :github, 'c052cb559089e3a68da9', '49e1efc8f267af1a02386a424c82ce7eb2197085', scope: "user:email"

end
