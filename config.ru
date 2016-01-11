# This file is used by Rack-based servers to start the application.
gem 'airbrake'
require 'airbrake'
Airbrake.configure do |c|
  c.project_id = 123456
  c.project_key = 'abcde1234567890'
end
raise 'Fake Exception!'
require ::File.expand_path('../config/environment', __FILE__)
run Rails.application
