require 'test_helper'

class UserTest < ActiveSupport::TestCase
  
  test "creating an omniauth user" do
    name = "MonNom"
    email = "moi@truc.plouf"
    token = "example_token"
    
    user = User.from_omniauth(
      OpenStruct.new(
        info: OpenStruct.new(email: email, name: name), 
        credentials: OpenStruct.new(token: token)
      )
    )
    
    assert user
    assert_equal user.name, name
    assert_equal user.email, email
    assert_equal user.google_token, token
  end
  
end
