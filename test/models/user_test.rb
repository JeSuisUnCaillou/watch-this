require 'test_helper'

class UserTest < ActiveSupport::TestCase
  
  setup do
    #@oauth_user = 
  end
  
  test "creating an omniauth user" do
    name = "MonNom"
    email = "moi@truc.plouf"
    token = "example_token"
    user = create_oauth_user(name, email, token)
    
    assert user
    assert_equal user.name, name
    assert_equal user.email, email
    assert_equal user.google_token, token
  end
  
end
