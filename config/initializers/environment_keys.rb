if Rails.env.test?
  GOOGLE_APP_ID = ENV['GOOGLE_APP_ID']
  GOOGLE_APP_SECRET = ENV['GOOGLE_APP_SECRET']
end
