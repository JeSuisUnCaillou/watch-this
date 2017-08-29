class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, omniauth_providers: [:google_oauth2]
         
  def self.from_omniauth(access_token)
    data = access_token.info
    refresh_token = access_token.credentials.refresh_token
    
    user = User.where(email: data['email']).first || User.where(name: data['name']).first

    unless user
    #  Users are created if they don't exist
        user = User.create(name: data['name'],
            email: data['email'],
            password: Devise.friendly_token[0,20]
        )
    end
    
    # Store the google token
    if refresh_token
       user.update(google_token: refresh_token) 
    end
    
    user
  end
end
