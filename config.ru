# This file is used by Rack-based servers to start the application.
gem 'airbrake'
require 'airbrake'
require 'airbrake/passenger'
require 'airbrake/passenger/integration1'

Airbrake.configure do |c|
  c.project_id = 113743
  c.project_key = 'fd04e13d806a90f96614ad8e529b2822'
end
require 'tesrseses'
require ::File.expand_path('../config/environment', __FILE__)
run Rails.application
