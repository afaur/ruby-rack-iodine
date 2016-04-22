ENV['RACK_ENV'] = 'test'

require File.join(
  File.dirname(__FILE__),
  '../config/environment'
)

RSpec.configure do |c|
  # Settings
end
