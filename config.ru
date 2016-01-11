# This file is used by Rack-based servers to start the application.
gem 'airbrake'
require 'airbrake'
require 'airbrake/passenger'

Airbrake.configure do |c|
  c.project_id = 113743
  c.project_key = 'fd04e13d806a90f96614ad8e529b2822'
  c.logger = Logger.new(STDOUT)
  c.logger.level = Logger::DEBUG
end

raise 'hell'

require ::File.expand_path('../config/environment', __FILE__)
run Rails.application
