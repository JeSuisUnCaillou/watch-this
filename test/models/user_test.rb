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
    assert_equal name, user.name
    assert_equal email, user.email
    assert_equal token, user.google_token
  end
  
end
