Rails.application.configure do
  config.action_mailer.default_url_options = { :host => 'localhost:3000' }
  config.action_mailer.delivery_method = :smtp
  ActionMailer::Base.smtp_settings = {
      enable_starttls_auto: true,
    :address              => "smtp.gmail.com",
    :port                 => 587,
    :domain               => "gmail.com",
    :user_name            => "vitor.ysh@gmail.com",
    :password             => "corneta123",
    :authentication       => "plain",
    :ssl                  => true,
    :tsl                  => true
    # :enable_starttls_auto => true # I don't have this, but it should work anyway
  }
end
