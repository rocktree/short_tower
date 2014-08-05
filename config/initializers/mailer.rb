ActionMailer::Base.smtp_settings = {
  :user_name => PRIVATE['send_grid']['user_name'],
  :password => PRIVATE['send_grid']['password'],
  :domain => PRIVATE['send_grid']['domain'],
  :address => 'smtp.sendgrid.net',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}
