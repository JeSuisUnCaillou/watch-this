ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
  
  def create_oauth_user(name, email, token)
    User.from_omniauth(
      OpenStruct.new(
        info: OpenStruct.new(email: email, name: name), 
        credentials: OpenStruct.new(refresh_token: token)
      )
    )
  end
  
end
